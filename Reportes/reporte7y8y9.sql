--REPORTE 7

CREATE OR REPLACE PROCEDURE reporte7 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_fecha_inicio IN DATE,
param_fecha_fin IN DATE, param_proveedor IN INTEGER, param_estado IN INTEGER) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT e.datos_ubicacion.nombre AS estado, pr.datos_empresa.nombre AS proveedor,
        (SELECT pr1.datos_empresa.logo AS logo FROM proveedores pr1 WHERE pr1.id = pr.id) AS logo,
        zu.direccion AS direccion, pe.referencia_direccion AS referencia,
        pe.tracking AS tracking, u.email AS correo,
        NVL(TO_CHAR(param_fecha_inicio, 'dd/mm/yyyy'), 'Sin fecha') AS fecha_inicio,
        NVL(TO_CHAR(param_fecha_fin, 'dd/mm/yyyy'), 'Sin fecha') AS fecha_fin,
        (SELECT CONCAT(SUM(prpe.cantidad), DECODE(SUM(prpe.cantidad), 1, ' unidad', ' unidades')) AS ctd FROM productos_pedidos prpe WHERE prpe.tracking_pedido = pe.tracking) AS cantidad
        FROM pedidos pe
        INNER JOIN usuarios u ON u.cedula = pe.cedula_usuario AND u.id_proveedor = pe.id_proveedor_usuario
        INNER JOIN proveedores pr ON pr.id = u.id_proveedor
        INNER JOIN estados e ON e.id = pe.id_estado_destino
        INNER JOIN zonas_usuarios zu ON zu.id_proveedor_usuario = u.id_proveedor AND zu.cedula_usuario = u.cedula
        AND zu.id_zona = pe.id_zona_destino AND zu.id_municipio = pe.id_municipio_destino
        AND zu.id_estado = pe.id_estado_destino
        WHERE ((param_estado IS NULL) OR (param_estado = e.id))
        AND ((param_proveedor IS NULL) OR (param_proveedor = pe.id_proveedor_usuario))
        AND ((param_fecha_inicio IS NULL) OR (TO_DATE(param_fecha_inicio) <= TRUNC(CAST(pe.rango_fechas.fecha_inicio AS DATE))))
        AND ((param_fecha_fin IS NULL) OR (TO_DATE(param_fecha_fin) >= TRUNC(CAST(pe.rango_fechas.fecha_fin AS DATE))))
        AND (SELECT SUM(prpe.cantidad) AS ctd FROM productos_pedidos prpe WHERE prpe.tracking_pedido = pe.tracking) > 0
        GROUP BY e.datos_ubicacion.nombre, pr.datos_empresa.nombre, zu.direccion, pe.tracking, u.email,
        pe.referencia_direccion, pr.id, param_fecha_inicio, param_fecha_fin
        ORDER BY e.datos_ubicacion.nombre, pr.datos_empresa.nombre, pe.tracking, u.email;
END;

-- REPORTE 8
CREATE OR REPLACE PROCEDURE reporte8 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_tracking IN INTEGER) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT pe.tracking AS tracking, TO_CHAR(pe.rango_fechas.fecha_inicio, 'dd/mm/yyyy HH12:MI AM') AS fecha_inicio,
        TO_CHAR(pe.rango_fechas.fecha_fin, 'dd/mm/yyyy HH12:MI AM') AS fecha_fin,
        (SELECT CONCAT(SUM(prpe.cantidad), DECODE(SUM(prpe.cantidad), 1, ' unidad', ' unidades')) AS ctd FROM productos_pedidos prpe WHERE prpe.tracking_pedido = pe.tracking) AS cantidad,
        u.email AS correo, z.datos_ubicacion.latitud AS latitud, z.datos_ubicacion.longitud AS longitud,
        EXTRACT(HOUR FROM pe.rango_fechas.fecha_fin - pe.rango_fechas.fecha_inicio) || ':' ||
        CASE WHEN EXTRACT(MINUTE FROM pe.rango_fechas.fecha_fin - pe.rango_fechas.fecha_inicio) < 10 THEN '0' ||
        TO_CHAR(EXTRACT(MINUTE FROM pe.rango_fechas.fecha_fin - pe.rango_fechas.fecha_inicio))
        ELSE TO_CHAR(EXTRACT(MINUTE FROM pe.rango_fechas.fecha_fin - pe.rango_fechas.fecha_inicio)) END || ' h' AS tiempo
        FROM pedidos pe
        INNER JOIN usuarios u ON u.cedula = pe.cedula_usuario AND u.id_proveedor = pe.id_proveedor_usuario
        INNER JOIN transportes t ON t.id = pe.id_transporte AND t.id_proveedor = pe.id_proveedor_transporte
        INNER JOIN zonas z ON t.id_zona = z.id
        WHERE ((param_tracking IS NULL) OR (pe.tracking = param_tracking))
        AND pe.estatus != 'en';
END;

-- REPORTE 9
CREATE OR REPLACE PROCEDURE reporte9 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_fecha_inicio IN DATE, param_fecha_fin IN DATE,
param_estado IN INTEGER, param_zona IN INTEGER) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT * FROM (SELECT NVL(TO_CHAR(param_fecha_inicio, 'dd/mm/yyyy'), 'Sin fecha') AS fecha_inicio,
        NVL(TO_CHAR(param_fecha_fin, 'dd/mm/yyyy'), 'Sin fecha') AS fecha_fin,
        e.datos_ubicacion.nombre AS estado, z.datos_ubicacion.nombre AS zona,
        s.nombre AS sector, SUM(prpe.cantidad) AS cantidad
        FROM productos_pedidos prpe
        INNER JOIN productos pr ON pr.id = prpe.id_producto
        INNER JOIN sectores s ON pr.id_sector = s.id
        INNER JOIN pedidos pe ON pe.tracking = prpe.tracking_pedido
        INNER JOIN zonas_usuarios zu ON pe.id_zona_destino = zu.id_zona
        AND pe.id_municipio_destino = zu.id_municipio AND pe.id_estado_destino = zu.id_estado
        AND pe.cedula_usuario = zu.cedula_usuario AND pe.id_proveedor_usuario = zu.id_proveedor_usuario
        INNER JOIN zonas z ON z.id = zu.id_zona
        INNER JOIN estados e ON e.id = zu.id_estado
        WHERE ((param_estado IS NULL) OR (param_estado = e.id))
        AND ((param_zona IS NULL) OR (param_zona = z.id))
        AND ((param_fecha_inicio IS NULL) OR (TO_DATE(param_fecha_inicio) <= TRUNC(CAST(pe.rango_fechas.fecha_inicio AS DATE))))
        AND ((param_fecha_fin IS NULL) OR (TO_DATE(param_fecha_fin) >= TRUNC(CAST(pe.rango_fechas.fecha_fin AS DATE))))
        GROUP BY param_fecha_inicio, param_fecha_fin, e.datos_ubicacion.nombre, z.datos_ubicacion.nombre, s.nombre
        ORDER BY cantidad desc,e.datos_ubicacion.nombre, z.datos_ubicacion.nombre, s.nombre)
        WHERE ROWNUM < 11;
END;