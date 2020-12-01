
CREATE OR REPLACE PROCEDURE reporte3 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_sector IN NUMBER,
param_fecha_inicio IN DATE, param_fecha_fin IN DATE, param_estado IN NUMBER) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT s.nombre AS sector, prod.datos_empresa.nombre AS productor, prov.datos_empresa.nombre AS proveedor,
        (SELECT produ.datos_empresa.logo AS logo FROM productores produ WHERE produ.id = prod.id) AS logo,
        param_fecha_inicio AS fecha_inicio, param_fecha_fin AS fecha_fin, e.datos_ubicacion.nombre AS estado,
        (SELECT COUNT(*) FROM pedidos ped WHERE ped.estatus = 'en' AND ped.id_proveedor_usuario = prov.id
        AND ped.id_productor_contrato = prod.id AND ped.id_estado_origen = e.id
        AND TO_DATE(param_fecha_inicio, 'DD/MM/YYYY') < ped.rango_fechas.fecha_inicio
        AND TO_DATE(param_fecha_fin, 'DD/MM/YYYY') > ped.rango_fechas.fecha_fin) AS ctd_envios
        FROM productores prod INNER JOIN sectores s ON s.id = prod.id_sector
        INNER JOIN contratos cont ON cont.id_productor = prod.id
        INNER JOIN servicios_contratos sc ON cont.id = sc.id_contrato AND cont.id_productor = sc.id_productor
        INNER JOIN proveedores prov ON sc.id_proveedor = prov.id
        INNER JOIN estados_contratos ec ON cont.id = ec.id_contrato AND cont.id_productor = ec.id_productor
        INNER JOIN estados e ON ec.id_estado = e.id
        WHERE s.id = param_sector AND e.id = param_estado;
END;

CREATE OR REPLACE PROCEDURE reporte4 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_estado IN INTEGER) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT p.id AS id_proveedor, e.id AS id_estado, t.tipo AS tipo_transporte,
        (SELECT pr.datos_empresa.logo AS logo FROM proveedores pr WHERE pr.id = p.id) AS logo,
        p.datos_empresa.nombre AS empresa, e.datos_ubicacion.nombre AS estado,
        DECODE(t.tipo, 'mot', 'Moto', 'car', 'Carro', 'bic', 'Bicicleta', 'Camioneta') AS tipo_completo,
        (SELECT COUNT(*) AS ctd_total FROM transportes tr WHERE tr.id_estado = e.id AND tr.id_proveedor = p.id
        AND tr.tipo = t.tipo) AS ctd_total,
        (SELECT COUNT(*) AS ctd_reparacion FROM transportes tr WHERE tr.id_estado = e.id AND tr.id_proveedor = p.id
        AND tr.estatus = 'd' AND tr.tipo = t.tipo) AS ctd_reparacion
        FROM transportes t INNER JOIN proveedores p ON p.id = t.id_proveedor
        INNER JOIN estados e ON e.id = t.id_estado
        WHERE (param_estado IS NULL) OR (t.id_estado = param_estado)
        GROUP BY p.id, e.id, t.tipo, p.datos_empresa.nombre, e.datos_ubicacion.nombre
        ORDER BY p.datos_empresa.nombre, e.datos_ubicacion.nombre, t.tipo;
END;
