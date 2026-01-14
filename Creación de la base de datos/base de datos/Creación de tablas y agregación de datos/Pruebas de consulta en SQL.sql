
USE Proyecto_Tienda_Aurelion;

SELECT*  FROM dbo.detalle_ventas;


SELECT *, (dv.cantidad * dv.precio_unitario) AS 'Importe' 
FROM dbo.detalle_ventas dv;

SELECT cl.nombre_cliente,  COUNT(dv.id_venta) FROM dbo.detalle_ventas dv 
JOIN dbo.ventas vt ON  dv.id_venta = vt.id_venta
JOIn dbo.clientes cl ON vt.id_cliente  = cl.id_cliente
GROUP BY cl.nombre_cliente;

 

