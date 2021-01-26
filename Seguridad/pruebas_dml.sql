-- Tabla Estados

SELECT * FROM estados;
INSERT INTO estados (id, datos_ubicacion) VALUES (500, datos_ubicacion('prueba',1,1));
UPDATE estados e SET e.datos_ubicacion.nombre = 'prueba2' WHERE id = 500;
DELETE FROM estados WHERE id = 500;

-- Tabla Mynicipios
SELECT * FROM municipios;
INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (600, 1, datos_ubicacion('prueba',1,1));
UPDATE municipios e SET e.datos_ubicacion.nombre = 'prueba2' WHERE id = 600;
DELETE FROM municipios WHERE id = 600;

-- Tabla Zonas
SELECT * FROM zonas;
INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (700, 1, 1, datos_ubicacion('prueba',1,1));
UPDATE zonas e SET e.datos_ubicacion.nombre = 'prueba2' WHERE id = 700;
DELETE FROM zonas WHERE id = 700;

-- Tabla Sectores
SELECT * FROM sectores;
INSERT INTO sectores (id, nombre) VALUES (500, 'prueba');
UPDATE sectores s SET s.nombre = 'prueba2' WHERE s.id = 500;
DELETE FROM sectores WHERE id = 500;

-- Tabla Proveedores
SELECT * FROM proveedores;
INSERT INTO proveedores (id, datos_empresa) VALUES (500, datos_empresa('prueba', TO_DATE('19/06/2019', 'dd/mm/yyyy'), 'prueba@gmail.com', '+584141737600', EMPTY_BLOB()));
UPDATE proveedores p SET p.datos_empresa.nombre = 'prueba2' WHERE p.id = 500;
DELETE FROM proveedores WHERE id = 500;

-- Tabla Productores
SELECT * FROM productores;
INSERT INTO productores (id, datos_empresa, id_sector) VALUES (500, datos_empresa('prueba', TO_DATE('19/06/2019', 'dd/mm/yyyy'), 'prueba@gmail.com', '+584141737600', EMPTY_BLOB()), 1);
UPDATE productores p SET p.datos_empresa.nombre = 'prueba2' WHERE p.id = 500;
DELETE FROM productores WHERE id = 500;

-- Tabla Zonas_Proveedores
SELECT * FROM zonas_proveedores;
INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (1, 1, 1, 1);
UPDATE zonas_proveedores SET id_proveedor = 2 WHERE id_estado = 1 AND id_municipio = 1 AND id_zona = 1 AND id_proveedor = 1;
DELETE FROM zonas_proveedores WHERE id_estado = 1 AND id_municipio = 1 AND id_zona = 1 AND id_proveedor = 2;

-- Tabla Zonas_Productores
SELECT * FROM zonas_productores;
INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (1, 1, 1, 1);
UPDATE zonas_productores SET id_productor = 2 WHERE id_estado = 1 AND id_municipio = 1 AND id_zona = 1 AND id_productor = 1;
DELETE FROM zonas_productores WHERE id_estado = 1 AND id_municipio = 1 AND id_zona = 1 AND id_productor = 2;

-- Tabla Servicios
SELECT * FROM servicios;
INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (500, 1,
rango_fechas(TO_DATE('19/06/2019', 'dd/mm/yyyy'), TO_DATE('19/06/2010', 'dd/mm/yyyy')), 1, 'd', 1);
UPDATE servicios SET cantidad = 2 WHERE id = 500;
DELETE FROM servicios WHERE id = 500;

-- Tabla Contratos
SELECT * FROM contratos;
INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (500, 1,
rango_fechas(TO_DATE('19/06/2019', 'dd/mm/yyyy'), TO_DATE('19/06/2010', 'dd/mm/yyyy')), 0);
UPDATE contratos SET descuento = 1 WHERE id = 500;
DELETE FROM contratos WHERE id = 500;

-- Tabla Servicios_Contratos
SELECT * FROM servicios_contratos;
INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES
(1, 10, 1, 1);
UPDATE servicios_contratos SET id_proveedor = 2 WHERE id_contrato = 1 AND id_productor = 10 AND id_servicio = 1 AND id_proveedor = 1;
DELETE FROM servicios_contratos WHERE id_contrato = 1 AND id_productor = 10 AND id_servicio = 1 AND id_proveedor = 2;

-- Tabla Estados_Contratos
SELECT * FROM estados_contratos;
INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (1, 1, 10);
UPDATE estados_contratos SET id_estado = 2 WHERE id_estado = 1 AND id_contrato = 1 AND id_productor = 10;
DELETE FROM estados_contratos WHERE id_estado = 2 AND id_contrato = 1 AND id_productor = 10;

-- Tabla Transportes
SELECT * FROM transportes;
INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus) VALUES
(1000, 1, 1, 1, 1, 'car', 'f');
UPDATE transportes SET estatus = 'd' WHERE id = 100 AND id_proveedor = 1000;
DELETE FROM transportes WHERE id = 1000 AND id_proveedor = 1;

ALTER TRIGGER asignar_zonas_usuario DISABLE;
-- Tabla Usuarios
SELECT * FROM usuarios;
INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
(10, 1, 'p', 'r', 'u', EMPTY_BLOB(), 'e', TO_DATE('19/06/2019', 'dd/mm/yyyy'), 'b');
UPDATE usuarios SET email = 'a' WHERE cedula = 10 AND id_proveedor = 1;
DELETE FROM usuarios WHERE cedula = 10 AND id_proveedor = 1;
--
ALTER TRIGGER asignar_zonas_usuario ENABLE;

-- Tabla Zonas_Usuarios
SELECT * FROM zonas_usuarios;
INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES
(20000000, 6, 1, 1, 1, 'prueba');
UPDATE zonas_usuarios SET direccion = 'prueba2' WHERE cedula_usuario = 20000000 AND id_proveedor_usuario = 1 AND id_estado = 1 AND id_municipio = 1 AND id_zona = 1;
DELETE FROM zonas_usuarios WHERE cedula_usuario = 20000000 AND id_proveedor_usuario = 1 AND id_estado = 1 AND id_municipio = 1 AND id_zona = 1;

ALTER TRIGGER asignar_productores_producto DISABLE;
-- Tabla Productos
SELECT * FROM productos;
INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (1000, 1, 'prueba', 1, 1, 'kg');
UPDATE productos SET id_sector = 2 WHERE id = 1000;
DELETE FROM productos WHERE id = 1000;
--
ALTER TRIGGER asignar_productores_producto ENABLE;

-- Tabla Productos_Productor
SELECT * FROM productos_productor;
INSERT INTO productos_productor (id_producto, id_productor) VALUES (1, 9);
UPDATE productos_productor SET id_producto = 3 WHERE id_producto = 1 AND id_productor = 9;
DELETE FROM productos_productor WHERE id_producto = 3 AND id_productor = 9;

-- Tabla Pedidos
SELECT * FROM pedidos;

-- Tabla Productos_Pedidos
SELECT * FROM productos_pedidos;
