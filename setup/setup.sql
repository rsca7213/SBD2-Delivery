/*
*********************************************************************************
                                TIPOS DE DATO ABSTRACTOS
*********************************************************************************
*/

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

/*
*********************************************************************************
                                DIRECTORIOS
*********************************************************************************
*/
/* Directorios de las imagenes */
CREATE DIRECTORY DIR_LOGOS_EMPRESAS AS 'C:\imagenes\logos_empresas';
CREATE DIRECTORY DIR_FOTOS_HOMBRE AS 'C:\imagenes\fotos_carnet_hombre';
CREATE DIRECTORY DIR_FOTOS_MUJER AS 'C:\imagenes\fotos_carnet_mujer';
--CREATE DIRECTORY DIR_LOGOS_EMPRESAS AS 'D:\imagenes\logos_empresas';
--CREATE DIRECTORY DIR_FOTOS_HOMBRE AS 'D:\imagenes\fotos_carnet_hombre';
--CREATE DIRECTORY DIR_FOTOS_MUJER AS 'D:\imagenes\fotos_carnet_mujer';
GRANT READ, WRITE, EXECUTE ON DIRECTORY DIR_LOGOS_EMPRESAS TO administrador;
GRANT READ, WRITE, EXECUTE ON DIRECTORY DIR_FOTOS_HOMBRE TO administrador;
GRANT READ, WRITE, EXECUTE ON DIRECTORY DIR_FOTOS_MUJER TO administrador;
/

/*
*********************************************************************************
                                CREATE TABLES
*********************************************************************************
*/
CREATE TABLE estados (
    id NUMBER NOT NULL,
    datos_ubicacion DATOS_UBICACION NOT NULL,
    CONSTRAINT estados_pk PRIMARY KEY (id)
);

CREATE TABLE municipios (
    id NUMBER NOT NULL,
    id_estado NUMBER NOT NULL,
    datos_ubicacion DATOS_UBICACION NOT NULL,
    CONSTRAINT municipios_pk PRIMARY KEY (id, id_estado)
);

CREATE TABLE zonas (
    id NUMBER NOT NULL,
    id_estado NUMBER NOT NULL,
    id_municipio NUMBER NOT NULL,
    datos_ubicacion DATOS_UBICACION NOT NULL,
    CONSTRAINT zonas_pk PRIMARY KEY (id, id_estado, id_municipio)
);

CREATE TABLE sectores (
    id NUMBER NOT NULL,
    nombre VARCHAR2(40) NOT NULL,
    CONSTRAINT sectores_pk PRIMARY KEY (id)
);

CREATE TABLE proveedores (
    id NUMBER NOT NULL,
    datos_empresa DATOS_EMPRESA NOT NULL,
    CONSTRAINT proveedores_pk PRIMARY KEY (id)
);

CREATE TABLE productores (
    id NUMBER NOT NULL,
    datos_empresa DATOS_EMPRESA NOT NULL,
    id_sector NUMBER NOT NULL,
    CONSTRAINT productores_pk PRIMARY KEY (id)
);

CREATE TABLE zonas_proveedores (
    id_estado NUMBER NOT NULL,
    id_municipio NUMBER NOT NULL,
    id_zona NUMBER NOT NULL,
    id_proveedor NUMBER NOT NULL,
    CONSTRAINT zonas_proveedores_pk PRIMARY KEY (id_estado, id_municipio, id_zona, id_proveedor)
);

CREATE TABLE zonas_productores (
    id_estado NUMBER NOT NULL,
    id_municipio NUMBER NOT NULL,
    id_zona NUMBER NOT NULL,
    id_productor NUMBER NOT NULL,
    CONSTRAINT zonas_productores_pk PRIMARY KEY (id_estado, id_municipio, id_zona, id_productor)
);

CREATE TABLE servicios (
    id NUMBER NOT NULL,
    id_proveedor NUMBER NOT NULL,
    rango_fechas RANGO_FECHAS NOT NULL,
    cantidad NUMBER NOT NULL,
    frecuencia CHAR(1) NOT NULL,
    precio NUMBER NOT NULL,
    CONSTRAINT servicios_pk PRIMARY KEY (id, id_proveedor),
    CONSTRAINT frecuencia_servicio CHECK (frecuencia IN ('d', 's', 'm', 'a'))
);

