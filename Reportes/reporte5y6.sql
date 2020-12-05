--REPORTE 5

CREATE OR REPLACE PROCEDURE reporte5 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_estado IN INTEGER) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT * FROM (SELECT e.datos_ubicacion.nombre Estado,(SELECT produ.datos_empresa.logo AS logo FROM productores produ WHERE produ.id = prod.id) Empresa,prov.datos_empresa.nombre "Nombre Proveedor de Servicio", (SELECT prove.datos_empresa.logo AS logo FROM proveedores prove WHERE prove.id = prov.id) "Logo Proveedor de Servicio",
        mun.datos_ubicacion.nombre Municipio,
        CASE (SELECT COUNT(*) FROM pedidos pped where pped.ID_PROVEEDOR_USUARIO = ped.ID_PROVEEDOR_USUARIO and pped.ID_PRODUCTOR_CONTRATO = ped.ID_PRODUCTOR_CONTRATO AND pped.id_municipio_destino = ped.ID_MUNICIPIO_DESTINO)
            WHEN 1 THEN  (SELECT COUNT(*) FROM pedidos pped where pped.ID_PROVEEDOR_USUARIO = ped.ID_PROVEEDOR_USUARIO and pped.ID_PRODUCTOR_CONTRATO = ped.ID_PRODUCTOR_CONTRATO AND pped.id_municipio_destino = ped.ID_MUNICIPIO_DESTINO) || ' unidad'
            ELSE (SELECT COUNT(*) FROM pedidos pped where pped.ID_PROVEEDOR_USUARIO = ped.ID_PROVEEDOR_USUARIO and pped.ID_PRODUCTOR_CONTRATO = ped.ID_PRODUCTOR_CONTRATO AND pped.id_municipio_destino = ped.ID_MUNICIPIO_DESTINO) || ' unidades' END "Cantidad de Envios Recibidos"
        FROM pedidos ped, estados e, zonas z, proveedores prov, productores prod, municipios mun
        WHERE (param_estado IS NULL AND (ped.id_estado_destino = e.id AND ped.id_zona_destino = z.id AND prov.id = ped.ID_PROVEEDOR_USUARIO AND prod.id = ped.ID_PRODUCTOR_CONTRATO AND mun.id=z.ID_MUNICIPIO) ) OR (param_estado = ped.ID_ESTADO_DESTINO AND (ped.id_estado_destino = e.id AND ped.id_zona_destino = z.id AND prov.id = ped.ID_PROVEEDOR_USUARIO AND prod.id = ped.ID_PRODUCTOR_CONTRATO AND mun.id=z.ID_MUNICIPIO) )
        GROUP BY mun.id,prov.datos_empresa.nombre, prod.datos_empresa.nombre, ped.ID_PROVEEDOR_USUARIO, ped.ID_PRODUCTOR_CONTRATO, e.datos_ubicacion.nombre, mun.datos_ubicacion.nombre, ped.ID_MUNICIPIO_DESTINO, prod.id, prov.id
        ORDER BY "Cantidad de Envios Recibidos" desc,mun.id, ped.ID_PROVEEDOR_USUARIO, ped.ID_PRODUCTOR_CONTRATO) WHERE rownum <=5;
END;

CREATE OR REPLACE PROCEDURE reporte6 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_estado IN INTEGER, param_fecha IN DATE) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT u.CEDULA CEDULA, (SELECT us.FOTO AS logo FROM usuarios us WHERE us.CEDULA = u.CEDULA AND rownum < 2) Foto , u.PRIMER_NOMBRE "Primer Nombre" , NVL(u.SEGUNDO_NOMBRE,' ') "Segundo Nombre",
               u.PRIMER_APELLIDO "Primer Apellido", u.SEGUNDO_APELLIDO "Segundo Apellido", u.EMAIL Email, (SELECT pro.DATOS_EMPRESA.LOGO AS logo FROM proveedores pro WHERE pro.ID = u.ID_PROVEEDOR) "Aplicacion Registrada",
               prov.DATOS_EMPRESA.NOMBRE "Nombre de la aplicacion registrada", TO_CHAR(u.FECHA_REGISTRO, 'DD/MM/YYYY') "Cliente Desde", e.DATOS_UBICACION.NOMBRE Estado, ( SELECT * FROM (SELECT uz.direccion FROM zonas_usuarios uz WHERE uz.ID_ESTADO = zu.ID_ESTADO AND uz.ID_PROVEEDOR_USUARIO = zu.ID_PROVEEDOR_USUARIO AND uz.CEDULA_USUARIO = zu.CEDULA_USUARIO ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM < 2) Direccion
        FROM usuarios u, zonas_usuarios zu, proveedores prov, estados e
        WHERE (((param_estado IS null) AND (param_fecha is null)) AND (u.cedula = zu.CEDULA_USUARIO AND zu.ID_ESTADO IS NOT NULL AND prov.id = u.ID_PROVEEDOR AND e.ID = zu.ID_ESTADO AND zu.ID_PROVEEDOR_USUARIO = u.ID_PROVEEDOR))
               OR (((param_estado=zu.ID_ESTADO) AND (param_fecha is null) ) AND (u.cedula = zu.CEDULA_USUARIO AND prov.id = u.ID_PROVEEDOR AND e.ID = zu.ID_ESTADO AND zu.ID_PROVEEDOR_USUARIO = u.ID_PROVEEDOR))
               OR (((param_estado IS null) AND (u.FECHA_REGISTRO >= param_fecha)) AND (u.cedula = zu.CEDULA_USUARIO AND zu.ID_ESTADO IS NOT NULL AND prov.id = u.ID_PROVEEDOR AND e.ID = zu.ID_ESTADO AND zu.ID_PROVEEDOR_USUARIO = u.ID_PROVEEDOR))
               OR (((param_estado=zu.ID_ESTADO) AND (u.FECHA_REGISTRO >= param_fecha) ) AND (u.cedula = zu.CEDULA_USUARIO AND prov.id = u.ID_PROVEEDOR AND e.ID = zu.ID_ESTADO AND zu.ID_PROVEEDOR_USUARIO = u.ID_PROVEEDOR))
        GROUP BY u.CEDULA, u.PRIMER_NOMBRE, u.SEGUNDO_NOMBRE, u.PRIMER_APELLIDO, u.SEGUNDO_APELLIDO, u.EMAIL, u.ID_PROVEEDOR, prov.DATOS_EMPRESA.NOMBRE,
                 prov.id, e.DATOS_UBICACION.NOMBRE, zu.CEDULA_USUARIO, zu.ID_PROVEEDOR_USUARIO, zu.ID_ESTADO, u.FECHA_REGISTRO
        ORDER BY u.CEDULA, u.PRIMER_NOMBRE, u.PRIMER_APELLIDO, prov.DATOS_EMPRESA.NOMBRE;
END;
