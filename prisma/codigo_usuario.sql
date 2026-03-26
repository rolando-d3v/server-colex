-- tabla para generar codigo de usuario
CREATE TABLE codigo_usuario_seq (
    year INT PRIMARY KEY,
    secuencia INT NOT NULL
);


-- funcion para generar codigo de usuario
CREATE OR REPLACE FUNCTION generar_user_code()
RETURNS VARCHAR AS $$
DECLARE
    v_year   INT;
    v_seq    INT;
    v_code   VARCHAR;
BEGIN
    -- Obtener el año actual
    -- ojo prueba nomas estatico => v_year := EXTRACT(YEAR FROM DATE '2026-01-01')::INT;
    v_year := EXTRACT(YEAR FROM NOW())::INT;

    -- Insertar si no existe el año, o incrementar si ya existe
    INSERT INTO codigo_usuario_seq (year, secuencia)
    VALUES (v_year, 1)
    ON CONFLICT (year) DO UPDATE
        SET secuencia = codigo_usuario_seq.secuencia + 1
    RETURNING secuencia INTO v_seq;

    -- Generar el código: c + año + secuencial
    -- Si secuencia <= 9999 usa 4 dígitos con ceros a la izquierda
    -- Si supera 9999 simplemente concatena sin LPAD (5+ dígitos)
    IF v_seq <= 9999 THEN
        v_code := 'c' || v_year || LPAD(v_seq::TEXT, 4, '0');
    ELSE
        v_code := 'c' || v_year || v_seq::TEXT;
    END IF;

    RETURN v_code;
END;
$$ LANGUAGE plpgsql;



-- agregar default a codigo_usuario
ALTER TABLE usuario
ALTER COLUMN codigo_usuario SET DEFAULT generar_user_code();





INSERT INTO usuario (persona_id, colegio_id, email, password) VALUES 
('1272f8e1-29df-4f65-a42e-f5d2d654fcca', 1, 'landon3388@gmail.com', '123456'),
('1272f8e1-29df-4f65-a42e-f5d2d654fcca', 1, 'landon3388@gmail.com', '123456'),
('1272f8e1-29df-4f65-a42e-f5d2d654fcca', 1, 'landon3388@gmail.com', '123456');
Inicie sesión para habilitar las completaciones de IA o desactive las completaciones en línea en Configuración (DBCode > IA).