# React-Django Template

Esta plantilla combina Django para el backend y React para el frontend. Está diseñada para ser reutilizable y escalable, facilitando el inicio de nuevos proyectos.

---

## Requisitos Previos

Asegúrate de tener instalados:

- [Python 3.12+](https://www.python.org/downloads/)
- [Node.js (LTS)](https://nodejs.org/)
- [VS Code](https://code.visualstudio.com/)
- Git (opcional)

## Abre la terminal de VS Code y ejecuta:

mkdir react-django-template
cd react-django-template

## Selecciona la carpeta react-django-template.

## Crear el entorno virtual
- Selecciona el intérprete de Python en la esquina inferior izquierda de VS Code.
- Ejecuta el comando para crear un entorno virtual:
python -m venv .venv

## Activa el entorno virtual:
.\.venv\Scripts\Activate.ps1

## Con el entorno virtual activado, instala Django:
pip install django

## Inicia un nuevo proyecto Django dentro de la carpeta backend:
django-admin startproject backend .

## Aplica las migraciones iniciales:
python backend/manage.py migrate

## Verifica que el servidor funciona:
python backend/manage.py runserver

## Crea una carpeta para React:
mkdir frontend
cd frontend

## Inicializa un proyecto React manualmente:
npm init -y
npm install react@18 react-dom@18 react-scripts@5.0.1

## Crea las carpetas y archivos básicos:
- public/index.html:
- src/index.js:
- src/App.js:
- src/styles/index.css

## Inicia el servidor React:
npm start

## Instalar django-cors-headers:
pip install django-cors-headers

## Configura corsheaders en el proyecto Django:

## En settings.py, añade a INSTALLED_APPS:
INSTALLED_APPS = [
    ...,
    'corsheaders',
]

## Añade el middleware de CORS al principio de MIDDLEWARE:
MIDDLEWARE = [
    'corsheaders.middleware.CorsMiddleware',
    ...,
]

## Configura los orígenes permitidos en settings.py:
CORS_ALLOWED_ORIGINS = [
    'http://localhost:3000',
    'http://127.0.0.1:3000',
]

## Configuración Inicial de la Base de Datos

## Para configurar la base de datos PostgreSQL, ejecuta el siguiente script desde la raíz del proyecto:
init_db.bat
