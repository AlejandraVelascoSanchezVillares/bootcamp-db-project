-- Reparte los CSV (tablas csv_*, creadas por insertar_datos.sql) en las tablas de crear_tablas.sql.
-- Orden en pgAdmin: crear_tablas.sql -> insertar_datos.sql -> repartir_datos.sql

BEGIN;

-- Tablas de trabajo (TEMP ... ON COMMIT DROP: desaparecen solas al terminar)

-- Notas en formato largo: una fila por alumno y proyecto
CREATE TEMP TABLE notas ON COMMIT DROP AS
SELECT c.nombre, c.email, c.promoción AS mes, to_date(c.fecha_comienzo, 'DD/MM/YYYY') AS fecha,
       c.campus, 'DS' AS vertical, p.proyecto, p.resultado
FROM (SELECT * FROM csv_clase_1 UNION ALL SELECT * FROM csv_clase_2) c
CROSS JOIN LATERAL (VALUES ('HLF', c.proyecto_hlf), ('EDA', c.proyecto_eda), ('BBDD', c.proyecto_bbdd),
                           ('ML', c.proyecto_ml), ('Deployment', c.proyecto_deployment)) p(proyecto, resultado)
UNION ALL
SELECT c.nombre, c.email, c.promoción, to_date(c.fecha_comienzo, 'DD/MM/YYYY'),
       c.campus, 'FS', p.proyecto, p.resultado
FROM (SELECT * FROM csv_clase_3 UNION ALL SELECT * FROM csv_clase_4) c
CROSS JOIN LATERAL (VALUES ('WebDev', c.proyecto_webdev), ('FrontEnd', c.proyecto_frontend), ('Backend', c.proyecto_backend),
                           ('React', c.proyecto_react), ('FullStack', c.proyecto_fullsatck)) p(proyecto, resultado);

-- Claustro con fecha: el CSV solo trae el mes, la fecha se toma de los alumnos de ese mes
CREATE TEMP TABLE claustro ON COMMIT DROP AS
SELECT cl.nombre, cl.rol, cl.vertical, cl.campus, cl.modalidad, f.fecha
FROM csv_claustro cl
LEFT JOIN (SELECT DISTINCT mes, fecha FROM notas) f ON f.mes = cl.promocion;

-- Tablas sin claves foráneas
INSERT INTO campus (nombre_campus)
SELECT campus FROM notas UNION SELECT campus FROM claustro;

INSERT INTO verticales (nombre_vertical)
SELECT vertical FROM notas UNION SELECT vertical FROM claustro;

INSERT INTO modalidad (nombre_modalidad)
SELECT DISTINCT modalidad FROM claustro;

INSERT INTO alumnos (nombre_alumno, email)
SELECT DISTINCT nombre, email FROM notas;

INSERT INTO profesores (nombre_profesor)
SELECT DISTINCT nombre FROM claustro;

-- Promociones de alumnos y de profesores: el FULL OUTER JOIN guarda también
-- las que solo aparecen en un lado (hay dos que solo están en el claustro)
INSERT INTO promociones (fecha_comienzo, id_campus, id_vertical)
SELECT p.fecha, c.id_campus, v.id_vertical
FROM (SELECT fecha, campus, vertical
      FROM (SELECT DISTINCT fecha, campus, vertical FROM notas) a
      FULL OUTER JOIN (SELECT DISTINCT fecha, campus, vertical FROM claustro) b USING (fecha, campus, vertical)) p
INNER JOIN campus c     ON c.nombre_campus = p.campus
INNER JOIN verticales v ON v.nombre_vertical = p.vertical;

INSERT INTO proyectos (nombre_proyecto, id_vertical)
SELECT DISTINCT n.proyecto, v.id_vertical
FROM notas n
INNER JOIN verticales v ON v.nombre_vertical = n.vertical;

-- Para buscar el id de una promoción por fecha + campus + vertical
CREATE TEMP TABLE promo ON COMMIT DROP AS
SELECT p.id_promocion, p.id_vertical, p.fecha_comienzo AS fecha, c.nombre_campus AS campus, v.nombre_vertical AS vertical
FROM promociones p
INNER JOIN campus c     USING (id_campus)
INNER JOIN verticales v USING (id_vertical);

-- Tablas que unen las anteriores
INSERT INTO matriculas (id_alumno, id_promocion)
SELECT DISTINCT a.id_alumno, pr.id_promocion
FROM notas n
INNER JOIN alumnos a ON a.email = n.email
INNER JOIN promo pr  USING (fecha, campus, vertical);

INSERT INTO alumno_proyecto (id_matricula, id_proyecto, resultado)
SELECT m.id_matricula, py.id_proyecto, n.resultado
FROM notas n
INNER JOIN alumnos a    ON a.email = n.email
INNER JOIN promo pr     USING (fecha, campus, vertical)
INNER JOIN matriculas m ON m.id_alumno = a.id_alumno AND m.id_promocion = pr.id_promocion
INNER JOIN proyectos py ON py.nombre_proyecto = n.proyecto AND py.id_vertical = pr.id_vertical;

INSERT INTO profesor_promocion (id_profesor, id_promocion, id_modalidad, rol)
SELECT pf.id_profesor, pr.id_promocion, mo.id_modalidad, cl.rol
FROM claustro cl
INNER JOIN profesores pf ON pf.nombre_profesor = cl.nombre
INNER JOIN promo pr      USING (fecha, campus, vertical)
INNER JOIN modalidad mo  ON mo.nombre_modalidad = cl.modalidad;

-- Ya no hacen falta las tablas con los CSV tal cual
DROP TABLE csv_clase_1, csv_clase_2, csv_clase_3, csv_clase_4, csv_claustro;

COMMIT;
