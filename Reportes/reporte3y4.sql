DROP TABLE tabla_temp_rep4;

/* tabla temporal con los datos que necesita el reporte 4 */
CREATE GLOBAL TEMPORARY TABLE tabla_temp_rep4(
    id_estado NUMBER,
    id_proveedor NUMBER,
    tipo CHAR(3),
    logo BLOB,
    empresa VARCHAR2(100),
    estado VARCHAR2(100),
    tipo_completo VARCHAR2(20),
    ctd_total INTEGER,
    ctd_reparacion INTEGER
) ON COMMIT PRESERVE ROWS;

CREATE OR REPLACE PROCEDURE reporte4 (ORACLE_REF_CURSOR OUT SYS_REFCURSOR, param_id_estado IN INTEGER) IS
    -- Cursor que toma en cuenta el parametro de estado
    CURSOR cursor_con_estado IS
        SELECT e.id AS id_estado, p.id AS id_proveedor, t.tipo AS tipo,
        EMPTY_BLOB() AS logo, p.datos_empresa.nombre AS empresa,
        e.datos_ubicacion.nombre AS estado,
        DECODE(t.tipo, 'bic', 'Bicicleta', 'mot', 'Moto', 'car', 'Carro', 'Camioneta') AS tipo_completo,
        0 AS ctd_total, 0 AS ctd_reparacion
        FROM proveedores p
        INNER JOIN transportes t ON t.id_proveedor = p.id
        INNER JOIN zonas_proveedores zp ON zp.id_proveedor = p.id
        INNER JOIN estados e ON t.id_estado = e.id
        WHERE e.id = param_id_estado
        GROUP BY e.id, p.id, t.tipo, p.datos_empresa.nombre, e.datos_ubicacion.nombre;
    -- Cursor que no toma en cuenta el parametro (se usa cuando param es NULL)
    CURSOR cursor_sin_estado IS
        SELECT e.id AS id_estado, p.id AS id_proveedor, t.tipo AS tipo,
        EMPTY_BLOB() AS logo, p.datos_empresa.nombre AS empresa,
        e.datos_ubicacion.nombre AS estado,
        DECODE(t.tipo, 'bic', 'Bicicleta', 'mot', 'Moto', 'car', 'Carro', 'Camioneta') AS tipo_completo,
        0 AS ctd_total, 0 AS ctd_reparacion
        FROM proveedores p
        INNER JOIN transportes t ON t.id_proveedor = p.id
        INNER JOIN zonas_proveedores zp ON zp.id_proveedor = p.id
        INNER JOIN estados e ON t.id_estado = e.id
        GROUP BY e.id, p.id, t.tipo, p.datos_empresa.nombre, e.datos_ubicacion.nombre;
    -- tipo de variable con el tipo de fila de la tabla temporal
    row_temp tabla_temp_rep4%rowtype;
BEGIN
    -- si el parametro no es nulo se usa el cursor con estado
    IF param_id_estado IS NOT NULL THEN
        OPEN cursor_con_estado;
        FETCH cursor_con_estado INTO row_temp;
        WHILE cursor_con_estado%FOUND LOOP
            -- se busca el logo de la empresa
            SELECT p.datos_empresa.logo INTO row_temp.logo FROM proveedores p WHERE p.id = row_temp.id_proveedor;
            -- se busca la cantidad de transportes totales
            SELECT COUNT(*) INTO row_temp.ctd_total FROM transportes t
            WHERE t.id_estado = row_temp.id_estado AND t.id_proveedor = row_temp.id_proveedor AND t.tipo = row_temp.tipo;
            -- se busca la cantidad de transportes dañados
            SELECT COUNT(*) INTO row_temp.ctd_reparacion FROM transportes t WHERE t.estatus = 'd'
            AND t.id_estado = row_temp.id_estado AND t.id_proveedor = row_temp.id_proveedor AND t.tipo = row_temp.tipo;
            -- se inserta la fila en la tabla temporal
            INSERT INTO tabla_temp_rep4 (id_estado, id_proveedor, tipo, logo, empresa, estado, tipo_completo, ctd_total, ctd_reparacion) VALUES
            (row_temp.id_estado, row_temp.id_proveedor, row_temp.tipo, row_temp.logo, row_temp.empresa, row_temp.estado, row_temp.tipo_completo,
             row_temp.ctd_total, row_temp.ctd_reparacion);
            FETCH cursor_con_estado INTO row_temp;
        END LOOP;
        CLOSE cursor_con_estado;
    -- si el parametro es nulo se usa el cursor sin estado
    ELSE
        OPEN cursor_sin_estado;
        FETCH cursor_sin_estado INTO row_temp;
        WHILE cursor_sin_estado%FOUND LOOP
            -- se busca el logo de la empresa
            SELECT p.datos_empresa.logo INTO row_temp.logo FROM proveedores p WHERE p.id = row_temp.id_proveedor;
            -- se busca la cantidad de transportes totales
            SELECT COUNT(*) INTO row_temp.ctd_total FROM transportes t
            WHERE t.id_estado = row_temp.id_estado AND t.id_proveedor = row_temp.id_proveedor AND t.tipo = row_temp.tipo;
            -- se busca la cantidad de transportes dañados
            SELECT COUNT(*) INTO row_temp.ctd_reparacion FROM transportes t WHERE t.estatus = 'd'
            AND t.id_estado = row_temp.id_estado AND t.id_proveedor = row_temp.id_proveedor AND t.tipo = row_temp.tipo;
            -- se inserta la fila en la tabla temporal
            INSERT INTO tabla_temp_rep4 (id_estado, id_proveedor, tipo, logo, empresa, estado, tipo_completo, ctd_total, ctd_reparacion) VALUES
            (row_temp.id_estado, row_temp.id_proveedor, row_temp.tipo, row_temp.logo, row_temp.empresa, row_temp.estado, row_temp.tipo_completo,
             row_temp.ctd_total, row_temp.ctd_reparacion);
            FETCH cursor_sin_estado INTO row_temp;
        END LOOP;
        CLOSE cursor_sin_estado;
    END IF;

    -- se agrega al cursor de referencia
    OPEN ORACLE_REF_CURSOR FOR SELECT * FROM tabla_temp_rep4 ORDER BY empresa, estado, tipo;
END;
