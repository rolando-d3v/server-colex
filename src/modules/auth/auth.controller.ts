import { Request, Response } from "express";
import jwt from "jsonwebtoken";
import { var_env } from "../../config_env";
import bcrypt from "bcrypt";
import { prisma } from "../../db/db_conexion";
import sql from "../../db/postgres";




// Función para convertir array recursivo a estructura de árbol
const buildTree = (items: any, parentId = null) => {
  return items
    .filter((item: any) => item.padre_id === parentId)
    .map((item: any) => ({
      ...item,
      children: buildTree(items, item.id)
    }));
}




//? AUTH
//? ***********************************************************************************************/
export const authLogin = async (req: Request, res: Response) => {
  try {
    const { codigo, password } = req.body;

    // 1. Validación — 400, no 500
    if (!codigo || !password) {
      return res
        .status(400)
        .json({ msj: "Campos requeridos: codigo y password ❗️" });
    }

    //? Formatear codigo a minuscula
    const codigoFormt = codigo.toLowerCase();

    const users = await sql`
                        
         WITH RECURSIVE menu_tree AS (
          
              -- BASE: opciones raíz del usuario
              SELECT 
                  o.id,
                  o.padre_id,
                  o.nombre,
                  o.icono,
                  o.path,
                  o.rol_id,
                  o.orden,
                  o.is_active,
                  ur.usuario_id,
                  1 AS nivel
              FROM auth_usuario_rol ur
              JOIN auth_opcion o ON o.rol_id    = ur.rol_id
                                AND o.padre_id  IS NULL
                                AND o.is_active = true
              WHERE ur.is_active = true
          
              UNION ALL
          
              -- RECURSIVO: hijos de cada nodo
              SELECT 
                  o.id,
                  o.padre_id,
                  o.nombre,
                  o.icono,
                  o.path,
                  o.rol_id,
                  o.orden,
                  o.is_active,
                  mt.usuario_id,
                  mt.nivel + 1 AS nivel
              FROM auth_opcion o
              JOIN menu_tree mt ON o.padre_id  = mt.id
                               AND o.is_active = true
          )
          
          SELECT 
              u.id,
              u.persona_id,
              u.codigo_usuario,
              u.colegio_id,
              u.password,
              u.is_active,
          
              json_build_object(
                  'id',         co.id,
                  'nombre',     co.nombre,
                  'logo_url',   co.logo_url,
                  'dominio',    co.dominio,
                  'telefono',   co.telefono,
                  'email',      co.email,
                  'ruc',        co.ruc,
                  'pagina_web', co.pagina_web,
                  'direccion',  co.direccion,
                  'is_active',  co.is_active
              ) AS colegio,
          
              COALESCE(
                  (
                      SELECT json_agg(
                          json_build_object(
                              'id',       mt.id,
                              'padre_id', mt.padre_id,
                              'nombre',   mt.nombre,
                              'icono',    mt.icono,
                              'path',     mt.path,
                              'rol_id',   mt.rol_id,
                              'orden',    mt.orden,
                              'nivel',    mt.nivel
                          ) ORDER BY mt.nivel ASC, mt.padre_id ASC NULLS FIRST, mt.orden ASC
                      )
                      FROM menu_tree mt
                      WHERE mt.usuario_id = u.id
                  ),
                  '[]'::json
              ) AS role_opcion
          
          FROM auth_usuario u
          INNER JOIN academico_colegio co ON u.colegio_id = co.id
          WHERE u.codigo_usuario = ${codigoFormt}
          AND u.is_active = true;

          `;

    const User = users[0];


    if (!User) {
      return res.status(401).json({ msj: "Credenciales inválidas ❗️" });
    }

    const passCompare = await bcrypt.compare(password, User.password);

    if (!passCompare) {
      return res.status(401).json({ msn: "Credenciales inválidas ❗️" });
    }

    const token = jwt.sign(
      {
        user: {
          id: User.id,
          personal_id: User.persona_id,
          codigo_usuario: User.codigo_usuario,
          colegio_id: User.colegio_id,
        },
      },
      var_env.SECRET_TOKEN,
      { expiresIn: "5h" },
    );

    res.cookie("token", token, {
      httpOnly: true, // 🔒 no accesible desde JS
      // secure: process.env.NODE_ENV === "production",
      secure: false, // true en producción (HTTPS)
      sameSite: "strict", // protección CSRF
      maxAge: 1000 * 60 * 60 * 5, // 1 hora
    });


    // Uso
    const menuTree = buildTree(User.role_opcion);

    return res.status(200).json({
      msj: "Login exitoso ✔️",
      user: {
        id: User.id,
        personal_id: User.persona_id,
        codigo_usuario: User.codigo_usuario,
        colegio_id: User.colegio_id,
      },
      colegio: User.colegio,
      role_opcion: menuTree,
    });
  } catch (err) {
    console.log(err);
    console.error("[authLogin]", err);
    return res.status(500).json({ msj: "Error interno del servidor ❗️", err });
  }
};

