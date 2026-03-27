import { Router } from "express";

// controllers
import * as CtrlAuth from "./auth.controller";


const router = Router();
router.post("/login", CtrlAuth.authLogin);
router.post("/register", CtrlAuth.registerUser);
router.post("/logout", CtrlAuth.authLogout);
router.get("/verify-auth", CtrlAuth.authMe);
// router.delete("/:id", CtrlRegistro.deleteRegistro);

export default router;
