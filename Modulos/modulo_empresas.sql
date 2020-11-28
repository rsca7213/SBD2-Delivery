CREATE OR REPLACE PROCEDURE crear_sectores IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Insertando sectores de comercio...');
    INSERT INTO sectores (id, nombre) VALUES (id_sector_sec.nextval, 'Alimenticio');
    INSERT INTO sectores (id, nombre) VALUES (id_sector_sec.nextval, 'Farmaceutico');
    INSERT INTO sectores (id, nombre) VALUES (id_sector_sec.nextval, 'Vestimenta');
    INSERT INTO sectores (id, nombre) VALUES (id_sector_sec.nextval, 'Tecnologico');
    INSERT INTO sectores (id, nombre) VALUES (id_sector_sec.nextval, 'Botanico');
    DBMS_OUTPUT.PUT_LINE('Sectores de comercio creados exitosamente.');
END;

CREATE OR REPLACE PROCEDURE asignar_sucursales_proveedores IS
cantidad_zonas NUMBER;
zonas_a_insertar NUMBER;
BEGIN
    cantidad_zonas := 0;
    zonas_a_insertar := 0;
    SELECT COUNT(*) INTO cantidad_zonas FROM zonas;


    --Se asignan n zonas a cada proveedor
    FOR prov IN(SELECT * FROM proveedores)
    LOOP
        zonas_a_insertar := CEIL(DBMS_RANDOM.VALUE(1,cantidad_zonas)) ;
        zonas_a_insertar := zonas_a_insertar MOD 45;
        DBMS_OUTPUT.PUT_LINE('Insertando ' || zonas_a_insertar || ' zonas para el proveedor: ' || prov.datos_empresa.nombre);
        FOR z IN (SELECT id_estado, id_municipio, id FROM (SELECT id_estado, id_municipio, id FROM zonas ORDER BY DBMS_RANDOM.RANDOM()) WHERE ROWNUM <(zonas_a_insertar+1))
        LOOP
            INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor)
            VALUES (z.ID_ESTADO, z.ID_MUNICIPIO, z.ID, prov.ID);
        END LOOP;

    END LOOP;

END;


CREATE OR REPLACE PROCEDURE asignar_sucursales_productores IS
cantidad_zonas NUMBER;
zonas_a_insertar NUMBER;
BEGIN
    cantidad_zonas := 0;
    zonas_a_insertar := 0;
    SELECT COUNT(*) INTO cantidad_zonas FROM zonas;


    --Se asignan n zonas a cada productor
    FOR prod IN(SELECT * FROM productores)
    LOOP
        zonas_a_insertar := CEIL(DBMS_RANDOM.VALUE(1,cantidad_zonas)) ;
        zonas_a_insertar := zonas_a_insertar MOD 45;
        DBMS_OUTPUT.PUT_LINE('Insertando ' || zonas_a_insertar || ' zonas para el productor: ' || prod.datos_empresa.nombre);
        FOR z IN (SELECT id_estado, id_municipio, id FROM (SELECT id_estado, id_municipio, id FROM zonas ORDER BY DBMS_RANDOM.RANDOM()) WHERE ROWNUM <(zonas_a_insertar+1))
        LOOP
            INSERT INTO ZONAS_PRODUCTORES (id_estado, id_municipio, id_zona, id_productor)
            VALUES (z.ID_ESTADO, z.ID_MUNICIPIO, z.ID, prod.ID);
        END LOOP;

    END LOOP;

END;