//? REGISTER USER CON AUTH
//? **********************************************************************************************/
export const registerUser = async (req: Request, res: Response) => {
  const { persona_id, codigo_usuario, colegio_id, email, password } = req.body;

  // 1. Validación básica de campos requeridos
  if (!persona_id || !colegio_id || !email || !password) {
    return res.status(400).json({ msn: "Faltan campos requeridos ❗️" });
  }

  try {
    const userRegister = await prisma.auth_usuario.create({
      data: {
        persona_id,
        codigo_usuario,
        colegio_id: Number(colegio_id),
        email,
        password: await bcrypt.hash(password, 10),
      },
      // 2. Solo devolver los campos necesarios, nunca el password
      select: {
        id: true,
        email: true,
        codigo_usuario: true,
        colegio_id: true,
        persona_id: true,
      },
    });

    return res
      .status(201)
      .json({ msn: "Usuario registrado con éxito ✔️", userRegister });
  } catch (err: any) {
    // 3. Manejo específico de error de duplicado (unique constraint)
    if (err?.code === "P2002") {
      return res.status(409).json({ msn: "El email o usuario ya existe ❗️" });
    }

    // 4. Error genérico — no exponer detalles al cliente
    console.error("[registerUser]", err);
    return res.status(500).json({ msn: "Error interno del servidor ❗️" });
  }
};

//? AUTH ME
//? ***********************************************************************************************/
export const authMe = async (req: Request, res: Response) => {
  try {
    const token = req.cookies?.token;

    if (!token) {
      return res.status(401).json({ msj: "No autenticado" });
    }

    const decoded = jwt.verify(token, var_env.SECRET_TOKEN) as {
      user: {
        id: string;
        personal_id: number;
        codigo_usuario: string;
        colegio_id: number;
      };
    };

    const users = await sql`

          WITH RECURSIVE menu_tree AS (
          
              -- BASE: opciones raíz del usuario
              SELECT 
                  o.id,
                  o.padre_id,
                  o.nombre,
                  o.icono,
                  o.path,
                  o.rol_id,
                  o.orden,
                  o.is_active,
                  ur.usuario_id,
                  1 AS nivel
              FROM auth_usuario_rol ur
              JOIN auth_opcion o ON o.rol_id    = ur.rol_id
                                AND o.padre_id  IS NULL
                                AND o.is_active = true
              WHERE ur.is_active = true
          
              UNION ALL
          
              -- RECURSIVO: hijos de cada nodo
              SELECT 
                  o.id,
                  o.padre_id,
                  o.nombre,
                  o.icono,
                  o.path,
                  o.rol_id,
                  o.orden,
                  o.is_active,
                  mt.usuario_id,
                  mt.nivel + 1 AS nivel
              FROM auth_opcion o
              JOIN menu_tree mt ON o.padre_id  = mt.id
                               AND o.is_active = true
          )
          
          SELECT 
              u.id,
              u.persona_id,
              u.codigo_usuario,
              u.colegio_id,
              u.password,
              u.is_active,
          
              json_build_object(
                  'id',         co.id,
                  'nombre',     co.nombre,
                  'logo_url',   co.logo_url,
                  'dominio',    co.dominio,
                  'telefono',   co.telefono,
                  'email',      co.email,
                  'ruc',        co.ruc,
                  'pagina_web', co.pagina_web,
                  'direccion',  co.direccion,
                  'is_active',  co.is_active
              ) AS colegio,
          
              COALESCE(
                  (
                      SELECT json_agg(
                          json_build_object(
                              'id',       mt.id,
                              'padre_id', mt.padre_id,
                              'nombre',   mt.nombre,
                              'icono',    mt.icono,
                              'path',     mt.path,
                              'rol_id',   mt.rol_id,
                              'orden',    mt.orden,
                              'nivel',    mt.nivel
                          ) ORDER BY mt.nivel ASC, mt.padre_id ASC NULLS FIRST, mt.orden ASC
                      )
                      FROM menu_tree mt
                      WHERE mt.usuario_id = u.id
                  ),
                  '[]'::json
              ) AS role_opcion
          
          FROM auth_usuario u
          INNER JOIN academico_colegio co ON u.colegio_id = co.id
                    WHERE u.codigo_usuario = ${decoded.user?.codigo_usuario}
          
          AND u.is_active = true;
                    
          `;

    const User = users[0];

    if (!User) {
      return res.status(401).json({ msj: "Usuario no válido" });
    }


    // Uso
    const menuTree = buildTree(User.role_opcion);
    // console.log(JSON.stringify(menuTree, null, 2));
    // const menu = JSON.parse(menuTree)

    return res.status(200).json({
      user: {
        id: User.id,
        personal_id: User.persona_id,
        codigo_usuario: User.codigo_usuario,
        colegio_id: User.colegio_id,
      },
      colegio: User.colegio,
      role_opcion: menuTree,
    });
  } catch (err) {
    // Token expirado o inválido
    return res.status(401).json({ msj: "Sesión expirada" });
  }
};

