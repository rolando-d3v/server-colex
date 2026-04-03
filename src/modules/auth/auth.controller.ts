import { Request, Response } from "express";
import jwt from "jsonwebtoken";
import { var_env } from "../../config_env";
import bcrypt from "bcrypt";
import { prisma } from "../../db/db_conexion";
import sql from "../../db/postgres";

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
    const codigoFormt = codigo.toLowerCase()


    const users = await sql`
                          SELECT 
	                        	u.id,
	                        	u.persona_id,
	                        	u.codigo_usuario,
	                        	u.colegio_id,
	                        	u.password,
	                        	u.is_active,
	                        	json_agg(
	                        		json_build_object(
	                        			'id', r.id,
	                        			'nombre', r.nombre
	                        		)
	                        	) AS roles
	                            FROM usuario u
	                            INNER JOIN usuario_rol ur ON ur.usuario_id = u.id
	                            INNER JOIN rol r ON r.id = ur.rol_id
	                            WHERE u.codigo_usuario = ${codigoFormt}
	                            AND u.is_active = true
	                            AND ur.is_active = true
	                            GROUP BY u.id;
                        `

    const User = users[0]


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
        roles: User.roles,
        ok: true,
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

    return res.status(200).json({
      msj: "Login exitoso ✔️",
      user: {
        id: User.id,
        personal_id: User.persona_id,
        codigo_usuario: User.codigo_usuario,
        colegio_id: User.colegio_id,
      },
      roles: User.roles
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
    const userRegister = await prisma.usuario.create({
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
      },
      roles: {
        id: string;
        nombre: string;
      }
    };

    // Opcional: verificar que el usuario sigue activo en BD
    const usuario = await prisma.usuario.findFirst({
      where: { id: decoded.user.id, is_active: true },
      select: {
        id: true,
        codigo_usuario: true,
      },
    });


    if (!usuario) {
      return res.status(401).json({ msj: "Usuario no válido" });
    }

    return res.status(200).json({
      user: decoded.user,
      roles: decoded.roles
    });
  } catch (err) {
    // Token expirado o inválido
    return res.status(401).json({ msj: "Sesión expirada" });
  }
};

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