CREATE TABLE contratos (
    id NUMBER NOT NULL,
    id_productor NUMBER NOT NULL,
    rango_fechas RANGO_FECHAS NOT NULL,
    descuento NUMBER,
    CONSTRAINT contratos_pk PRIMARY KEY (id, id_productor)
);

CREATE TABLE servicios_contratos (
    id_contrato NUMBER NOT NULL,
    id_productor NUMBER NOT NULL,
    id_servicio NUMBER NOT NULL,
    id_proveedor NUMBER NOT NULL,
    CONSTRAINT servicios_contratos_pk PRIMARY KEY (id_contrato, id_productor, id_servicio, id_proveedor)
);

CREATE TABLE estados_contratos (
    id_estado NUMBER NOT NULL,
    id_contrato NUMBER NOT NULL,
    id_productor NUMBER NOT NULL,
    CONSTRAINT estados_contratos_pk PRIMARY KEY (id_estado, id_contrato, id_productor)
);

CREATE TABLE transportes (
    id NUMBER NOT NULL,
    id_proveedor NUMBER NOT NULL,
    id_estado NUMBER NOT NULL,
    id_municipio NUMBER NOT NULL,
    id_zona NUMBER NOT NULL,
    tipo CHAR(3) NOT NULL,
    estatus CHAR(1) NOT NULL,
    numero_placa VARCHAR2(7),
    CONSTRAINT transportes_pk PRIMARY KEY (id, id_proveedor),
    CONSTRAINT tipo_transporte CHECK (tipo IN ('cam', 'car', 'mot', 'bic')),
    CONSTRAINT estatus_transporte CHECK (estatus IN ('f', 'd')),
    CONSTRAINT placa_transporte_unique UNIQUE (numero_placa)
);

CREATE TABLE usuarios (
    cedula NUMBER(8) NOT NULL,
    id_proveedor NUMBER NOT NULL,
    primer_nombre VARCHAR2(50) NOT NULL,
    primer_apellido VARCHAR2(50) NOT NULL,
    segundo_apellido VARCHAR2(50) NOT NULL,
    foto BLOB NOT NULL,
    email VARCHAR2(200) NOT NULL,
    fecha_registro DATE NOT NULL,
    segundo_nombre VARCHAR2(50),
    CONSTRAINT usuarios_pk PRIMARY KEY (cedula, id_proveedor)
);

CREATE TABLE zonas_usuarios (
    cedula_usuario NUMBER(8) NOT NULL,
    id_proveedor_usuario NUMBER NOT NULL,
    id_estado NUMBER NOT NULL,
    id_municipio NUMBER NOT NULL,
    id_zona NUMBER NOT NULL,
    direccion VARCHAR2(500) NOT NULL,
    CONSTRAINT zonas_usuarios_pk PRIMARY KEY (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona)
);

CREATE TABLE productos (
    id NUMBER NOT NULL,
    id_sector NUMBER NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    medida NUMBER NOT NULL,
    precio_unitario NUMBER NOT NULL,
    unidad_medida CHAR(2) NOT NULL,
    CONSTRAINT productos_pk PRIMARY KEY (id),
    CONSTRAINT unidad_medida_producto CHECK (unidad_medida IN ('kg', 'lt', 'g', 'ml')),
    CONSTRAINT nombre_producto_unique UNIQUE (nombre)
);

CREATE TABLE productos_productor (
    id_producto NUMBER NOT NULL,
    id_productor NUMBER NOT NULL,
    CONSTRAINT productos_productor_pk PRIMARY KEY (id_producto, id_productor)
);

