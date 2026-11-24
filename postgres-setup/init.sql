-- Ejecutar con psql (no con la ventana de consultas de pgAdmin, por los comandos \gexec y \c)
-- Crea la base ms_catalogo solo si no existe
SELECT 'CREATE DATABASE ms_catalogo'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'ms_catalogo')\gexec

\c ms_catalogo

-- Tabla (opcional: Hibernate la crea solo con ddl-auto: update)
CREATE TABLE IF NOT EXISTS categoria (
    id     SERIAL PRIMARY KEY,
    nombre VARCHAR(255)
);

-- Verificación
\l
\dt
