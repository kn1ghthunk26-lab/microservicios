# PostgreSQL para ms-catalogo-service

Datos que espera el proyecto: host localhost, puerto 5432, usuario postgres, clave 123456, base ms_catalogo.

## Opcion A: PostgreSQL instalado en Windows
1. Descargar el instalador desde https://www.postgresql.org/download/windows/
2. Durante la instalacion: clave de postgres = 123456, puerto = 5432. Dejar pgAdmin marcado.
3. Ejecutar crear-bd.bat (doble clic).

## Opcion B: Docker
docker compose up -d
(crea el servidor y la base ms_catalogo; la tabla la crea Hibernate al arrancar el catalogo)

## Opcion C: solo pgAdmin
Clic derecho en Databases > Create > Database > nombre: ms_catalogo.

## Verificar
psql -U postgres -h localhost -p 5432 -c "\l"
