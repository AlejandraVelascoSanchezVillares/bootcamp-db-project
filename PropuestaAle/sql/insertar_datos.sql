BEGIN;

DROP TABLE IF EXISTS csv_clase_1;
CREATE TABLE csv_clase_1 (nombre text, email text, promoción text, fecha_comienzo text, campus text, proyecto_hlf text, proyecto_eda text, proyecto_bbdd text, proyecto_ml text, proyecto_deployment text);

INSERT INTO csv_clase_1 (nombre, email, promoción, fecha_comienzo, campus, proyecto_hlf, proyecto_eda, proyecto_bbdd, proyecto_ml, proyecto_deployment) VALUES
  ('Jafet Casals', 'Jafet_Casals@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
  ('Jorge Manzanares', 'Jorge_Manzanares@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
  ('Onofre Adadia', 'Onofre_Adadia@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'Apto', 'Apto', 'No Apto', 'Apto'),
  ('Merche Prada', 'Merche_Prada@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'No Apto', 'No Apto', 'Apto', 'No Apto'),
  ('Pilar Abella', 'Pilar_Abella@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
  ('Leoncio Tena', 'Leoncio_Tena@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Odalys Torrijos', 'Odalys_Torrijos@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'No Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Eduardo Caparrós', 'Eduardo_Caparrós@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'No Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Ignacio Goicoechea', 'Ignacio_Goicoechea@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'Apto', 'Apto', 'No Apto', 'Apto'),
  ('Clementina Santos', 'Clementina_Santos@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
  ('Daniela Falcó', 'Daniela_Falcó@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Abraham Vélez', 'Abraham_Vélez@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'No Apto', 'No Apto', 'Apto', 'Apto'),
  ('Maximiliano Menéndez', 'Maximiliano_Menéndez@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
  ('Anita Heredia', 'Anita_Heredia@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Eli Casas', 'Eli_Casas@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto');

DROP TABLE IF EXISTS csv_clase_2;
CREATE TABLE csv_clase_2 (nombre text, email text, promoción text, fecha_comienzo text, campus text, proyecto_hlf text, proyecto_eda text, proyecto_bbdd text, proyecto_ml text, proyecto_deployment text);

INSERT INTO csv_clase_2 (nombre, email, promoción, fecha_comienzo, campus, proyecto_hlf, proyecto_eda, proyecto_bbdd, proyecto_ml, proyecto_deployment) VALUES
  ('Guillermo Borrego', 'Guillermo_Borrego@gmail.com', 'Febrero', '12/02/2024', 'Madrid', 'Apto', 'No Apto', 'No Apto', 'Apto', 'No Apto'),
  ('Sergio Aguirre', 'Sergio_Aguirre@gmail.com', 'Febrero', '12/02/2024', 'Madrid', 'Apto', 'No Apto', 'Apto', 'Apto', 'No Apto'),
  ('Carlito Carrión', 'Carlito_Carrión@gmail.com', 'Febrero', '12/02/2024', 'Madrid', 'Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
  ('Haydée Figueroa', 'Haydée_Figueroa@gmail.com', 'Febrero', '12/02/2024', 'Madrid', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Chita Mancebo', 'Chita_Mancebo@gmail.com', 'Febrero', '12/02/2024', 'Madrid', 'No Apto', 'Apto', 'No Apto', 'Apto', 'Apto'),
  ('Joaquina Asensio', 'Joaquina_Asensio@gmail.com', 'Febrero', '12/02/2024', 'Madrid', 'No Apto', 'No Apto', 'Apto', 'Apto', 'Apto'),
  ('Cristian Sarabia', 'Cristian_Sarabia@gmail.com', 'Febrero', '12/02/2024', 'Madrid', 'Apto', 'Apto', 'No Apto', 'Apto', 'Apto'),
  ('Isabel Ibáñez', 'Isabel_Ibáñez@gmail.com', 'Febrero', '12/02/2024', 'Madrid', 'No Apto', 'Apto', 'No Apto', 'Apto', 'Apto'),
  ('Desiderio Jordá', 'Desiderio_Jordá@gmail.com', 'Febrero', '12/02/2024', 'Madrid', 'No Apto', 'Apto', 'No Apto', 'No Apto', 'Apto'),
  ('Rosalina Llanos', 'Rosalina_Llanos@gmail.com', 'Febrero', '12/02/2024', 'Madrid', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto');

DROP TABLE IF EXISTS csv_clase_3;
CREATE TABLE csv_clase_3 (nombre text, email text, promoción text, fecha_comienzo text, campus text, proyecto_webdev text, proyecto_frontend text, proyecto_backend text, proyecto_react text, proyecto_fullsatck text);

INSERT INTO csv_clase_3 (nombre, email, promoción, fecha_comienzo, campus, proyecto_webdev, proyecto_frontend, proyecto_backend, proyecto_react, proyecto_fullsatck) VALUES
  ('Amor Larrañaga', 'Amor_Larrañaga@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'Apto', 'Apto', 'Apto', 'No Apto'),
  ('Teodoro Alberola', 'Teodoro_Alberola@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'No Apto', 'No Apto', 'Apto', 'No Apto', 'Apto'),
  ('Cleto Plana', 'Cleto_Plana@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'No Apto', 'Apto', 'No Apto', 'Apto'),
  ('Aitana Sebastián', 'Aitana_Sebastián@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'No Apto', 'Apto', 'No Apto', 'Apto'),
  ('Dolores Valbuena', 'Dolores_Valbuena@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'Apto', 'Apto', 'Apto', 'No Apto'),
  ('Julie Ferrer', 'Julie_Ferrer@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'No Apto', 'No Apto', 'No Apto', 'Apto', 'No Apto'),
  ('Mireia Cabañas', 'Mireia_Cabañas@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'No Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Flavia Amador', 'Flavia_Amador@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'Apto', 'No Apto', 'Apto', 'Apto'),
  ('Albino Macias', 'Albino_Macias@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'No Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Ester Sánchez', 'Ester_Sánchez@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'No Apto', 'Apto', 'Apto', 'No Apto', 'Apto'),
  ('Luis Miguel Galvez', 'Luis_Miguel_Galvez@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'No Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Loida Arellano', 'Loida_Arellano@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Heraclio Duque', 'Heraclio_Duque@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'Apto', 'No Apto', 'No Apto', 'No Apto'),
  ('Herberto Figueras', 'Herberto_Figueras@gmail.com', 'Septiembre', '18/09/2023', 'Madrid', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto');

DROP TABLE IF EXISTS csv_clase_4;
CREATE TABLE csv_clase_4 (nombre text, email text, promoción text, fecha_comienzo text, campus text, proyecto_webdev text, proyecto_frontend text, proyecto_backend text, proyecto_react text, proyecto_fullsatck text);

INSERT INTO csv_clase_4 (nombre, email, promoción, fecha_comienzo, campus, proyecto_webdev, proyecto_frontend, proyecto_backend, proyecto_react, proyecto_fullsatck) VALUES
  ('Teresa Laguna', 'Teresa_Laguna@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Estrella Murillo', 'Estrella_Murillo@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'Apto', 'Apto', 'No Apto', 'Apto', 'Apto'),
  ('Ernesto Uriarte', 'Ernesto_Uriarte@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Daniela Guitart', 'Daniela_Guitart@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'Apto', 'No Apto', 'No Apto', 'Apto', 'Apto'),
  ('Timoteo Trillo', 'Timoteo_Trillo@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'No Apto', 'Apto', 'Apto', 'Apto', 'No Apto'),
  ('Ricarda Tovar', 'Ricarda_Tovar@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'Apto', 'Apto', 'Apto', 'Apto', 'Apto'),
  ('Alejandra Vilaplana', 'Alejandra_Vilaplana@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'No Apto', 'No Apto', 'No Apto', 'Apto', 'Apto'),
  ('Daniel Rosselló', 'Daniel_Rosselló@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'No Apto', 'No Apto', 'Apto', 'No Apto', 'No Apto'),
  ('Rita Olivares', 'Rita_Olivares@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'No Apto', 'No Apto', 'No Apto', 'Apto', 'Apto'),
  ('Cleto Montes', 'Cleto_Montes@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'Apto', 'Apto', 'No Apto', 'Apto', 'Apto'),
  ('Marino Castilla', 'Marino_Castilla@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'No Apto', 'No Apto', 'Apto', 'No Apto', 'No Apto'),
  ('Estefanía Valcárcel', 'Estefanía_Valcárcel@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'Apto', 'Apto', 'No Apto', 'No Apto', 'Apto'),
  ('Noemí Vilanova', 'Noemí_Vilanova@gmail.com', 'Febrero', '12/02/2024', 'Valencia', 'Apto', 'No Apto', 'No Apto', 'Apto', 'Apto');

DROP TABLE IF EXISTS csv_claustro;
CREATE TABLE csv_claustro (nombre text, rol text, vertical text, promocion text, campus text, modalidad text);

INSERT INTO csv_claustro (nombre, rol, vertical, promocion, campus, modalidad) VALUES
  ('Noa Yáñez', 'TA', 'DS', 'Septiembre', 'Madrid', 'Presencial'),
  ('Saturnina Benitez', 'TA', 'DS', 'Septiembre', 'Madrid', 'Presencial'),
  ('Anna Feliu', 'TA', 'FS', 'Septiembre', 'Madrid', 'Presencial'),
  ('Rosalva Ayuso', 'TA', 'FS', 'Septiembre', 'Valencia', 'Presencial'),
  ('Ana Sofía Ferrer', 'TA', 'FS', 'Febrero', 'Valencia', 'Presencial'),
  ('Angélica Corral', 'TA', 'FS', 'Febrero', 'Madrid', 'Presencial'),
  ('Ariel Lledó', 'TA', 'DS', 'Septiembre', 'Madrid', 'Presencial'),
  ('Mario Prats', 'LI', 'FS', 'Febrero', 'Valencia', 'Online'),
  ('Luis Ángel Suárez', 'LI', 'FS', 'Septiembre', 'Madrid', 'Online'),
  ('María Dolores Diaz', 'LI', 'DS', 'Septiembre', 'Madrid', 'Online');

COMMIT;