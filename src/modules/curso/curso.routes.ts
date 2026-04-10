import { Router } from "express";

// controllers
import * as CtrlCurso from "./curso.controller";


const router = Router();
router.get("/all-curso/:id_colegio", CtrlCurso.getCurso);
// router.post("/create-user", CtrlUser.createUser);
// router.get("/", CtrlUser.getUsers);
// router.delete("/:id", CtrlRegistro.deleteRegistro);

export default router;
