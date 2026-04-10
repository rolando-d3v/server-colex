import { Request, Response } from "express";
import { RequestHandler } from "express";
import { prisma } from "../../db/db_conexion";
// import { prisma } from "./lib/prisma";
import { var_env } from "../../config_env";
import bcrypt from "bcrypt";






//? GET INFO COLEGIO
//? **********************************************************************************************/
export const getCurso = async (req: Request, res: Response) => {

  try {

    const {uuid_curso_u} = req.params

    const getInfoColex = await prisma.academico_curso.findMany({
      where:{
       colegio_id: Number(1)
      },
      include: {
       academico_curso_grado: {
          include : {
           academico_grado: true
          }
        }
      }

    })

    console.log(getInfoColex);

   
    return res.json(getInfoColex);
  } catch (err) {
    console.log(err);
    return res.status(500).json({ msn: "Error: server ❗️", err });
  }
};



