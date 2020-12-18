-- reporte 12

CREATE OR REPLACE PROCEDURE reporte12 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_zona_origen IN INTEGER, param_zona_destino IN INTEGER) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT prov.DATOS_EMPRESA.nombre as nombre, (SELECT prove.datos_empresa.logo AS logo FROM proveedores prove WHERE prove.id = prov.id) AS logo, (SELECT z.DATOS_UBICACION.NOMBRE FROM zonas z WHERE z.id=ped.ID_ZONA_ORIGEN) AS zonaOrigen,
            (SELECT z.DATOS_UBICACION.NOMBRE FROM zonas z WHERE z.id=ped.ID_ZONA_DESTINO) AS zonaDestino,SUM((EXTRACT( HOUR FROM ped.RANGO_FECHAS.FECHA_FIN - ped.RANGO_FECHAS.FECHA_INICIO))*60+(EXTRACT( MINUTE FROM ped.RANGO_FECHAS.FECHA_FIN - ped.RANGO_FECHAS.FECHA_INICIO)))/COUNT(ped.TRACKING) tiempo,
            SUM((EXTRACT( HOUR FROM ped.RANGO_FECHAS.FECHA_FIN - ped.RANGO_FECHAS.FECHA_INICIO))*60+(EXTRACT( MINUTE FROM ped.RANGO_FECHAS.FECHA_FIN - ped.RANGO_FECHAS.FECHA_INICIO)))/COUNT(ped.TRACKING) || ' min' tiempoEstimado, DECODE(t.tipo,'car','Carro','bic','Bicicleta','mot','Moto','cam','Camioneta') AS tipoTransporte
        FROM proveedores prov, pedidos ped, transportes t
        WHERE prov.id = ped.ID_PROVEEDOR_USUARIO AND ped.ID_TRANSPORTE = t.ID AND t.ID_PROVEEDOR = prov.ID AND ((param_zona_origen IS NULL) OR (ped.ID_ZONA_ORIGEN = param_zona_origen)) AND ((param_zona_destino IS NULL) OR (ped.ID_ZONA_DESTINO = param_zona_destino))
        GROUP BY prov.DATOS_EMPRESA.NOMBRE,prov.id, t.tipo, ped.ID_ZONA_ORIGEN, ped.ID_ZONA_DESTINO
        ORDER BY prov.DATOS_EMPRESA.NOMBRE, tiempo;
END;




-- reporte 13

CREATE OR REPLACE PROCEDURE reporte13 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_fecha_inicio IN DATE, param_fecha_fin IN DATE) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT NVL(TO_CHAR(param_fecha_inicio, 'DD/MM/YYYY'), 'Sin fecha') AS fecha_inicio, NVL(TO_CHAR(param_fecha_fin, 'DD/MM/YYYY'), 'Sin fecha') AS fecha_fin,prov.DATOS_EMPRESA.NOMBRE as nombre, (SELECT prove.datos_empresa.logo AS logo FROM proveedores prove WHERE prove.id = prov.id)  AS logo,
            ROUND(SUM(ped.satisfaccion)/COUNT(ped.tracking)) || ' estrellas' AS satisfaccion
        FROM proveedores prov, pedidos ped
        WHERE (prov.id = ped.ID_PROVEEDOR_USUARIO AND ped.SATISFACCION IS NOT NULL) AND ((param_fecha_inicio IS NULL) OR (TO_DATE(param_fecha_inicio) <= TRUNC(CAST(ped.rango_fechas.fecha_inicio AS DATE))))
            AND ((param_fecha_fin IS NULL) OR (TO_DATE(param_fecha_fin) >= TRUNC(CAST(ped.rango_fechas.fecha_fin AS DATE))))
        GROUP BY prov.DATOS_EMPRESA.NOMBRE, param_fecha_inicio, param_fecha_fin, prov.ID
        ORDER BY satisfaccion DESC,prov.DATOS_EMPRESA.NOMBRE;
END;

