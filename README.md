# Project Tracker 🚀

Sistema de gestión de proyectos desarrollado con Ruby on Rails 7 y PostgreSQL.
Permite crear proyectos, asignar tareas, hacer seguimiento de estados y prioridades.

## Características

- ✅ CRUD completo de Proyectos y Tareas
- ✅ Relaciones 1:N (Proyecto tiene muchas Tareas)
- ✅ Estados y prioridades con Enums
- ✅ Barra de progreso visual por proyecto
- ✅ Interfaz responsive con Bootstrap 5
- ✅ Base de datos PostgreSQL

## Requisitos

- Ruby 3.2.2
- Rails 7.1+
- PostgreSQL 14+
- Node.js y Yarn

## Instalación Local

```bash
# Clonar repositorio
git clone https://github.com/oamorales/project_tracker.git
cd project_tracker

# Instalar dependencias
bundle install
yarn install

# Configurar base de datos (crear usuario postgres primero)
rails db:create db:migrate db:seed

# Iniciar servidor
rails server
```

Visita `http://localhost:3000`

## Estructura del Proyecto

- **Projects**: Gestión de proyectos con fecha límite y estado
- **Tasks**: Tareas asignadas a proyectos con prioridades (baja/media/alta)
- **Asociaciones**: Dependencia de destrucción (borrar proyecto borra sus tareas)

## Screenshots

[Por agregar]

## Licencia

MIT