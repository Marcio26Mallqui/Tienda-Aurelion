
CREATE DATABASE Proyecto_Tienda_Aurelion;

USE Proyecto_Tienda_Aurelion;

-- Tabla Categorías
CREATE TABLE categorias (
	id_categoria INT PRIMARY KEY IDENTITY(1,1),
	categoria VARCHAR(50)
);

INSERT INTO categorias
VALUES ('limpieza');

INSERT INTO categorias
VALUES ('medicina');


SELECT * FROM categorias;


-- Tabla Productos

CREATE TABLE productos (
	id_producto INT PRIMARY KEY IDENTITY(1,1),
	nombre_producto TEXT,
	precio_unitario FLOAT(1),
	id_categoria INT FOREIGN KEY REFERENCES categorias(id_categoria)
);

INSERT INTO productos(nombre_producto, precio_unitario, id_categoria)
VALUES ('sabana', 25.5, 3);

INSERT INTO productos(nombre_producto, precio_unitario, id_categoria)
VALUES ('sabana', 50.78, 2);

SELECT * FROM dbo.productos



-- Tabla Medio de Pago

CREATE TABLE medio_de_pago (
	id_medio_pago INT PRIMARY KEY IDENTITY(1,1),
	medio_pago VARCHAR(50)
);

INSERT INTO medio_de_pago (medio_pago)
VALUES ('qr');

INSERT INTO medio_de_pago (medio_pago)
VALUES ('tarjeta');


SELECT * FROM medio_de_pago;


-- Tabla Ciudades

CREATE TABLE ciudades (
	id_ciudad INT PRIMARY KEY IDENTITY(1,1),
	ciudad TEXT
);


INSERT INTO ciudades (ciudad)
VALUES ('ayacucho');

INSERT INTO ciudades (ciudad)
VALUES ('lima');

SELECT * FROM ciudades;


-- Tabla Clientes

CREATE TABLE clientes (
	id_cliente INT PRIMARY KEY IDENTITY(1,1),
	nombre_cliente TEXT,
	email TEXT,
	fecha_alta DATE,
	id_ciudad INT FOREIGN KEY REFERENCES ciudades(id_ciudad)
);

INSERT INTO dbo.clientes (nombre_cliente, email, fecha_alta, id_ciudad)
VALUES ('Juan Alberto', 'mar_olwyn@gmail.com', '2026-01-03', 2);

INSERT INTO dbo.clientes (nombre_cliente, email, fecha_alta, id_ciudad)
VALUES ('Juan davalos', 'davalos@gmail.com', '2026-01-02', 1);


SELECT * FROM dbo.clientes;



-- tabla Ventas

CREATE TABLE ventas (
	id_venta INT PRIMARY KEY IDENTITY(1,1),
	fecha DATE,
	id_cliente INT FOREIGN KEY REFERENCES clientes(id_cliente),
	id_medio_pago INT FOREIGN KEY REFERENCES medio_de_pago(id_medio_pago)
);

INSERT INTO dbo.ventas (fecha, id_cliente, id_medio_pago)
VALUES ('2026-01-04', 2, 1);

SELECT * FROM dbo.ventas;

-- Tabla Detalle Ventas

CREATE TABLE detalle_ventas (
	id_venta INT FOREIGN KEY REFERENCES ventas(id_venta),
	id_producto INT FOREIGN KEY REFERENCES productos(id_producto),
	cantidad INT,
	precio_unitario FLOAT(1),
	importe FLOAT(1)
);

INSERT INTO detalle_ventas (id_venta, id_producto, cantidad, precio_unitario, importe)
VALUES (1,1,3,5.6, 16.8);

SELECT * FROM detalle_ventas;

