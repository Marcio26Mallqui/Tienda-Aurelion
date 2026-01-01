
CREATE DATABASE Proyecto_Tienda_Aurelion;

USE Proyecto_Tienda_Aurelion;

-- Categorías
CREATE TABLE categorias (
	id_categoria INT PRIMARY KEY IDENTITY(1,1),
	categoria VARCHAR(50)
);

INSERT INTO categorias
VALUES ('limpieza');

INSERT INTO categorias
VALUES ('medicina');


SELECT * FROM categorias;


-- Medio de Pago

CREATE TABLE medio_de_pago (
	id_medio_pago INT PRIMARY KEY IDENTITY(1,1),
	medio_pago VARCHAR(50)
);

INSERT INTO medio_de_pago (medio_pago)
VALUES ('qr');

INSERT INTO medio_de_pago (medio_pago)
VALUES ('tarjeta');


SELECT * FROM medio_de_pago;


-- Ciudades

CREATE TABLE ciudades (
	id_ciudad INT PRIMARY KEY IDENTITY(1,1),
	ciudad TEXT
);


INSERT INTO ciudades (ciudad)
VALUES ('ayacucho');

INSERT INTO ciudades (ciudad)
VALUES ('lima');

SELECT * FROM ciudades;


