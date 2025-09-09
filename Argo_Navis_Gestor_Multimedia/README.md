# Proyecto Argo Navis Gestor Multimedia

Este documento contiene los pasos para levantar la base de datos Argo Navis con PostgreSQL y Docker Compose, pensada para almacenar y descargar archivos multimedia.

## Estructura de carpetas

- **Consultas_SQL:**  

  Scripts SQL para crear tablas y usar los datos de prueba.

- **Docker:**  

  Archivos para desplegar y configurar Docker y PostgreSQL:

  - `docker-compose.yml`
  - `.env`

- **src:**  
  Carpeta destinada al código de la aplicación (emoty).

## Iniciar la base de datos

1. **Configurar el archivo `.env`**  

En la carpeta Docker existe un archivo `.env` con:

`POSTGRES_USER=gestor_argo_navis_savide`

`POSTGRES_PASSWORD=arg123savide`

`POSTGRES_DB=argo_navis`

`DB_PORT=5432`


2. **Levantar el contenedor de Docker Compose**  

Desde la carpeta Docker, ejecuta:

`docker-compose down -v`: Para eliminar datos residuales anteriores.

`docker-compose up -d`: Para inicializar el repositorio.

3. **Conexión a la base de datos**  

Utiliza cualquier cliente PostgreSQL versión 16. Los datos son:

- Host: localhost
- Puerto: 5432
- Usuario: gestor_argo_navis_savide
- Contraseña: arg123savide
- Base de datos: argo_navis

4. **Cargar las tablas y datos**  

Ejecuta los scripts SQL ubicados en `Consultas_SQL` para inicializar la base.

## Migración de datos

El contenedor Docker para PostgreSQL tiene como objetivo principal facilitar la **migración de la base de datos**. por lo que los Scripts están destinados a crear o actualizar las tablas de la base.

## Licencia

...


---

**Notas:**  
- El archivo `.env` y `docker-compose.yml` deben estar juntos en la carpeta Docker.  
- La carpeta `src` está vacía para futuras implementaciones de código. 

