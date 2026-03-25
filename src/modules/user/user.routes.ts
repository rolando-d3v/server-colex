import { Router } from "express";

// controllers
import * as CtrlUser from "./user.controller";


const router = Router();
router.get("/role/:id", CtrlUser.getRoleUser);
// router.post("/create-user", CtrlUser.createUser);
// router.get("/", CtrlUser.getUsers);
// router.delete("/:id", CtrlRegistro.deleteRegistro);

export default router;
