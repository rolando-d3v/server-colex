import { Router } from "express";

// controllers
import * as CtrlAuth from "./auth.controller";


const router = Router();
router.post("/login", CtrlAuth.authLogin);
router.post("/register", CtrlAuth.registerUser);
router.post("/verify-auth", CtrlAuth.postVerifyAuth);
// router.get("/", CtrlAuth.getUsers);
// router.delete("/:id", CtrlRegistro.deleteRegistro);

export default router;
