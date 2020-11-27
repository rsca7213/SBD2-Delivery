CREATE OR REPLACE TRIGGER asignar_zonas_usuario AFTER INSERT ON usuarios FOR EACH ROW
BEGIN
    /* TODO */
END;

CREATE OR REPLACE PROCEDURE crear_usuarios (ctd_crear INTEGER) IS
    TYPE arreglo_varchar2 IS VARRAY(100) OF VARCHAR2(50);
    arreglo_nombres_masculinos arreglo_varchar2;
    arreglo_nombres_femeninos arreglo_varchar2;
    arreglo_apellidos arreglo_varchar2;
    arreglo_extensiones_correo arreglo_varchar2;
    ctd_usuarios_creados INTEGER;
    ctd_proveedores_por_insertar INTEGER;
    ctd_proveedores INTEGER;
    nombre_prov VARCHAR2(100);
    num_random INTEGER;
    /* utilizadas en el insert */
    primer_nombre_selec VARCHAR2(50);
    segundo_nombre_selec VARCHAR2(50);
    primer_apellido_selec VARCHAR2(50);
    segundo_apellido_selec VARCHAR2(50);
    correo_selec VARCHAR2(50);
    cedula_usuario NUMBER(8);
    unique_flag INTEGER;
    /* para insertar la foto */
    genero_foto INTEGER;
    img_blob BLOB;
    img_file BFILE;
