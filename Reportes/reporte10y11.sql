-- REPORTE 10

CREATE OR REPLACE PROCEDURE reporte10 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_proveedor IN INTEGER, param_fecha_inicio IN DATE, param_fecha_fin IN DATE) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT NVL(TO_CHAR(param_fecha_inicio, 'DD/MM/YYYY'), 'Sin fecha') AS fecha_inicio,
               NVL(TO_CHAR(param_fecha_fin, 'DD/MM/YYYY'), 'Sin fecha') AS fecha_fin,
               (SELECT produ.datos_empresa.logo AS prod_logo FROM productores produ WHERE produ.id = pd.id) AS prod_logo,
               pv.datos_empresa.nombre AS proveedor,
               (SELECT prov.datos_empresa.logo AS prov_logo FROM proveedores prov WHERE prov.id = pv.id) AS prov_logo,
               CASE WHEN param_fecha_inicio BETWEEN TRUNC(CAST(c.rango_fechas.fecha_inicio AS DATE)) AND TRUNC(CAST(c.rango_fechas.fecha_fin AS DATE)) AND param_fecha_fin BETWEEN TRUNC(CAST(c.rango_fechas.fecha_inicio AS DATE)) AND TRUNC(CAST(c.rango_fechas.fecha_fin AS DATE)) THEN
                    (CASE WHEN s.frecuencia='d' THEN '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*ROUND(MONTHS_BETWEEN(param_fecha_fin,param_fecha_inicio),2)*30)
                    WHEN s.frecuencia='s' THEN '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*ROUND(MONTHS_BETWEEN(param_fecha_fin,param_fecha_inicio),2)*4)
                    WHEN s.frecuencia='m' THEN '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*ROUND(MONTHS_BETWEEN(param_fecha_fin,param_fecha_inicio),2))
                    ELSE '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*(ROUND(MONTHS_BETWEEN(param_fecha_fin,param_fecha_inicio),2))/12) END)
                WHEN (param_fecha_inicio BETWEEN TRUNC(CAST(c.rango_fechas.fecha_inicio AS DATE)) AND TRUNC(CAST(c.rango_fechas.fecha_fin AS DATE)) AND param_fecha_fin IS NULL) OR (param_fecha_inicio BETWEEN TRUNC(CAST(c.rango_fechas.fecha_inicio AS DATE)) AND TRUNC(CAST(c.rango_fechas.fecha_fin AS DATE)) AND param_fecha_fin NOT BETWEEN TRUNC(CAST(c.rango_fechas.fecha_inicio AS DATE)) AND TRUNC(CAST(c.rango_fechas.fecha_fin AS DATE))) THEN
                    (CASE WHEN s.frecuencia='d' THEN '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*ROUND(MONTHS_BETWEEN(c.rango_fechas.fecha_fin,param_fecha_inicio),2)*30)
                    WHEN s.frecuencia='s' THEN '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*ROUND(MONTHS_BETWEEN(c.rango_fechas.fecha_fin,param_fecha_inicio),2)*4)
                    WHEN s.frecuencia='m' THEN '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*ROUND(MONTHS_BETWEEN(c.rango_fechas.fecha_fin,param_fecha_inicio),2))
                    ELSE '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*(ROUND(MONTHS_BETWEEN(c.rango_fechas.fecha_fin,param_fecha_inicio),2))/12) END)
                WHEN (param_fecha_inicio IS NULL AND param_fecha_fin BETWEEN TRUNC(CAST(c.rango_fechas.fecha_inicio AS DATE)) AND TRUNC(CAST(c.rango_fechas.fecha_fin AS DATE))) OR (param_fecha_inicio NOT BETWEEN TRUNC(CAST(c.rango_fechas.fecha_inicio AS DATE)) AND TRUNC(CAST(c.rango_fechas.fecha_fin AS DATE)) AND param_fecha_fin BETWEEN TRUNC(CAST(c.rango_fechas.fecha_inicio AS DATE)) AND TRUNC(CAST(c.rango_fechas.fecha_fin AS DATE))) THEN
                    (CASE WHEN s.frecuencia='d' THEN '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*ROUND(MONTHS_BETWEEN(param_fecha_fin,c.rango_fechas.fecha_inicio),2)*30)
                    WHEN s.frecuencia='s' THEN '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*ROUND(MONTHS_BETWEEN(param_fecha_fin,c.rango_fechas.fecha_inicio),2)*4)
                    WHEN s.frecuencia='m' THEN '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*ROUND(MONTHS_BETWEEN(param_fecha_fin,c.rango_fechas.fecha_inicio),2))
                    ELSE '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*(ROUND(MONTHS_BETWEEN(param_fecha_fin,c.rango_fechas.fecha_inicio),2))/12) END)
                ELSE
                    (CASE WHEN s.frecuencia='d' THEN '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*ROUND(MONTHS_BETWEEN(c.rango_fechas.fecha_fin,c.rango_fechas.fecha_inicio),2)*30)
                    WHEN s.frecuencia='s' THEN '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*ROUND(MONTHS_BETWEEN(c.rango_fechas.fecha_fin,c.rango_fechas.fecha_inicio),2)*4)
                    WHEN s.frecuencia='m' THEN '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*ROUND(MONTHS_BETWEEN(c.rango_fechas.fecha_fin,c.rango_fechas.fecha_inicio),2))
                    ELSE '$' || TO_CHAR((s.precio-s.precio*c.descuento/100)*(ROUND(MONTHS_BETWEEN(c.rango_fechas.fecha_fin,c.rango_fechas.fecha_inicio),2))/12) END)
                END AS ingreso
        FROM productores pd, proveedores pv, servicios s, contratos c, servicios_contratos sc
        WHERE
              ((param_fecha_inicio IS NULL) OR (param_fecha_inicio BETWEEN TRUNC(CAST(c.rango_fechas.fecha_inicio AS DATE)) AND TRUNC(CAST(c.rango_fechas.fecha_fin AS DATE)) OR param_fecha_fin BETWEEN TRUNC(CAST(c.rango_fechas.fecha_inicio AS DATE)) AND TRUNC(CAST(c.rango_fechas.fecha_fin AS DATE)))) AND
              ((param_fecha_fin IS NULL) OR (param_fecha_inicio BETWEEN TRUNC(CAST(c.rango_fechas.fecha_inicio AS DATE)) AND TRUNC(CAST(c.rango_fechas.fecha_fin AS DATE)) OR param_fecha_fin BETWEEN TRUNC(CAST(c.rango_fechas.fecha_inicio AS DATE)) AND TRUNC(CAST(c.rango_fechas.fecha_fin AS DATE)))) AND
              (param_proveedor=pv.id OR param_proveedor IS NULL) AND sc.id_proveedor=pv.id AND sc.id_productor=pd.id
              AND sc.id_servicio=s.id AND sc.id_contrato=c.id
        ORDER BY pv.id, c.id;
END;

-- REPORTE 11

CREATE OR REPLACE PROCEDURE reporte11 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_fecha_inicio IN DATE, param_fecha_fin IN DATE, param_estado IN INTEGER) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT * FROM
            (SELECT NVL(TO_CHAR(param_fecha_inicio, 'DD/MM/YYYY'), 'Sin fecha') AS fecha_inicio,
                    NVL(TO_CHAR(param_fecha_fin, 'DD/MM/YYYY'), 'Sin fecha') AS fecha_fin,
                    pv.datos_empresa.nombre AS proveedor,
                    (SELECT prov.datos_empresa.logo AS logo FROM proveedores prov WHERE prov.id = pv.id) AS logo,
                    e.datos_ubicacion.nombre AS estado,
                    (SELECT COUNT(*) FROM pedidos p WHERE p.id_proveedor_usuario=pv.id AND p.id_estado_origen=e.id AND
                    ((TO_DATE(param_fecha_inicio) <= TRUNC(CAST(p.rango_fechas.fecha_inicio AS DATE))) OR param_fecha_inicio IS NULL) AND
                    ((TO_DATE(param_fecha_fin) >= TRUNC(CAST(p.rango_fechas.fecha_fin AS DATE))) OR param_fecha_fin IS NULL)) AS cant_peds
            FROM proveedores pv, pedidos p, estados e
            WHERE ((TO_DATE(param_fecha_inicio) <= TRUNC(CAST(p.rango_fechas.fecha_inicio AS DATE))) OR param_fecha_inicio IS NULL) AND
                  ((TO_DATE(param_fecha_fin) >= TRUNC(CAST(p.rango_fechas.fecha_fin AS DATE))) OR param_fecha_fin IS NULL)
                  AND (param_estado=e.id OR param_estado IS NULL) AND pv.id=p.id_proveedor_usuario AND e.id=p.id_estado_origen
            GROUP BY pv.id, p.id_proveedor_usuario, e.id, p.id_estado_origen, pv.datos_empresa.nombre, e.datos_ubicacion.nombre, param_fecha_fin, param_fecha_inicio
            ORDER BY cant_peds desc)
        WHERE rownum <=3;
END;