-- reporte 12

CREATE OR REPLACE PROCEDURE reporte12 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_zona_origen IN INTEGER, param_zona_destino IN INTEGER) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT prov.DATOS_EMPRESA.nombre as nombre, (SELECT prove.datos_empresa.logo AS logo FROM proveedores prove WHERE prove.id = prov.id) AS logo, zTO.DATOS_UBICACION.NOMBRE AS zonaOrigen,
        zTD.DATOS_UBICACION.NOMBRE AS zonaDestino,
            CASE t.tipo WHEN 'bic' THEN ROUND((ABS(zTO.DATOS_UBICACION.LATITUD - zTD.DATOS_UBICACION.LATITUD) + ABS(zTO.DATOS_UBICACION.LONGITUD - zTD.DATOS_UBICACION.LONGITUD)) * 300 +5)
                    WHEN 'mot' THEN ROUND((ABS(zTO.DATOS_UBICACION.LATITUD - zTD.DATOS_UBICACION.LATITUD) + ABS(zTO.DATOS_UBICACION.LONGITUD - zTD.DATOS_UBICACION.LONGITUD)) * 300 *0.5 +5) ELSE
                        ROUND((ABS(zTO.DATOS_UBICACION.LATITUD - zTD.DATOS_UBICACION.LATITUD) + ABS(zTO.DATOS_UBICACION.LONGITUD - zTD.DATOS_UBICACION.LONGITUD)) * 300 *0.7 +5) END AS tiempo,
            CASE t.tipo WHEN 'bic' THEN ROUND((ABS(zTO.DATOS_UBICACION.LATITUD - zTD.DATOS_UBICACION.LATITUD) + ABS(zTO.DATOS_UBICACION.LONGITUD - zTD.DATOS_UBICACION.LONGITUD)) * 300 +5)
                    WHEN 'mot' THEN ROUND((ABS(zTO.DATOS_UBICACION.LATITUD - zTD.DATOS_UBICACION.LATITUD) + ABS(zTO.DATOS_UBICACION.LONGITUD - zTD.DATOS_UBICACION.LONGITUD)) * 300 *0.5 +5) ELSE
                        ROUND((ABS(zTO.DATOS_UBICACION.LATITUD - zTD.DATOS_UBICACION.LATITUD) + ABS(zTO.DATOS_UBICACION.LONGITUD - zTD.DATOS_UBICACION.LONGITUD)) * 300 *0.7 +5) END || ' min' tiempoEstimado, DECODE(t.tipo,'car','Carro','bic','Bicicleta','mot','Moto','cam','Camioneta') AS tipoTransporte
        FROM proveedores prov, transportes t, zonas zTO, zonas zTD, ZONAS_PROVEEDORES zp
        WHERE prov.id=t.ID_PROVEEDOR AND prov.id = zp.ID_PROVEEDOR AND ((param_zona_origen IS NULL) OR (zTO.id = param_zona_origen)) AND ((param_zona_destino IS NULL) OR (zTD.id = param_zona_destino))
            AND t.ID_ESTADO = zTO.ID_ESTADO AND zTO.ID_ESTADO = zTD.ID_ESTADO AND zp.ID_ESTADO = zTO.ID_ESTADO
            AND t.tipo !=
            CASE
                WHEN zTO.ID_MUNICIPIO != zTD.ID_MUNICIPIO THEN 'bic' ELSE 'na' END
        GROUP BY prov.DATOS_EMPRESA.NOMBRE, prov.ID, zTO.DATOS_UBICACION.NOMBRE, zTD.DATOS_UBICACION.NOMBRE, t.tipo, zTO.ID_ESTADO, zTO.ID, zTD.ID, zTO.DATOS_UBICACION.LATITUD, zTD.DATOS_UBICACION.LATITUD, zTO.DATOS_UBICACION.LONGITUD, zTD.DATOS_UBICACION.LONGITUD
        ORDER BY prov.DATOS_EMPRESA.NOMBRE, tiempo;
END;


-- reporte 13

CREATE OR REPLACE PROCEDURE reporte13 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_fecha_inicio IN DATE, param_fecha_fin IN DATE) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT NVL(TO_CHAR(param_fecha_inicio, 'DD/MM/YYYY'), 'Sin fecha') AS fecha_inicio, NVL(TO_CHAR(param_fecha_fin, 'DD/MM/YYYY'), 'Sin fecha') AS fecha_fin,prov.DATOS_EMPRESA.NOMBRE as nombre, (SELECT prove.datos_empresa.logo AS logo FROM proveedores prove WHERE prove.id = prov.id)  AS logo,
            ROUND(SUM(ped.satisfaccion)/COUNT(ped.tracking), 2) || ' estrellas' AS satisfaccion
        FROM proveedores prov, pedidos ped
        WHERE (prov.id = ped.ID_PROVEEDOR_USUARIO AND ped.SATISFACCION IS NOT NULL) AND ((param_fecha_inicio IS NULL) OR (TO_DATE(param_fecha_inicio) <= TRUNC(CAST(ped.rango_fechas.fecha_inicio AS DATE))))
            AND ((param_fecha_fin IS NULL) OR (TO_DATE(param_fecha_fin) >= TRUNC(CAST(ped.rango_fechas.fecha_fin AS DATE))))
        GROUP BY prov.DATOS_EMPRESA.NOMBRE, param_fecha_inicio, param_fecha_fin, prov.ID
        ORDER BY satisfaccion DESC,prov.DATOS_EMPRESA.NOMBRE;
END;

