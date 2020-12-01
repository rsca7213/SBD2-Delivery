--REPORTE 5

CREATE OR REPLACE PROCEDURE reporte5 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_estado IN INTEGER) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT z.datos_ubicacion.nombre, ed.ID_ZONA_DESTINO, e.datos_ubicacion.nombre, prov.datos_empresa.nombre proveedor,
                prod.datos_empresa.nombre productor, (SELECT COUNT(*) FROM pedidos ped where ped.id_zona_destino = ed.id_zona_destino and ped.ID_PROVEEDOR_USUARIO = ed.ID_PROVEEDOR_USUARIO and ped.ID_PRODUCTOR_CONTRATO = ed.ID_PRODUCTOR_CONTRATO) cantidad
        FROM pedidos ed, estados e, zonas z, proveedores prov, productores prod
        WHERE (param_estado IS NULL AND (ed.id_estado_destino = e.id AND ed.id_zona_destino = z.id AND prov.id = ed.ID_PROVEEDOR_USUARIO AND prod.id = ed.ID_PRODUCTOR_CONTRATO)) OR (param_estado = ed.ID_ESTADO_DESTINO AND (ed.id_estado_destino = e.id AND ed.id_zona_destino = z.id AND prov.id = ed.ID_PROVEEDOR_USUARIO AND prod.id = ed.ID_PRODUCTOR_CONTRATO))
        GROUP BY z.id, prov.datos_empresa.nombre, prod.datos_empresa.nombre, ed.ID_PROVEEDOR_USUARIO, ed.ID_PRODUCTOR_CONTRATO, z.datos_ubicacion.nombre, ed.ID_ZONA_DESTINO, e.datos_ubicacion.nombre
        ORDER BY cantidad desc,z.id, ed.ID_PROVEEDOR_USUARIO, ed.ID_PRODUCTOR_CONTRATO;
END;