CREATE TABLE pedidos (
    tracking NUMBER NOT NULL,
    rango_fechas RANGO_FECHAS NOT NULL,
    estatus CHAR(2) NOT NULL,
    /* lugar de origen */
    id_estado_origen NUMBER NOT NULL,
    id_municipio_origen NUMBER NOT NULL,
    id_zona_origen NUMBER NOT NULL,
    /* lugar de destino */
    cedula_usuario NUMBER NOT NULL,
    id_proveedor_usuario NUMBER NOT NULL,
    id_estado_destino NUMBER NOT NULL,
    id_municipio_destino NUMBER NOT NULL,
    id_zona_destino NUMBER NOT NULL,
    /* contrato */
    id_contrato NUMBER NOT NULL,
    id_productor_contrato NUMBER NOT NULL,
    /* referencia, satisfaccion */
    referencia_direccion VARCHAR2(500),
    satisfaccion NUMBER(1),
    /* transporte */
    id_transporte NUMBER,
    id_proveedor_transporte NUMBER,
    /* precios */
    descuento_productos NUMBER(3),
    CONSTRAINT pedidos_pk PRIMARY KEY (tracking),
    CONSTRAINT estatus_pedido CHECK (estatus IN ('es', 'et', 'en')),
    CONSTRAINT satisfaccion_pedido CHECK(satisfaccion >= 1 AND satisfaccion <=5)
);

CREATE TABLE productos_pedidos (
    tracking_pedido NUMBER NOT NULL,
    id_producto NUMBER NOT NULL,
    cantidad NUMBER NOT NULL,
    CONSTRAINT productos_pedidos_pk PRIMARY KEY (tracking_pedido, id_producto)
);

/

/*
*********************************************************************************
                            ALTER TABLES
*********************************************************************************
*/

/* TABLA MUNICIPIOS */
ALTER TABLE municipios ADD CONSTRAINT estado_municio_fk FOREIGN KEY (id_estado) REFERENCES estados (id);

/* TABLA ZONAS */
ALTER TABLE zonas ADD CONSTRAINT municipio_zona_pk FOREIGN KEY (id_estado, id_municipio) REFERENCES municipios (id_estado, id);

/* TABLA PRODUCTORES */
ALTER TABLE productores ADD CONSTRAINT sector_productor FOREIGN KEY (id_sector) REFERENCES sectores (id);

/* TABLA ZONAS_PROVEEDORES */
ALTER TABLE zonas_proveedores ADD CONSTRAINT zona_zonas_proveedores FOREIGN KEY (id_zona, id_municipio, id_estado) REFERENCES zonas (id, id_municipio, id_estado);
ALTER TABLE zonas_proveedores ADD CONSTRAINT proveedor_zonas_proveedores FOREIGN KEY (id_proveedor) REFERENCES proveedores (id);

/* TABLA ZONAS_PRODUCTORES */
ALTER TABLE zonas_productores ADD CONSTRAINT zona_zonas_productores FOREIGN KEY (id_zona, id_municipio, id_estado) REFERENCES zonas (id, id_municipio, id_estado);
ALTER TABLE zonas_productores ADD CONSTRAINT productor_zonas_productores FOREIGN KEY (id_productor) REFERENCES productores (id);

/* TABLA SERVICIOS */
ALTER TABLE servicios ADD CONSTRAINT proveedor_servicio FOREIGN KEY (id_proveedor) REFERENCES proveedores (id);

/* TABLA CONTRATOS */
ALTER TABLE contratos ADD CONSTRAINT productor_contrato FOREIGN KEY (id_productor) REFERENCES productores (id);

/* TABLA SERVICIOS_CONTRATOS */
ALTER TABLE servicios_contratos ADD CONSTRAINT servicio_servicios_contratos FOREIGN KEY (id_servicio, id_proveedor) REFERENCES servicios (id, id_proveedor);
ALTER TABLE servicios_contratos ADD CONSTRAINT contrato_servicios_contratos FOREIGN KEY (id_contrato, id_productor) REFERENCES contratos (id, id_productor);

/* TABLA ESTADOS_CONTRATOS */
ALTER TABLE estados_contratos ADD CONSTRAINT estado_estados_contratos FOREIGN KEY (id_estado) REFERENCES estados (id);
ALTER TABLE estados_contratos ADD CONSTRAINT contrato_estados_contratos FOREIGN KEY (id_contrato, id_productor) REFERENCES contratos (id, id_productor);

/* TABLA TRANSPORTES */
ALTER TABLE transportes ADD CONSTRAINT zona_transporte FOREIGN KEY (id_zona, id_municipio, id_estado) REFERENCES zonas (id, id_municipio, id_estado);
ALTER TABLE transportes ADD CONSTRAINT proveedor_transporte FOREIGN KEY (id_proveedor) REFERENCES proveedores (id);

