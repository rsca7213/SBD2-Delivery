/* CREACION DE TIPOS DE DATOS ABSTRACTOS */
CREATE OR REPLACE TYPE datos_empresa AS OBJECT (
    nombre VARCHAR2(100),
    fecha_registro DATE,
    correo VARCHAR2(200),
    telefono VARCHAR2(16),
    logo BLOB,
    STATIC FUNCTION validar_nombre(nombre VARCHAR2) RETURN VARCHAR2,
    STATIC FUNCTION validar_fecha(fecha_registro DATE) RETURN DATE,
    STATIC FUNCTION validar_correo(correo VARCHAR2) RETURN VARCHAR2,
    STATIC FUNCTION validar_telefono(telefono VARCHAR2) RETURN VARCHAR2
);
/
CREATE OR REPLACE TYPE BODY datos_empresa IS
    STATIC FUNCTION validar_nombre(nombre VARCHAR2) RETURN VARCHAR2
        IS
        BEGIN
            IF REGEXP_LIKE(TRIM(nombre), '([a-zA-Z0-9áéíóúÁÉÍÓÚñÑ\s]){3,100}') THEN
                RETURN(TRIM(nombre));
            ELSE
                RAISE_APPLICATION_ERROR(-20001, 'Error: Nombre introducido invalido, debe tener entre 3 y 100 caracteres sin simbolos.');
            END IF;
        END;
    STATIC FUNCTION validar_fecha(fecha_registro DATE) RETURN DATE
        IS
        BEGIN
            IF fecha_registro <= CURRENT_DATE THEN
                RETURN(fecha_registro);
            ELSE
                RAISE_APPLICATION_ERROR(-20001, 'Error: La fecha de registro no es valida.');
            END IF;
        END;
    STATIC FUNCTION validar_correo(correo VARCHAR2) RETURN VARCHAR2
        IS
        BEGIN
            IF REGEXP_LIKE(TRIM(correo), '(^[A-Za-z]+[A-Za-z0-9.]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$)') THEN
                RETURN(TRIM(correo));
            ELSE
                RAISE_APPLICATION_ERROR(-20001, 'Error: El correo electrónico es invalido, debe tener una longitud menor a 200 caracteres.');
            END IF;
        END;
    STATIC FUNCTION validar_telefono(telefono VARCHAR2) RETURN VARCHAR2
        IS
        BEGIN
            IF REGEXP_LIKE(TRIM(telefono), '^(\+[0-9]{1,3}|0)[0-9]{3}[0-9]{7,8}') THEN
                RETURN(TRIM(telefono));
            ELSE
                RAISE_APPLICATION_ERROR(-20001, 'Error: El telefono es invalido, debe tener el código internacional y no debe tener letras.');
            END IF;
        END;
END;
/
CREATE OR REPLACE TYPE rango_fechas AS OBJECT (
    fecha_inicio TIMESTAMP,
    fecha_fin TIMESTAMP,
    STATIC FUNCTION validar_fechas (fecha_inicio TIMESTAMP, fecha_fin TIMESTAMP) RETURN rango_fechas
);
/
CREATE OR REPLACE TYPE BODY rango_fechas IS
    STATIC FUNCTION validar_fechas (fecha_inicio TIMESTAMP, fecha_fin TIMESTAMP) RETURN rango_fechas
    IS
    BEGIN
        IF fecha_fin <= fecha_inicio THEN
            RAISE_APPLICATION_ERROR(-20001, 'Error: La fecha fin debe ser mayor a la fecha de inicio.');
        ELSE
            RETURN rango_fechas(fecha_inicio, fecha_fin);
        END IF;
    END;
END;
/
CREATE OR REPLACE TYPE datos_ubicacion AS OBJECT (
    nombre VARCHAR2(100),
    latitud NUMERIC(9,6),
    longitud NUMERIC(9,6),
    STATIC FUNCTION validar_nombre (nombre VARCHAR2) RETURN VARCHAR2,
    STATIC FUNCTION validar_latitud (latitud NUMERIC) RETURN NUMERIC,
    STATIC FUNCTION validar_longitud (longitud NUMERIC) RETURN NUMERIC
);
/
CREATE OR REPLACE TYPE BODY datos_ubicacion IS
    STATIC FUNCTION validar_nombre(nombre VARCHAR2) RETURN VARCHAR2
        IS
        BEGIN
            IF REGEXP_LIKE(TRIM(nombre), '([a-zA-Z0-9áéíóúÁÉÍÓÚñÑ\s]){3,100}') THEN
                RETURN(TRIM(nombre));
            ELSE
                RAISE_APPLICATION_ERROR(-20001, 'Error: Nombre introducido invalido, debe tener entre 3 y 100 caracteres sin simbolos.');
            END IF;
        END;
    STATIC FUNCTION validar_latitud (latitud NUMERIC) RETURN NUMERIC
        IS
        BEGIN
            IF latitud > 90 OR latitud < -90 THEN
                RAISE_APPLICATION_ERROR(-20001, 'Error: La latitud no es valida, debe ser menor a 90 y mayor a -90.');
            ELSE
                RETURN latitud;
            END IF;
        END;
    STATIC FUNCTION validar_longitud (longitud NUMERIC) RETURN NUMERIC
        IS
        BEGIN
            IF longitud > 180 OR longitud < -180 THEN
                RAISE_APPLICATION_ERROR(-20001, 'Error: La longitud no es valida, debe ser menor a 180 y mayor a -180.');
            ELSE
                RETURN longitud;
            END IF;
        END;
END;
