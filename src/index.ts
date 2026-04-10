import express, { Request, Response } from 'express';
import cors from 'cors';
import morgan from 'morgan';
import { var_env } from "./config_env/index";
import cookieParser from "cookie-parser";


import authRoutes from "./modules/auth/auth.routes";
import colegioRoutes from "./modules/colegio/colegio.routes";
import cursoRoutes from "./modules/curso/curso.routes";


const app = express();

// Middleware
app.use(morgan('dev'));
app.use(express.json());
app.use(cookieParser());
app.use(
  cors({
    origin: "http://localhost:5173", // tu frontend
    credentials: true, // 🔥 IMPORTANTE
  })
);





app.use('/auth', authRoutes);
app.use('/colegio', colegioRoutes);
app.use('/curso', cursoRoutes);



const pepe = (req: Request, res: Response)  =>  {
    res.send('Hello World!');
}

app.use('/evento',pepe );

// Levantar servidor
const port = var_env.PORT
app.listen(port, () => {
    console.log(`🔥  🚀  Server Colex run port ➡️ ${port}  ✔️`);
});
 
