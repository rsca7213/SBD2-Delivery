/* SIMULACION */
CALL modulo_ubicacion();
CALL modulo_empresas();
CALL modulo_productos();
CALL modulo_usuarios();
CALL modulo_transportes();
CALL modulo_pedidos();

/* INSERTS EJEMPLOS */
CALL inserts_ejemplos();

SELECT COUNT(*) FROM estados;
SELECT COUNT(*) FROM municipios;
SELECT COUNT(*) FROM zonas;
SELECT COUNT(*) FROM sectores;
SELECT COUNT(*) FROM proveedores;
SELECT COUNT(*) FROM productores;
SELECT COUNT(*) FROM zonas_proveedores;
SELECT COUNT(*) FROM zonas_productores;
SELECT COUNT(*) FROM servicios;
SELECT COUNT(*) FROM contratos;
SELECT COUNT(*) FROM servicios_contratos;
SELECT COUNT(*) FROM estados_contratos;
SELECT COUNT(*) FROM transportes;
SELECT COUNT(*) FROM usuarios;
SELECT COUNT(*) FROM zonas_usuarios;
SELECT COUNT(*) FROM productos;
SELECT COUNT(*) FROM productos_productor;
SELECT COUNT(*) FROM pedidos;
SELECT COUNT(*) FROM productos_pedidos;

/* Pruebas del modulo ubicaciones */
SELECT z.datos_ubicacion.nombre AS zona, m.datos_ubicacion.nombre AS municipio,
e.datos_ubicacion.nombre AS estado
FROM zonas z
INNER JOIN municipios m ON m.id = z.id_municipio AND m.id_estado = z.id_estado
INNER JOIN estados e ON e.id = m.id_estado ORDER BY e.datos_ubicacion.nombre;

/* Pruebas del modulo empresas */
SELECT p.id, p.datos_empresa.nombre AS nombre, p.datos_empresa.correo AS correo, p.datos_empresa.logo AS logo
FROM proveedores p;

SELECT p.id, p.datos_empresa.nombre AS nombre, p.datos_empresa.correo AS correo, p.datos_empresa.logo AS logo
FROM productores p;

SELECT sc.id_contrato, prod.datos_empresa.nombre AS productor, prov.datos_empresa.nombre AS proveedor,
sc.id_servicio FROM servicios_contratos sc
INNER JOIN servicios s ON sc.id_servicio = s.id AND sc.id_proveedor = s.id_proveedor
INNER JOIN contratos c ON sc.id_contrato = c.id AND sc.id_productor = c.id_productor
INNER JOIN proveedores prov ON s.id_proveedor = prov.id
INNER JOIN productores prod ON c.id_productor = prod.id;

/* Pruebas del modulo productos */
SELECT pr.nombre AS producto, prod.datos_empresa.nombre AS productor FROM productos pr
INNER JOIN productos_productor pp ON pr.id = pp.id_producto
INNER JOIN productores prod ON prod.id = pp.id_productor;

/* Pruebas del modulo usuarios */
SELECT p.datos_empresa.nombre AS proveedor, u.cedula, u.email,
z.datos_ubicacion.nombre AS zona, m.datos_ubicacion.nombre AS municipio,
e.datos_ubicacion.nombre AS estado, uz.direccion
FROM zonas_usuarios uz
INNER JOIN usuarios u ON u.cedula = uz.cedula_usuario AND u.id_proveedor = uz.id_proveedor_usuario
INNER JOIN proveedores p ON p.id = u.id_proveedor
INNER JOIN zonas z ON z.id = uz.id_zona AND z.id_estado = uz.id_estado AND z.id_municipio = uz.id_municipio
INNER JOIN municipios m ON z.id_municipio = m.id AND z.id_estado = m.id_estado
INNER JOIN estados e ON m.id_estado = e.id;

/* Pruebas del modulo transportes */
SELECT t.id, p.datos_empresa.nombre AS proveedor, e.datos_ubicacion.nombre AS estado,
m.datos_ubicacion.nombre AS municipio, z.datos_ubicacion.nombre AS zona,
DECODE(t.tipo, 'bic', 'Bicicleta', 'mot', 'Moto', 'Car', 'Carro', 'Camioneta') AS tipo,
DECODE(t.estatus, 'd', 'Dañado', 'Funcional') AS estatus,
t.numero_placa
FROM transportes t
INNER JOIN proveedores p ON p.id = t.id_proveedor
INNER JOIN zonas z ON z.id = t.id_zona AND z.id_estado = t.id_estado AND z.id_municipio = t.id_municipio
INNER JOIN municipios m ON m.id = z.id_municipio AND m.id_estado = z.id_estado
INNER JOIN estados e ON m.id_estado = e.id;

/* Pruebas del modulo pedidos */
SELECT pe.tracking, DECODE(pe.estatus, 'en', 'Entregado', 'es', 'En espera', 'En transito') AS estatus,
pe.cedula_usuario, u.email AS correo_usuario, prov.datos_empresa.nombre AS proveedor, prod.datos_empresa.nombre AS productor
FROM pedidos pe
INNER JOIN productores prod ON prod.id = pe.id_productor_contrato
INNER JOIN proveedores prov ON prov.id = pe.id_proveedor_usuario
INNER JOIN usuarios u ON u.cedula = pe.cedula_usuario
GROUP BY pe.tracking, pe.estatus, pe.cedula_usuario, u.email, prov.datos_empresa.nombre, prod.datos_empresa.nombre;