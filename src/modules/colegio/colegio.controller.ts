import { Request, Response } from "express";
import { RequestHandler } from "express";
import { prisma } from "../../db/db_conexion";
// import { prisma } from "./lib/prisma";
import { var_env } from "../../config_env";
import bcrypt from "bcrypt";






//? GET INFO COLEGIO
//? **********************************************************************************************/
export const getInfoColegio = async (req: Request, res: Response) => {

  try {

    const {dominio} = req.params

    const getInfoColex = await prisma.academico_colegio.findFirst({
      where:{
        dominio: "localhost"
      }

    })

    console.log(getInfoColex);

   
    return res.json(getInfoColex);
  } catch (err) {
    console.log(err);
    return res.status(500).json({ msn: "Error: server ❗️", err });
  }
};







//? GET ROLE USER
//? **********************************************************************************************/
export const getRoleUser = async (req: Request, res: Response) => {


  try {

    const uuid = req.params.id
   
    
    // const roleUser = await prisma.usuario.findUnique({
    //   where: {
    //     uuid_user_u: uuid,
    //     usuario_role: {
    //       some: {
    //         user_uuid: uuid,
    //       }
    //     }
    //   },
    //   select: {
    //     nombre_v: true,
    //     apellido_v: true,
    //     email_v: true,
    //     uuid_user_u: true,
    //     foto_v: true,
    //     estado_b: true,
    //     usuario_role: true
    //   },
   
    // }
    // );
    // console.log(roleUser);
    
    // return res.json(roleUser);
  } catch (err) {
    console.log(err);
    return res.status(500).json({ msn: "Error: server ❗️", err });
  }
};




