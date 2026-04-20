import { Router } from "express";

// controllers
import * as CtrlAuth from "./auth.controller";


const router = Router();

// Auth endpoints
router.post("/login", CtrlAuth.authLogin);
router.post("/register", CtrlAuth.registerUser);
router.post("/logout", CtrlAuth.authLogout);
router.get("/verify-auth", CtrlAuth.authMe);

// Roles CRUD
router.get("/roles", CtrlAuth.getRoles);
router.post("/rol", CtrlAuth.createRol);
router.put("/rol/:id", CtrlAuth.updateRol);
router.delete("/rol/:id", CtrlAuth.deleteRol);

// Opciones CRUD
router.get("/opciones/:rolId", CtrlAuth.getOpcionesByRol);
router.post("/opcion", CtrlAuth.createOpcion);
router.put("/opcion/:id", CtrlAuth.updateOpcion);
router.delete("/opcion/:id", CtrlAuth.deleteOpcion);

export default router;
