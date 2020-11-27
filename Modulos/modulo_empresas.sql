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
    /* TODO */
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
    /* TODO */
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
            IF aux=1 THEN
                /*frecuencia del servicio: diaria*/
                /*se define de manera aleatoria la cantidad de pedidos del servicio*/
                SELECT ROUND(DBMS_RANDOM.VALUE(10, 30)) INTO cant_env FROM dual;
                INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES
                (id_servicio_sec.nextval,prov.id,
                 rango_fechas.VALIDAR_FECHAS(fecha,add_months(fecha,duracion)),
                 cant_env,'d',prec_uni*cant_env);
            ELSIF aux=2 THEN
                /*frecuencia del servicio: semanal*/
                /*se define de manera aleatoria la cantidad de pedidos del servicio*/
                SELECT ROUND(DBMS_RANDOM.VALUE(70, 210)) INTO cant_env FROM dual;
                INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES
                (id_servicio_sec.nextval,prov.id,
                 rango_fechas.VALIDAR_FECHAS(fecha,add_months(fecha,duracion)),
                 cant_env,'s',prec_uni*cant_env);
            ELSIF aux=3 THEN
                /*frecuencia del servicio: mensual*/
                /*se define de manera aleatoria la cantidad de pedidos del servicio*/
                SELECT ROUND(DBMS_RANDOM.VALUE(300, 900)) INTO cant_env FROM dual;
                INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES
                (id_servicio_sec.nextval,prov.id,
                 rango_fechas.VALIDAR_FECHAS(fecha,add_months(fecha,duracion)),
                 cant_env,'m',prec_uni*cant_env);
            ELSE
                /*frecuencia del servicio: anual*/
                /*se define de manera aleatoria la cantidad de pedidos del servicio*/
                SELECT ROUND(DBMS_RANDOM.VALUE(3600, 10800)) INTO cant_env FROM dual;
                INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES
                (id_servicio_sec.nextval,prov.id,
                 rango_fechas.VALIDAR_FECHAS(fecha,add_months(fecha,12)),
                 cant_env,'a',prec_uni*cant_env);
            END IF;
        END LOOP;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Servicios de cada proveedor creados exitosamente.');
END;

CREATE OR REPLACE PROCEDURE modulo_empresas IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Iniciando módulo de empresas, servicios y contratos...');
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------------------------');
    crear_sectores();
    crear_proveedores();
    crear_productores();
    crear_servicios();
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('El módulo de empresas, servicios y contratos se ha ejecutado satisfactoriamente.');
END;