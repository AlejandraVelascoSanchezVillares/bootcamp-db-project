# Base de datos del bootcamp

```
proyecto/
├── .env                      conexión a la base de datos (no subir a GitHub)
├── .gitignore                hace que Git ignore el .env
├── data/                     CSV originales (clase_1..4, claustro)
├── sql/
│   ├── crear_tablas.sql      crea las 10 tablas vacías (¡borra las que ya existan!)
│   ├── insertar_datos.sql    los CSV tal cual, en tablas csv_* (lo genera el notebook)
│   └── repartir_datos.sql    reparte las tablas csv_* en las 10 tablas, con JOINs
└── notebooks/
    └── crear_tablas.ipynb    lee los CSV y escribe insertar_datos.sql
```

## Opción A: pgAdmin 4

1. En el panel izquierdo: tu servidor → Databases → `bootcamp_oxbz`, clic derecho → **Query Tool**.
2. Icono de la carpeta (Open File) → `sql/crear_tablas.sql` → **F5**.
3. Icono de la carpeta → `sql/insertar_datos.sql` → **F5**.
4. Icono de la carpeta → `sql/repartir_datos.sql` → **F5**.
5. Comprobar en una pestaña de Query Tool nueva: `SELECT COUNT(*) FROM alumnos;` → debe salir **52**.

## Regenerar insertar_datos.sql (notebook)

Solo necesita `pandas`; no se conecta a la base de datos. Ejecutar sus dos celdas: la primera lee cada CSV de `data/` como DataFrame y la segunda escribe sus filas tal cual en `sql/insertar_datos.sql`. Después, pgAdmin como en la opción A.

## Filas esperadas

| tabla | filas |
|---|---|
| campus | 2 |
| verticales | 2 |
| modalidad | 2 |
| promociones | 6 |
| proyectos | 10 |
| alumnos | 52 |
| profesores | 10 |
| matriculas | 52 |
| profesor_promocion | 10 |
| alumno_proyecto | 260 |

## Decisiones sobre los datos

- Rosalva Ayuso (Full Stack, Valencia, septiembre) y Angélica Corral (Full Stack, Madrid, febrero) están en promociones de las que no hay CSV de alumnos. Se han creado esas dos promociones, sin alumnos, con la fecha de las demás de ese mes (18/09/2023 y 12/02/2024).
- El proyecto "FullSatck" se guarda como "FullStack".
- Las verticales se guardan como "DS" y "FS", igual que en el CSV del claustro.
