
/*
 Navicat Premium Data Transfer

 Source Server         : db_trabajo_postgresql
 Source Server Type    : PostgreSQL
 Source Server Version : 160013 (160013)
 Source Host           : 10.5.10.7:5432
 Source Catalog        : db_rahemza_colex
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160013 (160013)
 File Encoding         : 65001

 Date: 26/03/2026 11:08:59
*/


-- ----------------------------
-- Sequence structure for alumno_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."alumno_id_seq";
CREATE SEQUENCE "public"."alumno_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for anuncio_comentario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."anuncio_comentario_id_seq";
CREATE SEQUENCE "public"."anuncio_comentario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for anuncio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."anuncio_id_seq";
CREATE SEQUENCE "public"."anuncio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for asistencia_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."asistencia_id_seq";
CREATE SEQUENCE "public"."asistencia_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for aula_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."aula_id_seq";
CREATE SEQUENCE "public"."aula_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for bloque_horario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."bloque_horario_id_seq";
CREATE SEQUENCE "public"."bloque_horario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for colegio_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."colegio_id_seq";
CREATE SEQUENCE "public"."colegio_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for curso_docente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."curso_docente_id_seq";
CREATE SEQUENCE "public"."curso_docente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for curso_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."curso_id_seq";
CREATE SEQUENCE "public"."curso_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for docente_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."docente_id_seq";
CREATE SEQUENCE "public"."docente_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for entrega_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."entrega_id_seq";
CREATE SEQUENCE "public"."entrega_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for evaluacion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."evaluacion_id_seq";
CREATE SEQUENCE "public"."evaluacion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for grado_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."grado_id_seq";
CREATE SEQUENCE "public"."grado_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for material_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."material_id_seq";
CREATE SEQUENCE "public"."material_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for matricula_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."matricula_id_seq";
CREATE SEQUENCE "public"."matricula_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for mensaje_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."mensaje_id_seq";
CREATE SEQUENCE "public"."mensaje_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for nota_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."nota_id_seq";
CREATE SEQUENCE "public"."nota_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for padre_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."padre_id_seq";
CREATE SEQUENCE "public"."padre_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pago_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pago_id_seq";
CREATE SEQUENCE "public"."pago_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for pension_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."pension_id_seq";
CREATE SEQUENCE "public"."pension_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for persona_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."persona_id_seq";
CREATE SEQUENCE "public"."persona_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for rol_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."rol_id_seq";
CREATE SEQUENCE "public"."rol_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for seccion_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."seccion_id_seq";
CREATE SEQUENCE "public"."seccion_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for sesion_horario_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."sesion_horario_id_seq";
CREATE SEQUENCE "public"."sesion_horario_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for tarea_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."tarea_id_seq";
CREATE SEQUENCE "public"."tarea_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for usuario_rol_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."usuario_rol_id_seq";
CREATE SEQUENCE "public"."usuario_rol_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for alumno
-- ----------------------------
DROP TABLE IF EXISTS "public"."alumno";
CREATE TABLE "public"."alumno" (
  "id" int4 NOT NULL DEFAULT nextval('alumno_id_seq'::regclass),
  "persona_id" uuid NOT NULL,
  "codigo" varchar(20) COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of alumno
-- ----------------------------

-- ----------------------------
-- Table structure for alumno_padre
-- ----------------------------
DROP TABLE IF EXISTS "public"."alumno_padre";
CREATE TABLE "public"."alumno_padre" (
  "alumno_id" int4 NOT NULL,
  "padre_id" int4 NOT NULL,
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of alumno_padre
-- ----------------------------

-- ----------------------------
-- Table structure for anuncio
-- ----------------------------
DROP TABLE IF EXISTS "public"."anuncio";
CREATE TABLE "public"."anuncio" (
  "id" int4 NOT NULL DEFAULT nextval('anuncio_id_seq'::regclass),
  "curso_docente_id" int4 NOT NULL,
  "autor_id" uuid NOT NULL,
  "titulo" varchar(200) COLLATE "pg_catalog"."default",
  "contenido" text COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool DEFAULT true,
  "created_at" timestamptz(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of anuncio
-- ----------------------------

-- ----------------------------
-- Table structure for anuncio_comentario
-- ----------------------------
DROP TABLE IF EXISTS "public"."anuncio_comentario";
CREATE TABLE "public"."anuncio_comentario" (
  "id" int4 NOT NULL DEFAULT nextval('anuncio_comentario_id_seq'::regclass),
  "anuncio_id" int4 NOT NULL,
  "autor_id" uuid NOT NULL,
  "contenido" text COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool DEFAULT true,
  "created_at" timestamptz(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of anuncio_comentario
-- ----------------------------

-- ----------------------------
-- Table structure for asistencia
-- ----------------------------
DROP TABLE IF EXISTS "public"."asistencia";
CREATE TABLE "public"."asistencia" (
  "id" int4 NOT NULL DEFAULT nextval('asistencia_id_seq'::regclass),
  "alumno_id" int4 NOT NULL,
  "curso_docente_id" int4 NOT NULL,
  "fecha" date NOT NULL,
  "estado" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "observacion" text COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of asistencia
-- ----------------------------

-- ----------------------------
-- Table structure for aula
-- ----------------------------
DROP TABLE IF EXISTS "public"."aula";
CREATE TABLE "public"."aula" (
  "id" int4 NOT NULL DEFAULT nextval('aula_id_seq'::regclass),
  "colegio_id" int4 NOT NULL,
  "grado_id" int4 NOT NULL,
  "seccion_id" int4 NOT NULL,
  "year" int4 NOT NULL,
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of aula
-- ----------------------------

-- ----------------------------
-- Table structure for bloque_horario
-- ----------------------------
DROP TABLE IF EXISTS "public"."bloque_horario";
CREATE TABLE "public"."bloque_horario" (
  "id" int4 NOT NULL DEFAULT nextval('bloque_horario_id_seq'::regclass),
  "colegio_id" int4 NOT NULL,
  "nombre" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "hora_inicio" time(6) NOT NULL,
  "hora_fin" time(6) NOT NULL,
  "orden" int4 NOT NULL,
  "es_recreo" bool DEFAULT false,
  "is_active" bool DEFAULT true,
  "created_at" timestamptz(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of bloque_horario
-- ----------------------------

-- ----------------------------
-- Table structure for colegio
-- ----------------------------
DROP TABLE IF EXISTS "public"."colegio";
CREATE TABLE "public"."colegio" (
  "id" int4 NOT NULL DEFAULT nextval('colegio_id_seq'::regclass),
  "nombre" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "ruc" varchar(20) COLLATE "pg_catalog"."default",
  "direccion" text COLLATE "pg_catalog"."default",
  "telefono" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(100) COLLATE "pg_catalog"."default",
  "logo_url" text COLLATE "pg_catalog"."default",
  "dominio" varchar(100) COLLATE "pg_catalog"."default",
  "is_active" bool DEFAULT true,
  "created_at" timestamptz(6) DEFAULT now(),
  "updated_at" timestamptz(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of colegio
-- ----------------------------
INSERT INTO "public"."colegio" VALUES (2, 'juan pablo II', NULL, 'chorrillos', '2546893', NULL, NULL, 'juanpablo.com', 't', '2026-03-23 21:35:06.625203-05', '2026-03-23 21:35:06.625203-05');
INSERT INTO "public"."colegio" VALUES (1, 'santa rosa', NULL, 'chorrillos', '2546891', NULL, NULL, 'localhost', 't', '2026-03-23 21:18:37.659709-05', '2026-03-23 21:18:37.659709-05');

-- ----------------------------
-- Table structure for curso
-- ----------------------------
DROP TABLE IF EXISTS "public"."curso";
CREATE TABLE "public"."curso" (
  "id" int4 NOT NULL DEFAULT nextval('curso_id_seq'::regclass),
  "colegio_id" int4 NOT NULL,
  "nombre" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" text COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of curso
-- ----------------------------

-- ----------------------------
-- Table structure for curso_docente
-- ----------------------------
DROP TABLE IF EXISTS "public"."curso_docente";
CREATE TABLE "public"."curso_docente" (
  "id" int4 NOT NULL DEFAULT nextval('curso_docente_id_seq'::regclass),
  "curso_id" int4 NOT NULL,
  "docente_id" int4 NOT NULL,
  "aula_id" int4 NOT NULL,
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of curso_docente
-- ----------------------------

-- ----------------------------
-- Table structure for docente
-- ----------------------------
DROP TABLE IF EXISTS "public"."docente";
CREATE TABLE "public"."docente" (
  "id" int4 NOT NULL DEFAULT nextval('docente_id_seq'::regclass),
  "persona_id" uuid NOT NULL,
  "especialidad" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of docente
-- ----------------------------

-- ----------------------------
-- Table structure for entrega
-- ----------------------------
DROP TABLE IF EXISTS "public"."entrega";
CREATE TABLE "public"."entrega" (
  "id" int4 NOT NULL DEFAULT nextval('entrega_id_seq'::regclass),
  "tarea_id" int4 NOT NULL,
  "alumno_id" int4 NOT NULL,
  "archivo_url" text COLLATE "pg_catalog"."default",
  "comentario" text COLLATE "pg_catalog"."default",
  "fecha" timestamp(6) DEFAULT now(),
  "calificacion" numeric(5,2),
  "retroalimentacion" text COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of entrega
-- ----------------------------

-- ----------------------------
-- Table structure for evaluacion
-- ----------------------------
DROP TABLE IF EXISTS "public"."evaluacion";
CREATE TABLE "public"."evaluacion" (
  "id" int4 NOT NULL DEFAULT nextval('evaluacion_id_seq'::regclass),
  "curso_docente_id" int4 NOT NULL,
  "nombre" varchar(100) COLLATE "pg_catalog"."default",
  "fecha" date,
  "peso" numeric(5,2),
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true,
  "tipo" varchar(50) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of evaluacion
-- ----------------------------

-- ----------------------------
-- Table structure for grado
-- ----------------------------
DROP TABLE IF EXISTS "public"."grado";
CREATE TABLE "public"."grado" (
  "id" int4 NOT NULL DEFAULT nextval('grado_id_seq'::regclass),
  "colegio_id" int4 NOT NULL,
  "nombre" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of grado
-- ----------------------------

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS "public"."material";
CREATE TABLE "public"."material" (
  "id" int4 NOT NULL DEFAULT nextval('material_id_seq'::regclass),
  "curso_docente_id" int4 NOT NULL,
  "titulo" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" text COLLATE "pg_catalog"."default",
  "archivo_url" text COLLATE "pg_catalog"."default",
  "tipo" varchar(50) COLLATE "pg_catalog"."default",
  "fecha" timestamp(6) DEFAULT now(),
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of material
-- ----------------------------

-- ----------------------------
-- Table structure for matricula
-- ----------------------------
DROP TABLE IF EXISTS "public"."matricula";
CREATE TABLE "public"."matricula" (
  "id" int4 NOT NULL DEFAULT nextval('matricula_id_seq'::regclass),
  "alumno_id" int4 NOT NULL,
  "aula_id" int4 NOT NULL,
  "fecha" date NOT NULL DEFAULT CURRENT_DATE,
  "estado" varchar(20) COLLATE "pg_catalog"."default" DEFAULT 'activo'::character varying,
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of matricula
-- ----------------------------

-- ----------------------------
-- Table structure for mensaje
-- ----------------------------
DROP TABLE IF EXISTS "public"."mensaje";
CREATE TABLE "public"."mensaje" (
  "id" int4 NOT NULL DEFAULT nextval('mensaje_id_seq'::regclass),
  "emisor_id" uuid NOT NULL,
  "asunto" varchar(200) COLLATE "pg_catalog"."default",
  "contenido" text COLLATE "pg_catalog"."default" NOT NULL,
  "fecha" timestamp(6) DEFAULT now(),
  "is_active" bool DEFAULT true,
  "created_at" timestamptz(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of mensaje
-- ----------------------------

-- ----------------------------
-- Table structure for mensaje_destinatario
-- ----------------------------
DROP TABLE IF EXISTS "public"."mensaje_destinatario";
CREATE TABLE "public"."mensaje_destinatario" (
  "mensaje_id" int4 NOT NULL,
  "usuario_id" uuid NOT NULL,
  "leido" bool DEFAULT false,
  "fecha_leido" timestamp(6),
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of mensaje_destinatario
-- ----------------------------

-- ----------------------------
-- Table structure for nota
-- ----------------------------
DROP TABLE IF EXISTS "public"."nota";
CREATE TABLE "public"."nota" (
  "id" int4 NOT NULL DEFAULT nextval('nota_id_seq'::regclass),
  "evaluacion_id" int4 NOT NULL,
  "alumno_id" int4 NOT NULL,
  "nota" numeric(5,2),
  "observacion" text COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of nota
-- ----------------------------

-- ----------------------------
-- Table structure for padre
-- ----------------------------
DROP TABLE IF EXISTS "public"."padre";
CREATE TABLE "public"."padre" (
  "id" int4 NOT NULL DEFAULT nextval('padre_id_seq'::regclass),
  "persona_id" uuid,
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of padre
-- ----------------------------

-- ----------------------------
-- Table structure for pago
-- ----------------------------
DROP TABLE IF EXISTS "public"."pago";
CREATE TABLE "public"."pago" (
  "id" int4 NOT NULL DEFAULT nextval('pago_id_seq'::regclass),
  "pension_id" int4 NOT NULL,
  "fecha_pago" timestamp(6) DEFAULT now(),
  "monto" numeric(10,2) NOT NULL,
  "metodo" varchar(50) COLLATE "pg_catalog"."default",
  "comprobante" varchar(100) COLLATE "pg_catalog"."default",
  "is_active" bool DEFAULT true,
  "created_at" timestamptz(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of pago
-- ----------------------------

-- ----------------------------
-- Table structure for pension
-- ----------------------------
DROP TABLE IF EXISTS "public"."pension";
CREATE TABLE "public"."pension" (
  "id" int4 NOT NULL DEFAULT nextval('pension_id_seq'::regclass),
  "alumno_id" int4 NOT NULL,
  "concepto" varchar(100) COLLATE "pg_catalog"."default",
  "monto" numeric(10,2) NOT NULL,
  "fecha_vencimiento" date NOT NULL,
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true,
  "estado_pension" varchar(20) COLLATE "pg_catalog"."default" DEFAULT 'pendiente'::character varying
)
;

-- ----------------------------
-- Records of pension
-- ----------------------------

-- ----------------------------
-- Table structure for persona
-- ----------------------------
DROP TABLE IF EXISTS "public"."persona";
CREATE TABLE "public"."persona" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "colegio_id" int4 NOT NULL,
  "nombres" varchar(100) COLLATE "pg_catalog"."default",
  "apellidos" varchar(100) COLLATE "pg_catalog"."default",
  "dni" varchar(20) COLLATE "pg_catalog"."default",
  "fecha_nacimiento" date,
  "telefono" varchar(20) COLLATE "pg_catalog"."default",
  "direccion" text COLLATE "pg_catalog"."default",
  "is_active" bool DEFAULT true,
  "created_at" timestamptz(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of persona
-- ----------------------------
INSERT INTO "public"."persona" VALUES ('1272f8e1-29df-4f65-a42e-f5d2d654fcca', 1, 'rolando', 'mamani flores', '44974829', '1988-03-03', '985503581', 'mazana', 't', '2026-03-26 08:30:17.076856-05');

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS "public"."rol";
CREATE TABLE "public"."rol" (
  "id" int4 NOT NULL DEFAULT nextval('rol_id_seq'::regclass),
  "nombre" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of rol
-- ----------------------------
INSERT INTO "public"."rol" VALUES (1, 'superadmin', '2026-03-23 21:28:35.500617-05', 't');
INSERT INTO "public"."rol" VALUES (2, 'admin_colegio', '2026-03-23 21:32:30.17544-05', 't');
INSERT INTO "public"."rol" VALUES (3, 'docente', '2026-03-23 21:32:38.681704-05', 't');
INSERT INTO "public"."rol" VALUES (4, 'alumno', '2026-03-23 21:32:49.012657-05', 't');
INSERT INTO "public"."rol" VALUES (5, 'padre', '2026-03-23 21:32:53.202134-05', 't');

-- ----------------------------
-- Table structure for seccion
-- ----------------------------
DROP TABLE IF EXISTS "public"."seccion";
CREATE TABLE "public"."seccion" (
  "id" int4 NOT NULL DEFAULT nextval('seccion_id_seq'::regclass),
  "colegio_id" int4 NOT NULL,
  "nombre" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) DEFAULT now(),
  "is_active" bool DEFAULT true
)
;

-- ----------------------------
-- Records of seccion
-- ----------------------------

-- ----------------------------
-- Table structure for sesion_horario
-- ----------------------------
DROP TABLE IF EXISTS "public"."sesion_horario";
CREATE TABLE "public"."sesion_horario" (
  "id" int4 NOT NULL DEFAULT nextval('sesion_horario_id_seq'::regclass),
  "colegio_id" int4 NOT NULL,
  "curso_docente_id" int4 NOT NULL,
  "aula_id" int4 NOT NULL,
  "bloque_id" int4 NOT NULL,
  "dia_semana" int2 NOT NULL,
  "year" int4 NOT NULL,
  "aula_fisica" varchar(50) COLLATE "pg_catalog"."default",
  "is_active" bool DEFAULT true,
  "created_at" timestamptz(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of sesion_horario
-- ----------------------------

-- ----------------------------
-- Table structure for tarea
-- ----------------------------
DROP TABLE IF EXISTS "public"."tarea";
CREATE TABLE "public"."tarea" (
  "id" int4 NOT NULL DEFAULT nextval('tarea_id_seq'::regclass),
  "curso_docente_id" int4 NOT NULL,
  "titulo" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "descripcion" text COLLATE "pg_catalog"."default",
  "archivo_url" text COLLATE "pg_catalog"."default",
  "fecha_asignacion" date DEFAULT now(),
  "fecha_entrega" date NOT NULL,
  "puntaje_maximo" numeric(5,2) DEFAULT 20,
  "is_active" bool DEFAULT true,
  "created_at" timestamptz(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of tarea
-- ----------------------------

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS "public"."usuario";
CREATE TABLE "public"."usuario" (
  "id" uuid NOT NULL DEFAULT gen_random_uuid(),
  "persona_id" uuid NOT NULL,
  "codigo_usuario" varchar(20) COLLATE "pg_catalog"."default" NOT NULL,
  "colegio_id" int4,
  "email" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "password" text COLLATE "pg_catalog"."default" NOT NULL,
  "is_active" bool DEFAULT true,
  "created_at" timestamptz(6) DEFAULT now()
)
;


-- ----------------------------
-- Table structure for usuario_rol
-- ----------------------------
DROP TABLE IF EXISTS "public"."usuario_rol";
CREATE TABLE "public"."usuario_rol" (
  "id" int4 NOT NULL DEFAULT nextval('usuario_rol_id_seq'::regclass),
  "usuario_id" uuid,
  "rol_id" int4,
  "is_active" bool DEFAULT true,
  "created_at" timestamptz(6) DEFAULT now()
)
;

-- ----------------------------
-- Records of usuario_rol
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."alumno_id_seq"
OWNED BY "public"."alumno"."id";
SELECT setval('"public"."alumno_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."anuncio_comentario_id_seq"
OWNED BY "public"."anuncio_comentario"."id";
SELECT setval('"public"."anuncio_comentario_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."anuncio_id_seq"
OWNED BY "public"."anuncio"."id";
SELECT setval('"public"."anuncio_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."asistencia_id_seq"
OWNED BY "public"."asistencia"."id";
SELECT setval('"public"."asistencia_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."aula_id_seq"
OWNED BY "public"."aula"."id";
SELECT setval('"public"."aula_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."bloque_horario_id_seq"
OWNED BY "public"."bloque_horario"."id";
SELECT setval('"public"."bloque_horario_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."colegio_id_seq"
OWNED BY "public"."colegio"."id";
SELECT setval('"public"."colegio_id_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."curso_docente_id_seq"
OWNED BY "public"."curso_docente"."id";
SELECT setval('"public"."curso_docente_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."curso_id_seq"
OWNED BY "public"."curso"."id";
SELECT setval('"public"."curso_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."docente_id_seq"
OWNED BY "public"."docente"."id";
SELECT setval('"public"."docente_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."entrega_id_seq"
OWNED BY "public"."entrega"."id";
SELECT setval('"public"."entrega_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."evaluacion_id_seq"
OWNED BY "public"."evaluacion"."id";
SELECT setval('"public"."evaluacion_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."grado_id_seq"
OWNED BY "public"."grado"."id";
SELECT setval('"public"."grado_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."material_id_seq"
OWNED BY "public"."material"."id";
SELECT setval('"public"."material_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."matricula_id_seq"
OWNED BY "public"."matricula"."id";
SELECT setval('"public"."matricula_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."mensaje_id_seq"
OWNED BY "public"."mensaje"."id";
SELECT setval('"public"."mensaje_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."nota_id_seq"
OWNED BY "public"."nota"."id";
SELECT setval('"public"."nota_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."padre_id_seq"
OWNED BY "public"."padre"."id";
SELECT setval('"public"."padre_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pago_id_seq"
OWNED BY "public"."pago"."id";
SELECT setval('"public"."pago_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."pension_id_seq"
OWNED BY "public"."pension"."id";
SELECT setval('"public"."pension_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."persona_id_seq"
OWNED BY "public"."persona"."id";
SELECT setval('"public"."persona_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."rol_id_seq"
OWNED BY "public"."rol"."id";
SELECT setval('"public"."rol_id_seq"', 5, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."seccion_id_seq"
OWNED BY "public"."seccion"."id";
SELECT setval('"public"."seccion_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."sesion_horario_id_seq"
OWNED BY "public"."sesion_horario"."id";
SELECT setval('"public"."sesion_horario_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."tarea_id_seq"
OWNED BY "public"."tarea"."id";
SELECT setval('"public"."tarea_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."usuario_rol_id_seq"
OWNED BY "public"."usuario_rol"."id";
SELECT setval('"public"."usuario_rol_id_seq"', 1, false);

-- ----------------------------
-- Uniques structure for table alumno
-- ----------------------------
ALTER TABLE "public"."alumno" ADD CONSTRAINT "alumno_persona_id_key" UNIQUE ("persona_id");

-- ----------------------------
-- Primary Key structure for table alumno
-- ----------------------------
ALTER TABLE "public"."alumno" ADD CONSTRAINT "alumno_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table alumno_padre
-- ----------------------------
ALTER TABLE "public"."alumno_padre" ADD CONSTRAINT "alumno_padre_pkey" PRIMARY KEY ("alumno_id", "padre_id");

-- ----------------------------
-- Indexes structure for table anuncio
-- ----------------------------
CREATE INDEX "idx_anuncio_curso" ON "public"."anuncio" USING btree (
  "curso_docente_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table anuncio
-- ----------------------------
ALTER TABLE "public"."anuncio" ADD CONSTRAINT "anuncio_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table anuncio_comentario
-- ----------------------------
ALTER TABLE "public"."anuncio_comentario" ADD CONSTRAINT "anuncio_comentario_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table asistencia
-- ----------------------------
CREATE INDEX "idx_asistencia_fecha" ON "public"."asistencia" USING btree (
  "curso_docente_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "fecha" "pg_catalog"."date_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table asistencia
-- ----------------------------
ALTER TABLE "public"."asistencia" ADD CONSTRAINT "asistencia_alumno_id_curso_docente_id_fecha_key" UNIQUE ("alumno_id", "curso_docente_id", "fecha");

-- ----------------------------
-- Primary Key structure for table asistencia
-- ----------------------------
ALTER TABLE "public"."asistencia" ADD CONSTRAINT "asistencia_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table aula
-- ----------------------------
CREATE INDEX "idx_aula_colegio_anio" ON "public"."aula" USING btree (
  "colegio_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "year" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table aula
-- ----------------------------
ALTER TABLE "public"."aula" ADD CONSTRAINT "aula_colegio_id_grado_id_seccion_id_year_key" UNIQUE ("colegio_id", "grado_id", "seccion_id", "year");

-- ----------------------------
-- Primary Key structure for table aula
-- ----------------------------
ALTER TABLE "public"."aula" ADD CONSTRAINT "aula_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table bloque_horario
-- ----------------------------
ALTER TABLE "public"."bloque_horario" ADD CONSTRAINT "bloque_horario_colegio_id_hora_inicio_hora_fin_key" UNIQUE ("colegio_id", "hora_inicio", "hora_fin");

-- ----------------------------
-- Primary Key structure for table bloque_horario
-- ----------------------------
ALTER TABLE "public"."bloque_horario" ADD CONSTRAINT "bloque_horario_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table colegio
-- ----------------------------
ALTER TABLE "public"."colegio" ADD CONSTRAINT "colegio_ruc_key" UNIQUE ("ruc");
ALTER TABLE "public"."colegio" ADD CONSTRAINT "colegio_dominio_key" UNIQUE ("dominio");

-- ----------------------------
-- Primary Key structure for table colegio
-- ----------------------------
ALTER TABLE "public"."colegio" ADD CONSTRAINT "colegio_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table curso
-- ----------------------------
CREATE INDEX "idx_curso_colegio" ON "public"."curso" USING btree (
  "colegio_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table curso
-- ----------------------------
ALTER TABLE "public"."curso" ADD CONSTRAINT "curso_colegio_id_nombre_key" UNIQUE ("colegio_id", "nombre");

-- ----------------------------
-- Primary Key structure for table curso
-- ----------------------------
ALTER TABLE "public"."curso" ADD CONSTRAINT "curso_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table curso_docente
-- ----------------------------
CREATE INDEX "idx_curso_docente_aula" ON "public"."curso_docente" USING btree (
  "aula_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_curso_docente_docente" ON "public"."curso_docente" USING btree (
  "docente_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table curso_docente
-- ----------------------------
ALTER TABLE "public"."curso_docente" ADD CONSTRAINT "curso_docente_curso_id_docente_id_aula_id_key" UNIQUE ("curso_id", "docente_id", "aula_id");

-- ----------------------------
-- Primary Key structure for table curso_docente
-- ----------------------------
ALTER TABLE "public"."curso_docente" ADD CONSTRAINT "curso_docente_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table docente
-- ----------------------------
ALTER TABLE "public"."docente" ADD CONSTRAINT "docente_persona_id_key" UNIQUE ("persona_id");

-- ----------------------------
-- Primary Key structure for table docente
-- ----------------------------
ALTER TABLE "public"."docente" ADD CONSTRAINT "docente_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table entrega
-- ----------------------------
CREATE INDEX "idx_entrega_tarea" ON "public"."entrega" USING btree (
  "tarea_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "alumno_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table entrega
-- ----------------------------
ALTER TABLE "public"."entrega" ADD CONSTRAINT "entrega_tarea_id_alumno_id_key" UNIQUE ("tarea_id", "alumno_id");

-- ----------------------------
-- Primary Key structure for table entrega
-- ----------------------------
ALTER TABLE "public"."entrega" ADD CONSTRAINT "entrega_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table evaluacion
-- ----------------------------
ALTER TABLE "public"."evaluacion" ADD CONSTRAINT "evaluacion_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table grado
-- ----------------------------
CREATE INDEX "idx_grado_colegio" ON "public"."grado" USING btree (
  "colegio_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table grado
-- ----------------------------
ALTER TABLE "public"."grado" ADD CONSTRAINT "grado_colegio_id_nombre_key" UNIQUE ("colegio_id", "nombre");

-- ----------------------------
-- Primary Key structure for table grado
-- ----------------------------
ALTER TABLE "public"."grado" ADD CONSTRAINT "grado_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table material
-- ----------------------------
CREATE INDEX "idx_material_curso" ON "public"."material" USING btree (
  "curso_docente_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table material
-- ----------------------------
ALTER TABLE "public"."material" ADD CONSTRAINT "material_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table matricula
-- ----------------------------
CREATE INDEX "idx_matricula_alumno" ON "public"."matricula" USING btree (
  "alumno_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_matricula_aula" ON "public"."matricula" USING btree (
  "aula_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "estado" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table matricula
-- ----------------------------
ALTER TABLE "public"."matricula" ADD CONSTRAINT "matricula_alumno_id_aula_id_key" UNIQUE ("alumno_id", "aula_id");

-- ----------------------------
-- Primary Key structure for table matricula
-- ----------------------------
ALTER TABLE "public"."matricula" ADD CONSTRAINT "matricula_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table mensaje
-- ----------------------------
ALTER TABLE "public"."mensaje" ADD CONSTRAINT "mensaje_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table mensaje_destinatario
-- ----------------------------
ALTER TABLE "public"."mensaje_destinatario" ADD CONSTRAINT "mensaje_destinatario_pkey" PRIMARY KEY ("mensaje_id", "usuario_id");

-- ----------------------------
-- Indexes structure for table nota
-- ----------------------------
CREATE INDEX "idx_nota_evaluacion" ON "public"."nota" USING btree (
  "evaluacion_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "alumno_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table nota
-- ----------------------------
ALTER TABLE "public"."nota" ADD CONSTRAINT "nota_evaluacion_id_alumno_id_key" UNIQUE ("evaluacion_id", "alumno_id");

-- ----------------------------
-- Primary Key structure for table nota
-- ----------------------------
ALTER TABLE "public"."nota" ADD CONSTRAINT "nota_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table padre
-- ----------------------------
ALTER TABLE "public"."padre" ADD CONSTRAINT "padre_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pago
-- ----------------------------
ALTER TABLE "public"."pago" ADD CONSTRAINT "pago_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table pension
-- ----------------------------
CREATE INDEX "idx_pension_alumno_estado" ON "public"."pension" USING btree (
  "alumno_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "estado_pension" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table pension
-- ----------------------------
ALTER TABLE "public"."pension" ADD CONSTRAINT "pension_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table persona
-- ----------------------------
CREATE INDEX "idx_persona_colegio" ON "public"."persona" USING btree (
  "colegio_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_persona_colegio_dni" ON "public"."persona" USING btree (
  "colegio_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "dni" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table persona
-- ----------------------------
ALTER TABLE "public"."persona" ADD CONSTRAINT "persona_colegio_id_dni_key" UNIQUE ("colegio_id", "dni");

-- ----------------------------
-- Primary Key structure for table persona
-- ----------------------------
ALTER TABLE "public"."persona" ADD CONSTRAINT "persona_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table rol
-- ----------------------------
ALTER TABLE "public"."rol" ADD CONSTRAINT "rol_nombre_key" UNIQUE ("nombre");

-- ----------------------------
-- Primary Key structure for table rol
-- ----------------------------
ALTER TABLE "public"."rol" ADD CONSTRAINT "rol_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table seccion
-- ----------------------------
CREATE INDEX "idx_seccion_colegio" ON "public"."seccion" USING btree (
  "colegio_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table seccion
-- ----------------------------
ALTER TABLE "public"."seccion" ADD CONSTRAINT "seccion_colegio_id_nombre_key" UNIQUE ("colegio_id", "nombre");

-- ----------------------------
-- Primary Key structure for table seccion
-- ----------------------------
ALTER TABLE "public"."seccion" ADD CONSTRAINT "seccion_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table sesion_horario
-- ----------------------------
ALTER TABLE "public"."sesion_horario" ADD CONSTRAINT "sesion_horario_curso_docente_id_dia_semana_bloque_id_year_key" UNIQUE ("curso_docente_id", "dia_semana", "bloque_id", "year");
ALTER TABLE "public"."sesion_horario" ADD CONSTRAINT "sesion_horario_aula_id_dia_semana_bloque_id_year_key" UNIQUE ("aula_id", "dia_semana", "bloque_id", "year");

-- ----------------------------
-- Primary Key structure for table sesion_horario
-- ----------------------------
ALTER TABLE "public"."sesion_horario" ADD CONSTRAINT "sesion_horario_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table tarea
-- ----------------------------
CREATE INDEX "idx_tarea_curso_docente" ON "public"."tarea" USING btree (
  "curso_docente_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "fecha_entrega" "pg_catalog"."date_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table tarea
-- ----------------------------
ALTER TABLE "public"."tarea" ADD CONSTRAINT "tarea_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table usuario
-- ----------------------------
CREATE INDEX "idx_usuario_colegio" ON "public"."usuario" USING btree (
  "colegio_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "idx_usuario_colegio_email" ON "public"."usuario" USING btree (
  "colegio_id" "pg_catalog"."int4_ops" ASC NULLS LAST,
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table usuario
-- ----------------------------
ALTER TABLE "public"."usuario" ADD CONSTRAINT "usuario_colegio_id_email_key_codigo_user" UNIQUE ("colegio_id", "email", "codigo_usuario");

-- ----------------------------
-- Primary Key structure for table usuario
-- ----------------------------
ALTER TABLE "public"."usuario" ADD CONSTRAINT "usuario_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table usuario_rol
-- ----------------------------
ALTER TABLE "public"."usuario_rol" ADD CONSTRAINT "usuario_rol_usuario_id_rol_id_key" UNIQUE ("usuario_id", "rol_id");

-- ----------------------------
-- Primary Key structure for table usuario_rol
-- ----------------------------
ALTER TABLE "public"."usuario_rol" ADD CONSTRAINT "usuario_rol_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table alumno
-- ----------------------------
ALTER TABLE "public"."alumno" ADD CONSTRAINT "alumno_persona_id_fkey" FOREIGN KEY ("persona_id") REFERENCES "public"."persona" ("id") ON DELETE RESTRICT ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table alumno_padre
-- ----------------------------
ALTER TABLE "public"."alumno_padre" ADD CONSTRAINT "alumno_padre_alumno_id_fkey" FOREIGN KEY ("alumno_id") REFERENCES "public"."alumno" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."alumno_padre" ADD CONSTRAINT "alumno_padre_padre_id_fkey" FOREIGN KEY ("padre_id") REFERENCES "public"."padre" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table anuncio
-- ----------------------------
ALTER TABLE "public"."anuncio" ADD CONSTRAINT "anuncio_autor_id_fkey" FOREIGN KEY ("autor_id") REFERENCES "public"."usuario" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."anuncio" ADD CONSTRAINT "anuncio_curso_docente_id_fkey" FOREIGN KEY ("curso_docente_id") REFERENCES "public"."curso_docente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table anuncio_comentario
-- ----------------------------
ALTER TABLE "public"."anuncio_comentario" ADD CONSTRAINT "anuncio_comentario_anuncio_id_fkey" FOREIGN KEY ("anuncio_id") REFERENCES "public"."anuncio" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."anuncio_comentario" ADD CONSTRAINT "anuncio_comentario_autor_id_fkey" FOREIGN KEY ("autor_id") REFERENCES "public"."usuario" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table asistencia
-- ----------------------------
ALTER TABLE "public"."asistencia" ADD CONSTRAINT "asistencia_alumno_id_fkey" FOREIGN KEY ("alumno_id") REFERENCES "public"."alumno" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."asistencia" ADD CONSTRAINT "asistencia_curso_docente_id_fkey" FOREIGN KEY ("curso_docente_id") REFERENCES "public"."curso_docente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table aula
-- ----------------------------
ALTER TABLE "public"."aula" ADD CONSTRAINT "aula_colegio_id_fkey" FOREIGN KEY ("colegio_id") REFERENCES "public"."colegio" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."aula" ADD CONSTRAINT "aula_grado_id_fkey" FOREIGN KEY ("grado_id") REFERENCES "public"."grado" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."aula" ADD CONSTRAINT "aula_seccion_id_fkey" FOREIGN KEY ("seccion_id") REFERENCES "public"."seccion" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table bloque_horario
-- ----------------------------
ALTER TABLE "public"."bloque_horario" ADD CONSTRAINT "bloque_horario_colegio_id_fkey" FOREIGN KEY ("colegio_id") REFERENCES "public"."colegio" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table curso
-- ----------------------------
ALTER TABLE "public"."curso" ADD CONSTRAINT "curso_colegio_id_fkey" FOREIGN KEY ("colegio_id") REFERENCES "public"."colegio" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table curso_docente
-- ----------------------------
ALTER TABLE "public"."curso_docente" ADD CONSTRAINT "curso_docente_aula_id_fkey" FOREIGN KEY ("aula_id") REFERENCES "public"."aula" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."curso_docente" ADD CONSTRAINT "curso_docente_curso_id_fkey" FOREIGN KEY ("curso_id") REFERENCES "public"."curso" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."curso_docente" ADD CONSTRAINT "curso_docente_docente_id_fkey" FOREIGN KEY ("docente_id") REFERENCES "public"."docente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table docente
-- ----------------------------
ALTER TABLE "public"."docente" ADD CONSTRAINT "docente_persona_id_fkey" FOREIGN KEY ("persona_id") REFERENCES "public"."persona" ("id") ON DELETE RESTRICT ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table entrega
-- ----------------------------
ALTER TABLE "public"."entrega" ADD CONSTRAINT "entrega_alumno_id_fkey" FOREIGN KEY ("alumno_id") REFERENCES "public"."alumno" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."entrega" ADD CONSTRAINT "entrega_tarea_id_fkey" FOREIGN KEY ("tarea_id") REFERENCES "public"."tarea" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table evaluacion
-- ----------------------------
ALTER TABLE "public"."evaluacion" ADD CONSTRAINT "evaluacion_curso_docente_id_fkey" FOREIGN KEY ("curso_docente_id") REFERENCES "public"."curso_docente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table grado
-- ----------------------------
ALTER TABLE "public"."grado" ADD CONSTRAINT "grado_colegio_id_fkey" FOREIGN KEY ("colegio_id") REFERENCES "public"."colegio" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table material
-- ----------------------------
ALTER TABLE "public"."material" ADD CONSTRAINT "material_curso_docente_id_fkey" FOREIGN KEY ("curso_docente_id") REFERENCES "public"."curso_docente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table matricula
-- ----------------------------
ALTER TABLE "public"."matricula" ADD CONSTRAINT "matricula_alumno_id_fkey" FOREIGN KEY ("alumno_id") REFERENCES "public"."alumno" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."matricula" ADD CONSTRAINT "matricula_aula_id_fkey" FOREIGN KEY ("aula_id") REFERENCES "public"."aula" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table mensaje
-- ----------------------------
ALTER TABLE "public"."mensaje" ADD CONSTRAINT "mensaje_emisor_id_fkey" FOREIGN KEY ("emisor_id") REFERENCES "public"."usuario" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table mensaje_destinatario
-- ----------------------------
ALTER TABLE "public"."mensaje_destinatario" ADD CONSTRAINT "mensaje_destinatario_mensaje_id_fkey" FOREIGN KEY ("mensaje_id") REFERENCES "public"."mensaje" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."mensaje_destinatario" ADD CONSTRAINT "mensaje_destinatario_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "public"."usuario" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table nota
-- ----------------------------
ALTER TABLE "public"."nota" ADD CONSTRAINT "nota_alumno_id_fkey" FOREIGN KEY ("alumno_id") REFERENCES "public"."alumno" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."nota" ADD CONSTRAINT "nota_evaluacion_id_fkey" FOREIGN KEY ("evaluacion_id") REFERENCES "public"."evaluacion" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table padre
-- ----------------------------
ALTER TABLE "public"."padre" ADD CONSTRAINT "padre_persona_id_fkey" FOREIGN KEY ("persona_id") REFERENCES "public"."persona" ("id") ON DELETE RESTRICT ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table pago
-- ----------------------------
ALTER TABLE "public"."pago" ADD CONSTRAINT "pago_pension_id_fkey" FOREIGN KEY ("pension_id") REFERENCES "public"."pension" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table pension
-- ----------------------------
ALTER TABLE "public"."pension" ADD CONSTRAINT "pension_alumno_id_fkey" FOREIGN KEY ("alumno_id") REFERENCES "public"."alumno" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table persona
-- ----------------------------
ALTER TABLE "public"."persona" ADD CONSTRAINT "persona_colegio_id_fkey" FOREIGN KEY ("colegio_id") REFERENCES "public"."colegio" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table seccion
-- ----------------------------
ALTER TABLE "public"."seccion" ADD CONSTRAINT "seccion_colegio_id_fkey" FOREIGN KEY ("colegio_id") REFERENCES "public"."colegio" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table sesion_horario
-- ----------------------------
ALTER TABLE "public"."sesion_horario" ADD CONSTRAINT "sesion_horario_aula_id_fkey" FOREIGN KEY ("aula_id") REFERENCES "public"."aula" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."sesion_horario" ADD CONSTRAINT "sesion_horario_bloque_id_fkey" FOREIGN KEY ("bloque_id") REFERENCES "public"."bloque_horario" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."sesion_horario" ADD CONSTRAINT "sesion_horario_colegio_id_fkey" FOREIGN KEY ("colegio_id") REFERENCES "public"."colegio" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."sesion_horario" ADD CONSTRAINT "sesion_horario_curso_docente_id_fkey" FOREIGN KEY ("curso_docente_id") REFERENCES "public"."curso_docente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table tarea
-- ----------------------------
ALTER TABLE "public"."tarea" ADD CONSTRAINT "tarea_curso_docente_id_fkey" FOREIGN KEY ("curso_docente_id") REFERENCES "public"."curso_docente" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table usuario
-- ----------------------------
ALTER TABLE "public"."usuario" ADD CONSTRAINT "usuario_colegio_id_fkey" FOREIGN KEY ("colegio_id") REFERENCES "public"."colegio" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."usuario" ADD CONSTRAINT "usuario_persona_id_fkey" FOREIGN KEY ("persona_id") REFERENCES "public"."persona" ("id") ON DELETE RESTRICT ON UPDATE RESTRICT;

-- ----------------------------
-- Foreign Keys structure for table usuario_rol
-- ----------------------------
ALTER TABLE "public"."usuario_rol" ADD CONSTRAINT "usuario_rol_rol_id_fkey" FOREIGN KEY ("rol_id") REFERENCES "public"."rol" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."usuario_rol" ADD CONSTRAINT "usuario_rol_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "public"."usuario" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

