CALL modulo_ubicacion();
CALL modulo_empresas();
CALL modulo_productos();
CALL modulo_usuarios();
CALL modulo_transportes();
CALL modulo_pedidos();

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