import { Request, Response } from "express";
import { RequestHandler } from "express";
// import { PrismaClient } from "@prisma/client";
import { var_env } from "../../config_env";
import bcrypt from "bcrypt";

// const prisma = new PrismaClient();






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