//? AUTH LOGOUT
//? ***********************************************************************************************/
export const authLogout = async (req: Request, res: Response) => {
  res.clearCookie("token", {
    httpOnly: true, // 🔒 no accesible desde JS
    // secure: process.env.NODE_ENV === "production",
    secure: false, // true en producción (HTTPS)
    sameSite: "strict", // protección CSRF
    maxAge: 1000 * 60 * 60 * 5, // 1 hora
  });

  return res.json({ message: "Logout exitoso" });
};

//? ROLES & OPCIONES CRUD
//? ***********************************************************************************************/

// ─── GET ALL ROLES ─────────────────────────────────────────────────
export const getRoles = async (req: Request, res: Response) => {
  try {
    const roles = await sql`
      SELECT 
        id,
        nombre,
        icono,
        is_active,
        created_at
      FROM auth_rol
      WHERE is_active = true
      ORDER BY id ASC
    `;
    return res.status(200).json(roles);
  } catch (err) {
    console.error("[getRoles]", err);
    return res.status(500).json({ msj: "Error al obtener roles ❗️" });
  }
};

// ─── CREATE ROL ─────────────────────────────────────────────────────
export const createRol = async (req: Request, res: Response) => {
  const { nombre, icono, descripcion } = req.body;

  if (!nombre) {
    return res.status(400).json({ msj: "El nombre del rol es requerido ❗️" });
  }

  try {
    const result = await sql`
      INSERT INTO auth_rol (nombre, icono, descripcion, is_active)
      VALUES (${nombre}, ${icono || null}, ${descripcion || null}, true)
      RETURNING *
    `;
    return res.status(201).json({
      msj: "Rol creado exitosamente ✔️",
      rol: result[0],
    });
  } catch (err: any) {
    if (err?.code === "23505") {
      return res.status(409).json({ msj: "Ya existe un rol con ese nombre ❗️" });
    }
    console.error("[createRol]", err);
    return res.status(500).json({ msj: "Error al crear el rol ❗️" });
  }
};

// ─── UPDATE ROL ─────────────────────────────────────────────────────
export const updateRol = async (req: Request, res: Response) => {
  const { id } = req.params;
  const { nombre, icono, descripcion } = req.body;

  try {
    const result = await sql`
      UPDATE auth_rol
      SET 
        nombre = ${nombre},
        icono = ${icono || null},
        descripcion = ${descripcion || null}
      WHERE id = ${id}
      RETURNING *
    `;

    if (result.length === 0) {
      return res.status(404).json({ msj: "Rol no encontrado ❗️" });
    }

    return res.status(200).json({
      msj: "Rol actualizado exitosamente ✔️",
      rol: result[0],
    });
  } catch (err: any) {
    if (err?.code === "23505") {
      return res.status(409).json({ msj: "Ya existe un rol con ese nombre ❗️" });
    }
    console.error("[updateRol]", err);
    return res.status(500).json({ msj: "Error al actualizar el rol ❗️" });
  }
};