BEGIN
    /* 50 nombres masculinos posibles */
    arreglo_nombres_masculinos := arreglo_varchar2('Manuel','Ricardo','David','José','Leonardo','Alan','Miguel','Andrés',
    'Sebastian','Gustavo','Antonio','Arturo','Rodolfo','Douglas','Leandro','Emilio','Gregorio','Luis','Daniel','Alejandro',
    'Juan','Carlos','Julio','Christian','Diego','Angel','Moises','Victor','Jesús','Alberto','Aaron','Isaac','Mauricio',
    'Alfredo','Jonathan','Roberto','Gabriel','Eduardo','Claudio','Cesar','Rocco','Jorge','Guillermo','Adrián',
    'Nelson','Javier','Alessandro','Tomas','Bryan','Pablo');

    /* 50 nombres femeninos posibles */
    arreglo_nombres_femeninos := arreglo_varchar2('Arianna','Nadia','Barbara','Michelle','Andrea','Nicole','Stephany',
    'Alejandra','Dayana','Sofía','Valentina','Paola','Maria','Eduarda','Daniela','Sabrina','Patricia','Ana','Victoria',
    'Ashley','Vanessa','Naomi','Isabela','Eva','Camila','Oriana','Liliana','Natalia','Rebeca','Fabiana','Karina','Isabel',
    'Estefania','Fiorella','Cristina','Jennifer','Paola','Mariana','Anastasia','Lisa','Emiliana','Rosa','Sara',
    'Lidia','Andreina','Diana','Carolina','Emily','Carmen','Chloe');

    /* 90 apellidos posibles */
    arreglo_apellidos := arreglo_varchar2('Acosta','Salazar','Agrusa','Aguilar','Arriaga','Barrios','Barrientos',
    'Blanco','Borges','Bravo','Caldera','Carao','Capon','Castro','Davila','Delfin','Delgado','Diaz','Escalante',
    'Escolar','Escobar','Fermin','Fernandes','Figueroa','Flores','Garcia','Gil','Gonzales','Graterol','Linares','Marino',
    'Medina','Mora','Ramirez','Ojeda','Ortiz','Pacheco','Palma','Paredes','Peña','Quintero','Quiros','Ramos','Ramirez',
    'Rios','Rivas','Rodriguez','Rojas','Sanchez','Serruya','Salvatorelli','Silva','Suarez','Spinetti','Teixeira',
    'Tejera','Torres','Tovar','Uribe','Valero','Umenez','Vasquez','Varisco','Velásquez','Velez','Vieira','Wus','Yanez',
    'Yepez','Yang','Yauripoma','Zacarias','Zamora','Zapata','Zorrilla','Figueroa','Uzcategui','Cabello','Gómez','Reyes',
    'Pires','Sosa','De Olim','Ruiz','Valencia','Lecuona','Nuñez','Colmenarez','Gianotti','Deternoz');

    /* 10 extensiones de correo posible */
    arreglo_extensiones_correo := arreglo_varchar2('@gmail.com', '@hotmail.com', '@yahoo.com', '@est.ucab.edu.ve', '@cantv.ve', '@outlook.com',
    '@bing.com','@est.usb.edu.ve','@est.ucv.edu.ve','@est.usm.edu.ve');

    DBMS_OUTPUT.PUT_LINE('Insertando usuarios...');
    /* variable que contara cuantos usuarios se han creado actualmente, al llegar a 30 se detiene el ciclo */
    ctd_usuarios_creados := 0;
    WHILE ctd_usuarios_creados < ctd_crear LOOP
        /* numero random para determinar el genero del usuario */
        num_random := TRUNC(DBMS_RANDOM.VALUE(1,3),0);
        /* masculino */
        IF num_random = 1 THEN
            /* se coloca el genero de la foto masculino */
            genero_foto := 1;
            /* se determina el primer nombre del usuario a traves de un numero random del 1 al 50 */
            num_random := TRUNC(DBMS_RANDOM.VALUE(1,51),0);
            primer_nombre_selec := arreglo_nombres_masculinos(num_random);
            /* se determina si el usuario tendra un segundo nombre con un random del 1 al 2, y en caso
               de que tenga (2) se determina con otro random del 1 al 50
            */
            segundo_nombre_selec := NULL;
            num_random := TRUNC(DBMS_RANDOM.VALUE(1,3),0);
            IF num_random = 2 THEN
                num_random := TRUNC(DBMS_RANDOM.VALUE(1,51),0);
                segundo_nombre_selec := arreglo_nombres_masculinos(num_random);
            END IF;
        /* fenemino */
        ELSE
            /* se coloca el genero de la foto femenino */
            genero_foto := 2;
            /* se determina el primer nombre del usuario a traves de un numero random del 1 al 50 */
            num_random := TRUNC(DBMS_RANDOM.VALUE(1,51),0);
            primer_nombre_selec := arreglo_nombres_femeninos(num_random);
            /* se determina si el usuario tendra un segundo nombre con un random del 1 al 2, y en caso
               de que tenga (2) se determina con otro random del 1 al 50
            */
            segundo_nombre_selec := NULL;
            num_random := TRUNC(DBMS_RANDOM.VALUE(1,3),0);
            IF num_random = 2 THEN
                num_random := TRUNC(DBMS_RANDOM.VALUE(1,51),0);
                segundo_nombre_selec := arreglo_nombres_femeninos(num_random);
            END IF;
        END IF;

        /* se determinan los apellidos del usuario */
        num_random := TRUNC(DBMS_RANDOM.VALUE(1,91),0);
        primer_apellido_selec := arreglo_apellidos(num_random);
        num_random := TRUNC(DBMS_RANDOM.VALUE(1,91),0);
        segundo_apellido_selec := arreglo_apellidos(num_random);

        /* se determina el correo del usuario, formato nombreapellido@extension, siendo la extension randomizada */
        num_random := TRUNC(DBMS_RANDOM.VALUE(1,11),0);
        correo_selec := CONCAT(CONCAT(primer_nombre_selec, primer_apellido_selec), arreglo_extensiones_correo(num_random));

        /* se determina la cedula del usuario con la secuencia creada previamente en el setup */
        cedula_usuario := CEDULA_USUARIO_SEC.nextval;

        /* cada usuario se registra en n proveedores, este numero se calcula de manera aleatoria con la cantidad de
           proveedores en el sistema, y cada vez que se registre el usuario en un proveedor, se va reduciendo el numero */
        SELECT COUNT(*) INTO ctd_proveedores FROM proveedores;
        ctd_proveedores_por_insertar := TRUNC(DBMS_RANDOM.VALUE(1, ctd_proveedores + 1),0);
        DBMS_OUTPUT.PUT_LINE('Usuario insertado --> C.I.: ' || cedula_usuario || ', Nombre Completo: ' || primer_nombre_selec || ' ' || segundo_nombre_selec ||
                             ' ' || primer_apellido_selec || ' ' || segundo_apellido_selec || ', Correo: ' || correo_selec);
        DBMS_OUTPUT.PUT('Proveedores -->');
        /* mientras falten proveedores por registrar el usuario */
        WHILE ctd_proveedores_por_insertar > 0 LOOP
            /* se calcula un numero random que determina que proveedor registrara el usuario */
            num_random := TRUNC(DBMS_RANDOM.VALUE(1,ctd_proveedores + 1),0);
            /* se verifica que no haya un registro con los datos actualmente, en caso de que lo haya no se inserta nada, en caso contrario se inserta
               el registro y se decrementa la cantidad por insertar
             */
            SELECT COUNT(*) INTO unique_flag FROM usuarios WHERE cedula = cedula_usuario AND id_proveedor = num_random;
            IF unique_flag = 0 THEN
                /* se randomiza la fecha del registro */
                INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
                (cedula_usuario, num_random, primer_nombre_selec, primer_apellido_selec, segundo_apellido_selec, EMPTY_BLOB(), correo_selec,
                TRUNC (DATE '2020-01-01', 'YYYY') + ROUND (DBMS_RANDOM.VALUE (1, 365)), segundo_nombre_selec)
                RETURNING foto INTO img_blob;
                /* se inserta la foto del genero correspondiente */
                IF genero_foto = 1 THEN
                    img_file := BFILENAME('DIR_FOTOS_HOMBRE', TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1,21),0)) || '.png');
                ELSE
                    img_file := BFILENAME('DIR_FOTOS_MUJER', TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1,21),0)) || '.png');
                END IF;
                DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
                DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
                DBMS_LOB.CLOSE(img_file);
                /* fin de insercion de la foto */
                ctd_proveedores_por_insertar := ctd_proveedores_por_insertar - 1;
                SELECT p.datos_empresa.nombre INTO nombre_prov FROM proveedores p WHERE p.id = num_random;
                DBMS_OUTPUT.PUT(' | ' || nombre_prov);
            END IF;
        END LOOP;
        /* al finalizar con el usuario se incrementa la cantidad de usuarios creados */
        DBMS_OUTPUT.PUT_LINE('');
        ctd_usuarios_creados := ctd_usuarios_creados + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Usuarios creados exitosamente.');
END;

CREATE OR REPLACE PROCEDURE modulo_usuarios IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Iniciando módulo de usuarios...');
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------------------------');
    crear_usuarios(30);
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('El módulo de usuarios se ha ejecutado satisfactoriamente.');
END;