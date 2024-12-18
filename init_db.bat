@echo off

echo Iniciando la configuración de la base de datos PostgreSQL para el proyecto.

set /p DB_NAME=Introduce el nombre de la base de datos: 
set /p DB_USER=Introduce el nombre del usuario: 
set /p DB_PASSWORD=Introduce la contraseña del usuario: 

echo Creando base de datos y usuario...
psql -U postgres -c "CREATE DATABASE %DB_NAME%"
psql -U postgres -c "CREATE USER %DB_USER% WITH PASSWORD '%DB_PASSWORD%'"
psql -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE %DB_NAME% TO %DB_USER%"

echo Creando archivo .env con las credenciales...
(
echo DB_NAME=%DB_NAME%
echo DB_USER=%DB_USER%
echo DB_PASSWORD=%DB_PASSWORD%
echo DB_HOST=localhost
echo DB_PORT=5432
) > .env

echo Base de datos configurada y credenciales guardadas en .env.
