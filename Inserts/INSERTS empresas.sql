/* Directorio de las imagenes */
CREATE DIRECTORY DIR_LOGOS_EMPRESAS AS 'C:\imagenes\logos_empresas';

/**************** Sectores ********************/
INSERT INTO sectores (id, nombre) VALUES (id_sector_sec.nextval, 'Alimenticio');
INSERT INTO sectores (id, nombre) VALUES (id_sector_sec.nextval, 'Farmaceutico');
INSERT INTO sectores (id, nombre) VALUES (id_sector_sec.nextval, 'Vestimenta');
INSERT INTO sectores (id, nombre) VALUES (id_sector_sec.nextval, 'Tecnologico');
INSERT INTO sectores (id, nombre) VALUES (id_sector_sec.nextval, 'Botanico');

/**************** Empresas proveedoras de delivery *******************/

DECLARE
    datos_emp DATOS_EMPRESA;
    img_blob BLOB;
    img_file BFILE;
BEGIN
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
END;



/********************* Empresas productoras ****************************/
DECLARE
    datos_emp DATOS_EMPRESA;
    img_blob BLOB;
    img_file BFILE;
BEGIN
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
END;

