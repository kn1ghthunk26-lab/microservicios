@echo off
REM Crea la base ms_catalogo y la tabla categoria en PostgreSQL local.
REM Si "psql" no se reconoce, cambia la ruta de abajo por la de tu version instalada.
set PATH=%PATH%;C:\Program Files\PostgreSQL\17\bin;C:\Program Files\PostgreSQL\16\bin;C:\Program Files\PostgreSQL\15\bin
set PGPASSWORD=123456
psql -U postgres -h localhost -p 5432 -f "%~dp0init.sql"
pause
