-- reporte 13

CREATE OR REPLACE PROCEDURE reporte13 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_fecha_inicio IN DATE, param_fecha_fin IN DATE) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT NVL(TO_CHAR(param_fecha_inicio, 'DD/MM/YYYY'), 'Sin fecha') AS fecha_inicio, NVL(TO_CHAR(param_fecha_fin, 'DD/MM/YYYY'), 'Sin fecha') AS fecha_fin,prov.DATOS_EMPRESA.NOMBRE as nombre, prov.DATOS_EMPRESA.LOGO AS logo,
            ROUND((SELECT SUM(ped.satisfaccion) FROM pedidos ped WHERE ped.ID_PROVEEDOR_USUARIO = prov.ID AND ped.SATISFACCION IS NOT NULL AND ((param_fecha_inicio IS NULL) OR (TO_DATE(param_fecha_inicio) <= TRUNC(CAST(ped.rango_fechas.fecha_inicio AS DATE))))
            AND ((param_fecha_fin IS NULL) OR (TO_DATE(param_fecha_fin) >= TRUNC(CAST(ped.rango_fechas.fecha_fin AS DATE)))))/ (SELECT COUNT(*) FROM pedidos pedi WHERE pedi.ID_PROVEEDOR_USUARIO = prov.ID AND pedi.SATISFACCION IS NOT NULL AND ((param_fecha_inicio IS NULL) OR (TO_DATE(param_fecha_inicio) <= TRUNC(CAST(pedi.rango_fechas.fecha_inicio AS DATE))))
            AND ((param_fecha_fin IS NULL) OR (TO_DATE(param_fecha_fin) >= TRUNC(CAST(pedi.rango_fechas.fecha_fin AS DATE)))))) || ' estrellas' AS satisfaccion
        FROM proveedores prov
        WHERE (SELECT SUM(pedid.satisfaccion) FROM pedidos pedid WHERE pedid.ID_PROVEEDOR_USUARIO = prov.id AND pedid.SATISFACCION IS NOT NULL AND ((param_fecha_inicio IS NULL) OR (TO_DATE(param_fecha_inicio) <= TRUNC(CAST(pedid.rango_fechas.fecha_inicio AS DATE))))
            AND ((param_fecha_fin IS NULL) OR (TO_DATE(param_fecha_fin) >= TRUNC(CAST(pedid.rango_fechas.fecha_fin AS DATE))))) IS NOT NULL
        ORDER BY ROUND((SELECT SUM(ped.satisfaccion) FROM pedidos ped WHERE ped.ID_PROVEEDOR_USUARIO = prov.ID AND ped.SATISFACCION IS NOT NULL AND ((param_fecha_inicio IS NULL) OR (TO_DATE(param_fecha_inicio) <= TRUNC(CAST(ped.rango_fechas.fecha_inicio AS DATE))))
            AND ((param_fecha_fin IS NULL) OR (TO_DATE(param_fecha_fin) >= TRUNC(CAST(ped.rango_fechas.fecha_fin AS DATE)))))/ (SELECT COUNT(*) FROM pedidos pedi WHERE pedi.ID_PROVEEDOR_USUARIO = prov.ID AND pedi.SATISFACCION IS NOT NULL AND ((param_fecha_inicio IS NULL) OR (TO_DATE(param_fecha_inicio) <= TRUNC(CAST(pedi.rango_fechas.fecha_inicio AS DATE))))
            AND ((param_fecha_fin IS NULL) OR (TO_DATE(param_fecha_fin) >= TRUNC(CAST(pedi.rango_fechas.fecha_fin AS DATE)))))) DESC,prov.DATOS_EMPRESA.NOMBRE;
END;

