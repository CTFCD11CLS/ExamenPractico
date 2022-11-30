CREATE DATABASE libros DEFAULT  CHARACTER SET utf8 COLLATE utf8_general_ci;
USE libros;
CREATE TABLE estudiantes(
    carne int(23) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(20) NOT NULL,
    apellido varchar(20)NOT NULL,
    direccion varchar(30) NOT NULL,
    telefono int(12)NOT NULL,
    email varchar(15)NOT NULL,
    fechanacimiento date,
    codigo_grado int(15)NOT NULL
    );

CREATE TABLE grados(
    codigo_grado INT(15)NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    nombre int(20)
    );
CREATE TABLE empleados(
    cod_empleado int (20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(20)NOT NULL,
    apellido varchar (15)NOT NULL,
    direccion varchar(15),
    email varchar(25)
    );
CREATE TABLE prestamos(
    cod_prestamo int(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cod_libro int(10) NOT NULL,
    carne int(14) NOT NULL,
    fecha_prestamo date NOT NULL,
    fecha_devolucion date NOT NULL,
    cod_empleado varchar(15)NOT NULL
    );
CREATE TABLE estados(
    cod_estado int(15)NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(15) NOT NULL
    );
CREATE TABLE libros(
    cod_libro int(12) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cod_autor int(12) NOT NUll,
    codigo_editorial int(20) NOT NULL, 
    titulo varchar(15)NOT NULL,
    numero_paginas int(14)NOT NULL,
    tamaño float,
    precio float,
    estado varchar(50) NOT NULL,
    edicion varchar(100)
    );
CREATE TABLE editoriales(
    codigo_editorial int(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(25)NOT NULL,
    direccion varchar(15)NOT NULL,
    telefono int(10),
    email varchar(15) NOT NULL
    );
CREATE TABLE autores(
    codigo_autor int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    apellido_autor varchar(15)NOT NULL,
    nombre_autor varchar (20) NOT NULL,
    pais_origen varchar(20) NOT NULL
    );
CREATE TABLE paises(
   cod_pais varchar(15) NOT NULL PRIMARY KEY,
    nombre varchar(15) NOT NULL
    );
ALTER TABLE estudiantes ADD CONSTRAINT pk_fk_estudiantes FOREIGN KEY (codigo_grado) REFERENCES estudiantes(codigo_grado) ON UPDATE CASCADE ON DELETE CASCADE;
