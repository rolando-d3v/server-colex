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

    const email = req.body.email;
    const password = req.body.password;


    if (!email || !password) {
      return res.status(500).json({ msj: "Campos requeridos Email, Password ❗️" });
    }

    const existe_email = await prisma.usuario.findFirst(
      {
        where: {
          email: email,
          is_active: true
        },
        select: {
          email: true,
          password: true,
          id: true
        }
      }
    )


    if (!existe_email) {
      return res.status(400).json({ msj: "Error: email no valido ❗️" });
    }


    const passCompare = await bcrypt.compare(password, existe_email.password);

    if (!passCompare) {
      return res.status(400).json({ msn: "Password Incorrecto ❗️" });
    }


    const token = jwt.sign(
      { uuid: existe_email.id, ok: true },
      var_env.SECRET_TOKEN,
      { expiresIn: "5h" }
    );

    res.cookie("token", token, {
      httpOnly: true,       // 🔒 no accesible desde JS
      secure: false,        // true en producción (HTTPS)
      sameSite: "strict",   // protección CSRF
      maxAge: 1000 * 60 * 60, // 1 hora

    });


    return res.json({ msj: "Login successfully 😃 ✔️" });


  } catch (err) {
    console.log(err);
    return res.status(500).json({ msj: "Error: server ❗️", err });
  }
};



//? CREATE USER CON AUTH
//? **********************************************************************************************/
export const registerUser = async (req: Request, res: Response) => {
  try {

    const userRegister = await prisma.usuario.create({
      data: {
        colegio_id: req.body.id_usuario,
        email: req.body.email,
        password: await bcrypt.hash(req.body.password, 10),
      },
    });
    return res.json({ msn: "Registro created success 😃 ✔️", userRegister });
  } catch (err) {
    console.log(err);
    return res.status(500).json({ msn: "Error: server ❗️", err });
  }
};





//? AUTH MANTIENE LOGIN
//? ***********************************************************************************************/
export const postVerifyAuth = async (req: Request, res: Response) => {
  try {
    const existeToken = req.header("Authorization");


    if (!existeToken) {
      res
        .status(401)
        .json({ ok: false, message: "Acceso denegado: token requerido" });
    } else {


      const token = existeToken?.startsWith("Bearer ")
        ? existeToken.split(" ")[1]
        : existeToken;


      jwt.verify(token, var_env.SECRET_TOKEN, (err, userToken) => {
        if (err) {
          return res
            .status(500)
            .json({ msj: "Error: Authentication failed! 😕 ❗️❗️" });
        } else {
          return res.json({
            msj: "Login successfully 😃 ✔️",
            user: userToken,
          });
        }
      });
    }
  } catch (err) {
    console.log(err);
    return res.status(500).json({ msj: "Error: server 😕 ❗️❗️", err });
  }
};