/* TABLA USUARIOS */
ALTER TABLE usuarios ADD CONSTRAINT proveedor_usuario FOREIGN KEY (id_proveedor) REFERENCES proveedores (id);

/* TABLA ZONAS_USUARIOS */
ALTER TABLE zonas_usuarios ADD CONSTRAINT usuario_zonas_usuarios FOREIGN KEY (cedula_usuario, id_proveedor_usuario) REFERENCES usuarios (cedula, id_proveedor);
ALTER TABLE zonas_usuarios ADD CONSTRAINT zona_zonas_usuarios FOREIGN KEY (id_zona, id_municipio, id_estado) REFERENCES zonas (id, id_municipio, id_estado);

/* TABLA PRODUCTOS */
ALTER TABLE productos ADD CONSTRAINT sector_producto FOREIGN KEY (id_sector) REFERENCES sectores (id);

/* TABLA PRODUCTOS_PRODUCTOR */
ALTER TABLE productos_productor ADD CONSTRAINT producto_productos_productor FOREIGN KEY (id_producto) REFERENCES productos (id);
ALTER TABLE productos_productor ADD CONSTRAINT productor_productos_productor FOREIGN KEY (id_productor) REFERENCES productores (id);

/* TABLA PEDIDOS */
ALTER TABLE pedidos ADD CONSTRAINT zonausuario_pedido FOREIGN KEY (cedula_usuario, id_proveedor_usuario, id_zona_destino, id_municipio_destino, id_estado_destino)
REFERENCES zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_zona, id_municipio, id_estado);
ALTER TABLE pedidos ADD CONSTRAINT zona_pedido FOREIGN KEY (id_zona_origen, id_municipio_origen, id_estado_origen) REFERENCES zonas (id, id_municipio, id_estado);
ALTER TABLE pedidos ADD CONSTRAINT contrato_pedido FOREIGN KEY (id_contrato, id_productor_contrato) REFERENCES contratos (id, id_productor);
ALTER TABLE pedidos ADD CONSTRAINT transporte_pedido FOREIGN KEY (id_transporte, id_proveedor_transporte) REFERENCES transportes (id, id_proveedor);

/* TABLA PRODUCTOS_PEDIDOS */
ALTER TABLE productos_pedidos ADD CONSTRAINT producto_productos_pedidos FOREIGN KEY (id_producto) REFERENCES productos (id);
ALTER TABLE productos_pedidos ADD CONSTRAINT pedido_productos_pedidos FOREIGN KEY (tracking_pedido) REFERENCES pedidos (tracking);

/

/*
*********************************************************************************
                                CREATE SEQUENCES
*********************************************************************************
*/

/* TABLA ESTADOS */
CREATE SEQUENCE id_estado_sec INCREMENT BY 1 START WITH 1;

/* TABLA MUNICIPIOS */
CREATE SEQUENCE id_municipio_sec INCREMENT BY 1 START WITH 1;

/* TABLA ZONAS */
CREATE SEQUENCE id_zona_sec INCREMENT BY 1 START WITH 1;

/* TABLA SECTORES */
CREATE SEQUENCE id_sector_sec INCREMENT BY 1 START WITH 1;

/* TABLA PROVEEDORES */
CREATE SEQUENCE id_proveedor_sec INCREMENT BY 1 START WITH 1;

/* TABLA PRODUCTORES */
CREATE SEQUENCE id_productor_sec INCREMENT BY 1 START WITH 1;

/* TABLA SERVICIOS */
CREATE SEQUENCE id_servicio_sec INCREMENT BY 1 START WITH 1;

/* TABLA CONTRATOS */
CREATE SEQUENCE id_contrato_sec INCREMENT BY 1 START WITH 1;

/* TABLA TRANSPORTES */
CREATE SEQUENCE id_transporte_sec INCREMENT BY 1 START WITH 1;

/* TABLA PRODUCTOS */
CREATE SEQUENCE id_producto_sec INCREMENT BY 1 START WITH 1;

/* TABLE PEDIDOS */
CREATE SEQUENCE tracking_pedido_sec INCREMENT BY 1 START WITH 1;

/* TABLA USUARIOS */
CREATE SEQUENCE cedula_usuario_sec INCREMENT BY 1 START WITH 20000000;
