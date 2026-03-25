// import path from 'path';               // ⬅️ nuevo
import express, { Request, Response } from 'express';
import cors from 'cors';
import morgan from 'morgan';
// import dotenv from 'dotenv';
import { var_env } from "./config_env/index";
import cookieParser from "cookie-parser";
// import http from 'http';
// import { Server } from 'socket.io';


import authRoutes from "./modules/auth/auth.routes";
// import tipo_eventoRoutes from "./api/tipo_evento/tipo_evento.route";
// import evento_fijoRoutes from "./api/evento_fijo/evento_fijo.route";

// import { setupMediasoup } from './webrtc/mediasoupSetup';

// dotenv.config();

const app = express();
// const server = http.createServer(app);

// WebSocket
// const io = new Server(server, {
//     cors: {
//         origin: '*', // ajusta esto si quieres restringirlo
//         methods: ["GET", "POST"],
//         credentials: true,
//     }
// });

// Eventos WebSocket
// io.on('connection', (socket) => {
//     console.log('🟢 Cliente conectado:', socket.id);
//     socket.on('ping-test', (msg) => {
//         console.log('📨 Ping recibido:', msg);
//         socket.emit('pong-test', { answer: 'pong', original: msg });
//     });

//     socket.on('disconnect', () => {
//         console.log('🔴 Cliente desconectado:', socket.id);
//     });
// });

// Exporta io para usar en otros módulos
// export { io };

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


// ⬅️ sirve archivos estáticos subidos
// app.use('/', express.static(path.join(__dirname, '/data')));
// app.use(express.static("data"));

// Rutas
// app.use('/comunicado', comunicadoRoutes);
// app.use('/reunion', reunionRoutes);
// app.use('/publicacion', publicacionRoutes);
// app.use('/tipoPublicacion', tipoPublicacionRoutes);

// app.use('/events', eventsRoutes);
app.use('/auth', authRoutes);


const pepe = (req: Request, res: Response)  =>  {
    res.send('Hello World!');
}

app.use('/evento',pepe );

// Levantar servidor
const port = var_env.PORT
app.listen(port, () => {
    console.log(`🔥  🚀  Server Colex run port ➡️ ${port}  ✔️`);
});
 
// …después de crear io
// setupMediasoup(io);     
// setupAlertasSocket(io);
