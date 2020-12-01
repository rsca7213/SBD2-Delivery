--REPORTE 1

CREATE OR REPLACE PROCEDURE reporte1 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT pv.datos_empresa.logo AS Logo, pv.datos_empresa.nombre AS Empresa,
   	(s.cantidad || ' envios * ' || CASE WHEN s.frecuencia='d' THEN 'Dia' WHEN s.frecuencia='s' THEN 'Semana' WHEN s.frecuencia='m' THEN 'Mes' ELSE 'Año' END) AS Modo,
   	(TO_DATE(TO_CHAR(s.rango_fechas.fecha_inicio,'DD/MM/YYYY'),'DD/MM/YYYY') || ' - ' || TO_DATE(TO_CHAR(s.rango_fechas.fecha_fin,'DD/MM/YYYY'),'DD-MM-YYYY')) AS Vigencia,
   	('$ ' || s.precio) AS Precio
	FROM servicios s, proveedores pv
	WHERE s.id_proveedor=pv.id
	ORDER BY pv.id;
END;

--REPORTE 2

CREATE OR REPLACE PROCEDURE reporte2 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_estado IN NUMBER) IS
BEGIN
    OPEN ORACLE_REF_CURSOR FOR
        SELECT pd.datos_empresa.nombre AS Logo, TO_DATE(TO_CHAR(c.rango_fechas.fecha_inicio,'DD/MM/YYYY'),'DD/MM/YYYY') AS Fecha_Registro,
       	pv.datos_empresa.nombre AS Proveedor, TO_DATE(TO_CHAR(c.rango_fechas.fecha_inicio,'DD/MM/YYYY'),'DD/MM/YYYY') AS Fehca_Desde,
       	TO_DATE(TO_CHAR(c.rango_fechas.fecha_fin,'DD/MM/YYYY'),'DD/MM/YYYY') AS Fehca_Hasta, e.datos_ubicacion.nombre AS Estado,
       	('$' || CASE WHEN c.descuento>0 THEN s.precio*(c.descuento/100) ELSE s.precio END || ' ' ||
        CASE WHEN s.frecuencia='d' THEN 'Diario' WHEN s.frecuencia='s' THEN 'Semanal' WHEN s.frecuencia='m' THEN 'Mensual' ELSE 'Anual' END) AS Monto
	FROM productores pd, contratos c, proveedores pv, servicios s, servicios_contratos sc, estados e, estados_contratos ec
	WHERE c.id_productor=pd.id AND s.id_proveedor=pv.id AND sc.id_contrato=c.id AND sc.id_productor=pd.id AND sc.id_proveedor=pv.id AND sc.id_servicio=s.id AND ec.id_estado=param_estado AND ec.id_estado=e.id AND ec.id_contrato=c.id AND ec.id_productor=pd.id
	ORDER BY pd.id, c.rango_fechas.fecha_inicio;
END;