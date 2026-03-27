import { Request, Response } from "express";
import jwt from "jsonwebtoken";
import { RequestHandler } from "express";
import { var_env } from "../../config_env";
import bcrypt from "bcrypt";
import { prisma } from "../../db/db_conexion";

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

    const existe_user = await prisma.usuario.findFirst({
      where: {
        codigo_usuario: codigo,
        is_active: true,
      },
    });

    if (!existe_user) {
      return res.status(401).json({ msj: "Credenciales inválidas ❗️" });
    }

    const passCompare = await bcrypt.compare(password, existe_user.password);

    if (!passCompare) {
      return res.status(401).json({ msn: "Credenciales inválidas ❗️" });
    }

    const token = jwt.sign(
      {
        id: existe_user.id,
        persona_id: existe_user.persona_id,
        codigo_usuario: existe_user.codigo_usuario,
        colegio_id: existe_user.colegio_id,
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

    return res.status(200).json({ msj: "Login exitoso ✔️" });
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
// export const postVerifyAuth = async (req: Request, res: Response) => {
//   try {
//     const existeToken = req.header("Authorization");

//     if (!existeToken) {
//       res
//         .status(401)
//         .json({ ok: false, message: "Acceso denegado: token requerido" });
//     } else {
//       const token = existeToken?.startsWith("Bearer ")
//         ? existeToken.split(" ")[1]
//         : existeToken;

//       jwt.verify(token, var_env.SECRET_TOKEN, (err, userToken) => {
//         if (err) {
//           return res
//             .status(500)
//             .json({ msj: "Error: Authentication failed! 😕 ❗️❗️" });
//         } else {
//           return res.json({
//             msj: "Login successfully 😃 ✔️",
//             user: userToken,
//           });
//         }
//       });
//     }
//   } catch (err) {
//     console.log(err);
//     return res.status(500).json({ msj: "Error: server 😕 ❗️❗️", err });
//   }
// };

//? AUTH ME
//? ***********************************************************************************************/
export const authMe = async (req: Request, res: Response) => {
  try {
    const token = req.cookies?.token;

    if (!token) {
      return res.status(401).json({ msj: "No autenticado" });
    }

    const decoded = jwt.verify(token, var_env.SECRET_TOKEN) as {
      id: string;
      colegio_id: number;
    };

    // Opcional: verificar que el usuario sigue activo en BD
    const usuario = await prisma.usuario.findFirst({
      where: { id: decoded.id, is_active: true },
      select: {
        id: true,
        codigo_usuario: true,
        colegio_id: true,
      },
    });

    if (!usuario) {
      return res.status(401).json({ msj: "Usuario no válido" });
    }

    return res.status(200).json({ usuario });
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
