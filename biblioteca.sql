CREATE DATABASE biblioteca;
\c biblioteca;
CREATE TABLE libros(codigo INT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL);

CREATE TABLE editoriales(id SERIAL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL);

CREATE TABLE autores(id SERIAL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL);

CREATE TABLE lectores(id SERIAL PRIMARY KEY,
nombre VARCHAR(100) NOT NULL);

CREATE TABLE autores_libros(
libro_cod INT, autor_id INT, FOREIGN KEY(libro_cod)
REFERENCES libros(codigo), FOREIGN KEY(autor_id)
REFERENCES autores(id));

CREATE TABLE editoriales_libros(
libro_cod INT UNIQUE, editorial_id INT, 
FOREIGN KEY (libro_cod) REFERENCES libros(codigo), 
FOREIGN KEY(editorial_id) REFERENCES editoriales(id));

CREATE TABLE prestamos(id SERIAL, fecha_devolucion DATE
NOT NULL, lector_id INT NOT NULL, libro_cod INT
NOT NULL, PRIMARY KEY(id), FOREIGN KEY(lector_id)
REFERENCES lectores(id), FOREIGN KEY(libro_cod)
REFERENCES libros(codigo));

INSERT INTO libros(codigo, nombre) VALUES(515,'Ecuaciones diferenciasles 
para ingenieros y ciéntificos');
INSERT INTO libros(codigo, nombre) VALUES(540,'Quimica');
INSERT INTO libros(codigo, nombre) VALUES(530,'Fisica');
INSERT INTO libros(codigo, nombre) VALUES(519,'Estadistica');
INSERT INTO libros(codigo, nombre) VALUES(512,'Algebra lineal');


INSERT INTO editoriales(nombre) VALUES('UTHEA');
INSERT INTO editoriales(nombre) VALUES('Reverté');
INSERT INTO editoriales(nombre) VALUES('McGrawHill');
INSERT INTO editoriales(nombre) VALUES('MIR');


INSERT INTO autores(nombre) VALUES('Lambe, C.G ');
INSERT INTO autores(nombre VALUES('Christen, Hans Rudolf')
INSERT INTO autores(nombre) VALUES('Serway, Raymond A');
INSERT INTO autores(nombre) VALUES('Murray Spiegel');
INSERT INTO autores(nombre) VALUES('Voevodin, Valentin V');
INSERT INTO autores(nombre) VALUES('Tranter, C, J');

INSERT INTO lectores(nombre) VALUES('Pérez Gómez, Juan');
INSERT INTO lectores(nombre) VALUES('Ortega Pereira, Margarita');
INSERT INTO lectores(nombre) VALUES('García Contreras, Rosa');
INSERT INTO lectores(nombre) VALUES('López Molina, Ana');

INSERT INTO autores_libros(libro_cod, autor_id) VALUES(
515, 1);
INSERT INTO autores_libros(libro_cod, autor_id) VALUES(
515, 6);
INSERT INTO autores_libros(libro_cod, autor_id) VALUES(
540, 2);
INSERT INTO autores_libros(libro_cod, autor_id) VALUES(
530, 3);
INSERT INTO autores_libros(libro_cod, autor_id) VALUES(
519, 4);
INSERT INTO autores_libros(libro_cod, autor_id) VALUES(
512, 5);

INSERT INTO editoriales_libros(libro_cod, editorial_id) VALUES(
515,1);
INSERT INTO editoriales_libros(libro_cod, editorial_id) VALUES(
540,2);
INSERT INTO editoriales_libros(libro_cod, editorial_id) VALUES(
530,3);
INSERT INTO editoriales_libros(libro_cod, editorial_id) VALUES(
519,3);
INSERT INTO prestamos(fecha_de_devolucion, lector_id) VALUES(
512,4)


INSERT INTO prestamos(fecha_devolucion, lector_id, libro_cod)
VALUES('2019-09-15', 1, 515);
INSERT INTO prestamos(fecha_devolucion, lector_id, libro_cod)
VALUES('2019-08-23', 2, 540);
INSERT INTO prestamos(fecha_devolucion, lector_id, libro_cod)
VALUES('2019-09-24', 3, 530);
VALUES('2019-09-18', 4, 519);
INSERT INTO prestamos(fecha_devolucion, lector_id, libro_cod)
VALUES('2019-09-17', 1, 512);


