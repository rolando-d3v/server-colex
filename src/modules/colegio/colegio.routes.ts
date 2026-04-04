import { Router } from "express";

// controllers
import * as CtrlColegio from "./colegio.controller";


const router = Router();
router.get("/data-colegio", CtrlColegio.getInfoColegio);
// router.post("/create-user", CtrlUser.createUser);
// router.get("/", CtrlUser.getUsers);
// router.delete("/:id", CtrlRegistro.deleteRegistro);

export default router;