// ─── DELETE ROL (soft delete) ─────────────────────────────────────
export const deleteRol = async (req: Request, res: Response) => {
  const { id } = req.params;

  try {
    const result = await sql`
      UPDATE auth_rol
      SET is_active = false
      WHERE id = ${id}
      RETURNING *
    `;

    if (result.length === 0) {
      return res.status(404).json({ msj: "Rol no encontrado ❗️" });
    }

    return res.status(200).json({
      msj: "Rol eliminado exitosamente ✔️",
      rol: result[0],
    });
  } catch (err) {
    console.error("[deleteRol]", err);
    return res.status(500).json({ msj: "Error al eliminar el rol ❗️" });
  }
};

// ─── GET OPCIONES BY ROL ────────────────────────────────────────────
export const getOpcionesByRol = async (req: Request, res: Response) => {
  const { rolId } = req.params;

  try {
    const opciones = await sql`
      SELECT 
        id,
        nombre,
        icono,
        path,
        padre_id,
        rol_id,
        orden,
        is_active
      FROM auth_opcion
      WHERE rol_id = ${rolId}
        AND is_active = true
      ORDER BY orden ASC, nombre ASC
    `;
    return res.status(200).json(opciones);
  } catch (err) {
    console.error("[getOpcionesByRol]", err);
    return res.status(500).json({ msj: "Error al obtener opciones ❗️" });
  }
};

// ─── CREATE OPCION ──────────────────────────────────────────────────
export const createOpcion = async (req: Request, res: Response) => {
  const { nombre, icono, path, padre_id, orden, rol_id } = req.body;

  if (!nombre || !rol_id) {
    return res.status(400).json({
      msj: "El nombre y rol_id son requeridos ❗️",
    });
  }

  try {
    const result = await sql`
      INSERT INTO auth_opcion (
        nombre, 
        icono, 
        path, 
        padre_id, 
        orden, 
        rol_id, 
        is_active
      )
      VALUES (
        ${nombre}, 
        ${icono || null}, 
        ${path || null}, 
        ${padre_id || null}, 
        ${orden || 1}, 
        ${rol_id}, 
        true
      )
      RETURNING *
    `;
    return res.status(201).json({
      msj: "Opción creada exitosamente ✔️",
      opcion: result[0],
    });
  } catch (err) {
    console.error("[createOpcion]", err);
    return res.status(500).json({ msj: "Error al crear la opción ❗️" });
  }
};

// ─── UPDATE OPCION ──────────────────────────────────────────────────
export const updateOpcion = async (req: Request, res: Response) => {
  const { id } = req.params;
  const { nombre, icono, path, padre_id, orden } = req.body;

  try {
    const result = await sql`
      UPDATE auth_opcion
      SET 
        nombre = ${nombre},
        icono = ${icono || null},
        path = ${path || null},
        padre_id = ${padre_id || null},
        orden = ${orden || 1}
      WHERE id = ${id}
      RETURNING *
    `;

    if (result.length === 0) {
      return res.status(404).json({ msj: "Opción no encontrada ❗️" });
    }

    return res.status(200).json({
      msj: "Opción actualizada exitosamente ✔️",
      opcion: result[0],
    });
  } catch (err) {
    console.error("[updateOpcion]", err);
    return res.status(500).json({ msj: "Error al actualizar la opción ❗️" });
  }
};

// ─── DELETE OPCION (soft delete) ────────────────────────────────────
export const deleteOpcion = async (req: Request, res: Response) => {
  const { id } = req.params;

  try {
    // Primero desactivar los hijos
    await sql`
      UPDATE auth_opcion
      SET is_active = false
      WHERE padre_id = ${id}
    `;

    const result = await sql`
      UPDATE auth_opcion
      SET is_active = false
      WHERE id = ${id}
      RETURNING *
    `;

    if (result.length === 0) {
      return res.status(404).json({ msj: "Opción no encontrada ❗️" });
    }

    return res.status(200).json({
      msj: "Opción eliminada exitosamente ✔️",
      opcion: result[0],
    });
  } catch (err) {
    console.error("[deleteOpcion]", err);
    return res.status(500).json({ msj: "Error al eliminar la opción ❗️" });
  }
};
