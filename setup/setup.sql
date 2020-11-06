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
    id_estado NUMERIC(2) NOT NULL,
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
    nombre VARCHAR(40) NOT NULL,
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
    numero_placa VARCHAR2(6),
    CONSTRAINT transportes_pk PRIMARY KEY (id, id_proveedor),
    CONSTRAINT tipo_transporte CHECK (tipo IN ('CAM', 'CAR', 'MOT', 'BIC')),
    CONSTRAINT estatus_transporte CHECK (estatus IN ('f', 'd'))
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
    direccion VARCHAR2(500) NOT NULL,
    id_estado NUMBER NOT NULL,
    id_municipio NUMBER NOT NULL,
    id_zona NUMBER NOT NULL,
    segundo_nombre VARCHAR2(50),
    CONSTRAINT usuarios_pk PRIMARY KEY (cedula, id_proveedor)
);

CREATE TABLE productos (
    id NUMBER NOT NULL,
    id_sector NUMBER NOT NULL,
    nombre VARCHAR2(100) NOT NULL,
    medida NUMBER NOT NULL,
    precio_unitario NUMBER NOT NULL,
    unidad_medida CHAR(2) NOT NULL,
    CONSTRAINT productos_pk PRIMARY KEY (id),
    CONSTRAINT unidad_medida_producto CHECK (unidad_medida IN ('kg', 'lt', 'g', 'ml'))
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
    id_estado NUMBER NOT NULL,
    id_municipio NUMBER NOT NULL,
    id_zona NUMBER NOT NULL,
    cedula_usuario NUMBER NOT NULL,
    id_proveedor_usuario NUMBER NOT NULL,
    id_transporte NUMBER NOT NULL,
    id_proveedor_transporte NUMBER NOT NULL,
    id_contrato NUMBER NOT NULL,
    id_productor_contrato NUMBER NOT NULL,
    referencia_direccion VARCHAR2(500),
    satisfaccion NUMBER(1),
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
ALTER TABLE usuarios ADD CONSTRAINT zona_usuario FOREIGN KEY (id_zona, id_municipio, id_estado) REFERENCES zonas (id, id_municipio, id_estado);
ALTER TABLE usuarios ADD CONSTRAINT proveedor_usuario FOREIGN KEY (id_proveedor) REFERENCES proveedores (id);

/* TABLA PRODUCTOS */
ALTER TABLE productos ADD CONSTRAINT sector_producto FOREIGN KEY (id_sector) REFERENCES sectores (id);

/* TABLA PRODUCTOS_PRODUCTOR */
ALTER TABLE productos_productor ADD CONSTRAINT producto_productos_productor FOREIGN KEY (id_producto) REFERENCES productos (id);
ALTER TABLE productos_productor ADD CONSTRAINT productor_productos_productor FOREIGN KEY (id_productor) REFERENCES productores (id);

/* TABLA PEDIDOS */
ALTER TABLE pedidos ADD CONSTRAINT usuario_pedido FOREIGN KEY (cedula_usuario, id_proveedor_usuario) REFERENCES usuarios (cedula, id_proveedor);
ALTER TABLE pedidos ADD CONSTRAINT zona_pedido FOREIGN KEY (id_zona, id_municipio, id_estado) REFERENCES zonas (id, id_municipio, id_estado);
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