CREATE OR REPLACE PROCEDURE crear_proveedores IS
    datos_emp DATOS_EMPRESA;
    img_blob BLOB;
    img_file BFILE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Insertando empresas proveedoras...');
    /* se realizan inserts de 10 empresas proveedoras de delivery con su logo y datos */
    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Yummy'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('02/02/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('ayuda@pideyummy.com'),
        datos_empresa.VALIDAR_TELEFONO('+58412601033'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'yummy.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Traetelo'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('07/01/2019', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('contactve@traetelo.com'),
        datos_empresa.VALIDAR_TELEFONO('+584145601234'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'traetelo.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('UbiGo'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('01/01/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('info@ubigo.ve'),
        datos_empresa.VALIDAR_TELEFONO('+582124532167'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'ubigo.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('PedidosToGo'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('01/01/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('pedidostogo@pedidostogo.ve'),
        datos_empresa.VALIDAR_TELEFONO('+584142900285'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'pedidostogo.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('DeTodidoApp'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('09/12/2018', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('ayuda@detoditoapp.ve'),
        datos_empresa.VALIDAR_TELEFONO('+584247894518'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'detoditoapp.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('YoloPido'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('19/06/2019', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('contacto@yolopido.ve'),
        datos_empresa.VALIDAR_TELEFONO('+584121009989'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'yolopido.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Delivery Food Ve'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('28/09/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('deliveryfoodve@gmail.com'),
        datos_empresa.VALIDAR_TELEFONO('+584242415262'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'deliveryfood.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('PedidosYa'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('20/10/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('infove@pedidosya.ar'),
        datos_empresa.VALIDAR_TELEFONO('+584149945319'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'pedidosya.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Panas Express'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('19/09/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('panasexpressve@gmail.com'),
        datos_empresa.VALIDAR_TELEFONO('+584169665214'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'panasexpress.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Kepido Express'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('17/01/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('hola@kepido.com.ve'),
        datos_empresa.VALIDAR_TELEFONO('+582129157602'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'kepidoexpress.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);
    DBMS_OUTPUT.PUT_LINE('Empresas proveedoras creadas exitosamente.');
    DBMS_OUTPUT.PUT_LINE('Asignando las zonas del territorio venezolano en donde las empresas proveedoras tienen sucursales...');
    asignar_sucursales_proveedores();
    DBMS_OUTPUT.PUT_LINE('Se asignaron exitosamente las zonas en donde cada empresa proveedora tiene sucursales.');
END;



CREATE OR REPLACE PROCEDURE crear_productores IS
    datos_emp DATOS_EMPRESA;
    img_blob BLOB;
    img_file BFILE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Insertando empresas productoras...');
    /* se realizan inserts de 10 empresas productoras con su logo y datos */
    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Mc Donalds'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('15/05/2016', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('informacion@mcdonalds.ve'),
        datos_empresa.VALIDAR_TELEFONO('+582125978451'),
        EMPTY_BLOB()
    ), 1) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'mcdonalds.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Burger King'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('19/04/2017', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('ayudame@burgerking.ve'),
        datos_empresa.VALIDAR_TELEFONO('+584166608187'),
        EMPTY_BLOB()
    ), 1) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'burgerking.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Subway'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('21/12/2019', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('ayuda@subwayve.com'),
        datos_empresa.VALIDAR_TELEFONO('+582122637975'),
        EMPTY_BLOB()
    ), 1) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'subway.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Full Pizza'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('23/08/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('fullpizzave@gmail.com'),
        datos_empresa.VALIDAR_TELEFONO('+582122854035'),
        EMPTY_BLOB()
    ), 1) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'fullpizza.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Pizza Hut'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('30/03/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('pedido@pizzahut.ve'),
        datos_empresa.VALIDAR_TELEFONO('+582512550848'),
        EMPTY_BLOB()
    ), 1) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'pizzahut.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Locatel'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('07/07/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('contactanos@locatel.com.ve'),
        datos_empresa.VALIDAR_TELEFONO('+585015622835'),
        EMPTY_BLOB()
    ), 2) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'locatel.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Farmatodo'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('09/11/2019', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('ayuda@farmatodo.com.ve'),
        datos_empresa.VALIDAR_TELEFONO('+582122666431'),
        EMPTY_BLOB()
    ), 2) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'farmatodo.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('KFC'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('19/01/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('contacto@grupokfc.com'),
        datos_empresa.VALIDAR_TELEFONO('+582122374545'),
        EMPTY_BLOB()
    ), 1) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'kfc.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Churchs Chicken'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('27/02/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('pedidos@churchicken.com.ve'),
        datos_empresa.VALIDAR_TELEFONO('+584142283752'),
        EMPTY_BLOB()
    ), 1) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'churchschicken.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Avila Burger'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('18/09/2018', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('pidelo@avilaburger.ve'),
        datos_empresa.VALIDAR_TELEFONO('+584241257355'),
        EMPTY_BLOB()
    ), 1) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'avilaburger.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);
    DBMS_OUTPUT.PUT_LINE('Empresas productoras creadas exitosamente.');
    DBMS_OUTPUT.PUT_LINE('Asignando las zonas del territorio venezolano en donde las empresas productoras tienen sucursales...');
    asignar_sucursales_productores();
    DBMS_OUTPUT.PUT_LINE('Se asignaron exitosamente las zonas en donde cada empresa productora tiene sucursales.');
END;

CREATE OR REPLACE PROCEDURE crear_servicios IS
cant_serv NUMBER;
cant_env NUMBER;
aux NUMBER;
prec_uni NUMBER;
duracion NUMBER;
fecha TIMESTAMP;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Insertando servicios de proveedores...');
    /*se toman todos los proveedores registrados en el sistema*/
    FOR prov IN (SELECT p.id AS id, p.datos_empresa.nombre AS nombre FROM proveedores p) LOOP
        /*cantidad aleatoria entre 1 y 5 de servicios a crear*/
        SELECT ROUND(DBMS_RANDOM.VALUE(1,5)) INTO cant_serv FROM dual;
        DBMS_OUTPUT.PUT_LINE('Insertando ' || cant_serv || ' servicios para el proveedor ' || prov.nombre);
        /*se insertan n servicios al proveedor p*/
        FOR serv IN 1..cant_serv LOOP
            /*se define de manera aleatoria un precio unitario por envio*/
            SELECT ROUND(DBMS_RANDOM.VALUE(1, 5)) INTO prec_uni FROM dual;
            /*se define de manera aleatoria el tipo de frecuencia del envio*/
            SELECT ROUND(DBMS_RANDOM.VALUE(1, 4)) INTO aux FROM dual;
            /*se define de manera aleatoria la vigencia del servicio*/
            SELECT ROUND(DBMS_RANDOM.VALUE(1, 12)) INTO duracion FROM dual;
            /*se define de manera aleatoria una fecha de inicio del servicio*/
            SELECT TO_DATE('2020-10-13','YYYY-MM-DD')+TRUNC(DBMS_RANDOM.VALUE(1,123)) INTO fecha FROM dual;
            /*se define de manera aleatoria la cantidad de pedidos del servicio*/
            SELECT ROUND(DBMS_RANDOM.VALUE(10, 30)) INTO cant_env FROM dual;
            IF aux=1 THEN
                /*frecuencia del servicio: diaria*/
                INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES
                (id_servicio_sec.nextval,prov.id,
                 rango_fechas.VALIDAR_FECHAS(fecha,add_months(fecha,duracion)),
                 cant_env,'d',prec_uni*cant_env);
            ELSIF aux=2 THEN
                /*frecuencia del servicio: semanal*/
                INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES
                (id_servicio_sec.nextval,prov.id,
                 rango_fechas.VALIDAR_FECHAS(fecha,add_months(fecha,duracion)),
                 cant_env,'s',prec_uni*cant_env);
            ELSIF aux=3 THEN
                /*frecuencia del servicio: mensual*/
                INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES
                (id_servicio_sec.nextval,prov.id,
                 rango_fechas.VALIDAR_FECHAS(fecha,add_months(fecha,duracion)),
                 cant_env,'m',prec_uni*cant_env);
            ELSE
                /*frecuencia del servicio: anual*/
                INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES
                (id_servicio_sec.nextval,prov.id,
                 rango_fechas.VALIDAR_FECHAS(fecha,add_months(fecha,12)),
                 cant_env,'a',prec_uni*cant_env);
            END IF;
        END LOOP;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Servicios de cada proveedor creados exitosamente.');
END;

CREATE OR REPLACE PROCEDURE crear_contratos IS
descu NUMBER;
fecha TIMESTAMP;
duracion NUMBER;
mayor NUMBER;
menor NUMBER;
random NUMBER;
id_prov NUMBER;
id_prod NUMBER;
total_servs NUMBER;
total_ests NUMBER;
cant_servs NUMBER;
cant_ests NUMBER;
cant_conts NUMBER;
sector NUMBER;
x NUMBER;
id_contrato NUMBER;
TYPE id_servicios_t IS VARRAY(100) OF NUMBER;
id_servicios id_servicios_t;
TYPE id_estados_t IS VARRAY(1000) OF NUMBER;
id_estados id_estados_t;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Insertando contratos...');
    FOR num_contrato IN 1..20 LOOP
        /*se define de manera aleatoria la vigencia del contrato*/
        SELECT ROUND(DBMS_RANDOM.VALUE(1, 12)) INTO duracion FROM dual;
        /*se define de manera aleatoria una fecha de inicio del contrato*/
        SELECT TO_DATE('2020-10-13','YYYY-MM-DD')+TRUNC(DBMS_RANDOM.VALUE(1,123)) INTO fecha FROM dual;
        /*se define de manera aleatoria el productor del contrato*/
        SELECT MIN(id) INTO menor FROM productores;
        SELECT MAX(id) INTO mayor FROM productores;
        SELECT ROUND(DBMS_RANDOM.VALUE(menor,mayor)) INTO random FROM dual;
        SELECT id INTO id_prod FROM productores WHERE id=random;
        /*se define de manera aleatoria el proveedor del contrato*/
        SELECT MIN(id) INTO menor FROM proveedores;
        SELECT MAX(id) INTO mayor FROM proveedores;
        SELECT ROUND(DBMS_RANDOM.VALUE(menor,mayor)) INTO random FROM dual;
        SELECT id INTO id_prov FROM proveedores WHERE id=random;
        /*se inicia un descuento del 0%*/
        descu:=0;
        /*se inserta el contrato*/
        INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES
        (id_contrato_sec.nextval,id_prod,
         rango_fechas.VALIDAR_FECHAS(fecha,add_months(fecha,duracion)),descu);
        /*se busca el id del contrato (ultimo contrato creado)*/
        SELECT MAX(id) INTO id_contrato FROM contratos;
        /*se cuentan todos los servicios del proveedor*/
        SELECT COUNT(*) INTO total_servs FROM servicios WHERE id_proveedor=id_prov;
        /*se selecciona una cantidad aleatoria de servicios para el contrato*/
        SELECT ROUND(DBMS_RANDOM.VALUE(1,total_servs)) INTO cant_servs FROM dual;
        /*se guarda en un array de manera aleatoria los id de los servicios del proveedor*/
        SELECT s.id BULK COLLECT INTO id_servicios FROM servicios s WHERE s.id_proveedor=id_prov ORDER BY DBMS_RANDOM.VALUE();
        /*se insertan n cantidad de servicios para el contrato*/
        FOR i IN 1..cant_servs LOOP
            INSERT INTO servicios_contratos (id_contrato, id_productor, id_proveedor, id_servicio) VALUES
            (id_contrato,id_prod,id_prov,id_servicios(i));
        END LOOP;
        /*se cuentan todos los estados donde el proveedor y el productor tienen sucursales*/
        SELECT COUNT(DISTINCT zpd.id_estado) INTO total_ests FROM zonas_productores zpd, zonas_proveedores zpv
        WHERE zpd.id_productor=id_prod AND zpv.id_proveedor=id_prov AND zpd.id_estado=zpv.id_estado;
        /*se selecciona una cantidad aleatoria de estados para el contrato*/
        SELECT ROUND(DBMS_RANDOM.VALUE(1,total_ests)) INTO cant_ests FROM dual;
        /*se guarda en un array de manera aleatoria los id de los estados*/
        SELECT DISTINCT zpd.id_estado BULK COLLECT INTO id_estados FROM zonas_productores zpd, zonas_proveedores zpv
        WHERE zpd.id_productor=id_prod AND zpv.id_proveedor=id_prov AND zpd.id_estado=zpv.id_estado
        ORDER BY DBMS_RANDOM.VALUE();
        /*se insertan n cantidad de estados para el contrato*/
        FOR j IN 1..cant_ests LOOP
            INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES
            (id_estados(j),id_contrato,id_prod);
        END LOOP;
        /*si el productor es farmaceutico*/
        SELECT p.id_sector INTO sector FROM productores p WHERE p.id=id_prod;
        IF sector=2 THEN
            descu:=descu+20;
        END IF;
        /*si el productor tiene mas de 3 contratos con el proveedor*/
        SELECT COUNT(*) INTO cant_conts FROM servicios_contratos sc WHERE sc.id_productor=id_prod AND sc.id_proveedor=id_prov;
        IF cant_conts>=3 THEN
            descu:=descu+20;
        END IF;
        /*si el contrato es valido para mas de tres estados*/
        IF cant_ests>=3 THEN
            descu:=descu+20;
        END IF;
        /*se define un numero random del 1 al 100*/
        SELECT ROUND(DBMS_RANDOM.VALUE(1,100)) INTO x FROM dual;
        /*si x=1*/
        IF x=1 THEN
            descu:=descu+50;
        END IF;
        /*se actualiza el descuento*/
        IF descu>100 THEN
            descu:=100;
        END IF;
        UPDATE contratos SET descuento=descu WHERE id=id_contrato;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Contratos creados exitosamente...');
END;

CREATE OR REPLACE PROCEDURE modulo_empresas IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Iniciando módulo de empresas, servicios y contratos...');
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------------------------');
    crear_sectores();
    crear_proveedores();
    crear_productores();
    crear_servicios();
    crear_contratos();
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('El módulo de empresas, servicios y contratos se ha ejecutado satisfactoriamente.');
END;