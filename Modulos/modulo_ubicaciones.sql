
CREATE OR REPLACE PROCEDURE crear_estados IS
    BEGIN
        /*INSERTS ESTADOS*/

        DBMS_OUTPUT.PUT_LINE('Insertando estados...');

        INSERT INTO estados (id, datos_ubicacion)
        VALUES (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Amazonas'),datos_ubicacion.validar_latitud(3.5),datos_ubicacion.validar_longitud(-66)));
        INSERT INTO estados (id, datos_ubicacion)
        VALUES (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Anzoátegui'),datos_ubicacion.validar_latitud(9),datos_ubicacion.validar_longitud(-64.33334)));
        INSERT INTO estados (id, datos_ubicacion)
        VALUES (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Apure'),datos_ubicacion.validar_latitud(7.16667),datos_ubicacion.validar_longitud(-68.83334)));
        INSERT INTO estados (id, datos_ubicacion)
        VALUES (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Distrito Capital'),datos_ubicacion.validar_latitud(10.47639),datos_ubicacion.validar_longitud(-66.98333)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Carabobo'),datos_ubicacion.validar_latitud(10.16667),datos_ubicacion.validar_longitud(-68.08334)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Miranda'),datos_ubicacion.validar_latitud(10.25),datos_ubicacion.validar_longitud(-66.41666)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Zulia'),datos_ubicacion.validar_latitud(10),datos_ubicacion.validar_longitud(-72.16666)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Aragua'),datos_ubicacion.validar_latitud(10),datos_ubicacion.validar_longitud(-67.16666)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Barinas'),datos_ubicacion.validar_latitud(8.16667),datos_ubicacion.validar_longitud(-69.83334)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Cojedes'),datos_ubicacion.validar_latitud(9.33333),datos_ubicacion.validar_longitud(-68.33334)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Lara'),datos_ubicacion.validar_latitud(10.16667),datos_ubicacion.validar_longitud(-69.83334)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Monagas'),datos_ubicacion.validar_latitud(9.33333),datos_ubicacion.validar_longitud(-63)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Sucre'),datos_ubicacion.validar_latitud(10.41667),datos_ubicacion.validar_longitud(-63.5)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Trujillo'),datos_ubicacion.validar_latitud(9.41667),datos_ubicacion.validar_longitud(-70.5)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('La Guaira'),datos_ubicacion.validar_latitud(10.56667),datos_ubicacion.validar_longitud(-66.9)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Yaracuy'),datos_ubicacion.validar_latitud(10.333333),datos_ubicacion.validar_longitud(-68.750000)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Bolívar'),datos_ubicacion.validar_latitud(6.33333),datos_ubicacion.validar_longitud(-63.5)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Táchira'),datos_ubicacion.validar_latitud(7.83333),datos_ubicacion.validar_longitud(-72.08334)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Delta Amacuro'),datos_ubicacion.validar_latitud(8.750000),datos_ubicacion.validar_longitud(-61.333332)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Falcón'),datos_ubicacion.validar_latitud(11),datos_ubicacion.validar_longitud(-69.83334)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Guárico'),datos_ubicacion.validar_latitud(8.66667),datos_ubicacion.validar_longitud(-66.58334)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Mérida'),datos_ubicacion.validar_latitud(8.5),datos_ubicacion.validar_longitud(-71.16666)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Nueva Esparta'),datos_ubicacion.validar_latitud(11),datos_ubicacion.validar_longitud(-64)));
        INSERT INTO estados (id, datos_ubicacion) VALUES
        (id_estado_sec.NEXTVAL, datos_ubicacion(datos_ubicacion.validar_nombre('Portuguesa'),datos_ubicacion.validar_latitud(9.16667),datos_ubicacion.validar_longitud(-69.25)));

        DBMS_OUTPUT.PUT_LINE('Estados creados exitosamente.');
        DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');

    END;

CREATE OR REPLACE PROCEDURE crear_municipios IS
    BEGIN
        /*INSERTS MUNICIPIOS*/

        DBMS_OUTPUT.PUT_LINE('Insertando municipios...');

        /*Municipios estado Amazonas*/

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 1, datos_ubicacion(datos_ubicacion.validar_nombre('Alto Orinoco'),datos_ubicacion.validar_latitud(3.17389),datos_ubicacion.validar_longitud(-65.5467)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 1, datos_ubicacion(datos_ubicacion.validar_nombre('Atabapo'),datos_ubicacion.validar_latitud(4.02352),datos_ubicacion.validar_longitud(-67.6844)));

       /*Municipios estado Anzoátegui*/

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 2, datos_ubicacion(datos_ubicacion.validar_nombre('Anaco'),datos_ubicacion.validar_latitud(9.43417),datos_ubicacion.validar_longitud(-64.4594)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 2, datos_ubicacion(datos_ubicacion.validar_nombre('Píritu'),datos_ubicacion.validar_latitud(10.0459),datos_ubicacion.validar_longitud(-65.0335)));

       /*Municipios estado Apure*/

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 3, datos_ubicacion(datos_ubicacion.validar_nombre('Achaguas'),datos_ubicacion.validar_latitud(7.76667),datos_ubicacion.validar_longitud(-68.2333)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 3, datos_ubicacion(datos_ubicacion.validar_nombre('Biruaca'),datos_ubicacion.validar_latitud(7.84267),datos_ubicacion.validar_longitud(-67.5172)));


       /*Municipios estado Distrito Capital*/

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 4, datos_ubicacion(datos_ubicacion.validar_nombre('Libertador'),datos_ubicacion.validar_latitud(10.5058),datos_ubicacion.validar_longitud(-66.9144)));

        /*Municipios estado Carabobo*/
        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 5, datos_ubicacion(datos_ubicacion.validar_nombre('Puerto Cabello'),datos_ubicacion.validar_latitud(10.4667),datos_ubicacion.validar_longitud(-68.0167)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 5, datos_ubicacion(datos_ubicacion.validar_nombre('San Diego'),datos_ubicacion.validar_latitud(10.254),datos_ubicacion.validar_longitud(-68.0109)));

        /*Municipios estado Miranda*/

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 6, datos_ubicacion(datos_ubicacion.validar_nombre('Chacao'),datos_ubicacion.validar_latitud(10.4939),datos_ubicacion.validar_longitud(-66.8566)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 6, datos_ubicacion(datos_ubicacion.validar_nombre('Baruta'),datos_ubicacion.validar_latitud(10.4324),datos_ubicacion.validar_longitud(-66.8746)));

       /*Municipios estado Zulia*/

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 7, datos_ubicacion(datos_ubicacion.validar_nombre('Cabimas'),datos_ubicacion.validar_latitud(10.4),datos_ubicacion.validar_longitud(-71.45)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 7, datos_ubicacion(datos_ubicacion.validar_nombre('Colón'),datos_ubicacion.validar_latitud(8.99972),datos_ubicacion.validar_longitud(-71.9167)));

       /*Municipios estado Aragua*/
        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 8, datos_ubicacion(datos_ubicacion.validar_nombre('Girardot'),datos_ubicacion.validar_latitud(10.2517),datos_ubicacion.validar_longitud(-67.6014)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 8, datos_ubicacion(datos_ubicacion.validar_nombre('Zamora'),datos_ubicacion.validar_latitud(10.0383),datos_ubicacion.validar_longitud(-67.4892)));

      /*municipios estado Barinas*/

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 9, datos_ubicacion(datos_ubicacion.validar_nombre('Pedraza'),datos_ubicacion.validar_latitud(8.35163),datos_ubicacion.validar_longitud(-70.5738)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 9, datos_ubicacion(datos_ubicacion.validar_nombre('Ezequiel Zamora'),datos_ubicacion.validar_latitud(7.81305),datos_ubicacion.validar_longitud(-71.1777)));

       /*municipios estado Cojedes*/
        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 10, datos_ubicacion(datos_ubicacion.validar_nombre('San Carlos'),datos_ubicacion.validar_latitud(9.65),datos_ubicacion.validar_longitud(-68.5836)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 10, datos_ubicacion(datos_ubicacion.validar_nombre('Tinaquillo'),datos_ubicacion.validar_latitud(9.91667),datos_ubicacion.validar_longitud(-68.3)));

       /*municipios estado Lara*/

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 11, datos_ubicacion(datos_ubicacion.validar_nombre('Iribarren'),datos_ubicacion.validar_latitud(10.0639),datos_ubicacion.validar_longitud(-69.3347)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 11, datos_ubicacion(datos_ubicacion.validar_nombre('Torres'),datos_ubicacion.validar_latitud(10.1752),datos_ubicacion.validar_longitud(-70.0753)));

       /*municipios estado Monagas*/

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 12, datos_ubicacion(datos_ubicacion.validar_nombre('Caripe'),datos_ubicacion.validar_latitud(10.1692),datos_ubicacion.validar_longitud(-63.51)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 12, datos_ubicacion(datos_ubicacion.validar_nombre('Piar'),datos_ubicacion.validar_latitud(9.96806),datos_ubicacion.validar_longitud(-63.4869)));

     /*municipios estado Sucre*/
        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 13, datos_ubicacion(datos_ubicacion.validar_nombre('Montes'),datos_ubicacion.validar_latitud(10.2541),datos_ubicacion.validar_longitud(-63.9113)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 13, datos_ubicacion(datos_ubicacion.validar_nombre('Arismendi'),datos_ubicacion.validar_latitud(10.7),datos_ubicacion.validar_longitud(-63.117)));

    /*municipios estado Trujillo*/
        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 14, datos_ubicacion(datos_ubicacion.validar_nombre('Boconó'),datos_ubicacion.validar_latitud(9.2519),datos_ubicacion.validar_longitud(-70.2502)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 14, datos_ubicacion(datos_ubicacion.validar_nombre('Valera'),datos_ubicacion.validar_latitud(9.32136),datos_ubicacion.validar_longitud(-70.6034)));

    /*municipios estado La Guaira*/
        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 15, datos_ubicacion(datos_ubicacion.validar_nombre('Vargas'),datos_ubicacion.validar_latitud(10.6),datos_ubicacion.validar_longitud(-66.9331)));

    /*municipios estado Yaracuy*/
        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 16, datos_ubicacion(datos_ubicacion.validar_nombre('Nirgua'),datos_ubicacion.validar_latitud(10.1517),datos_ubicacion.validar_longitud(-68.5664)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 16, datos_ubicacion(datos_ubicacion.validar_nombre('Peña'),datos_ubicacion.validar_latitud(10.0753),datos_ubicacion.validar_longitud(-69.1283)));

    /*municipios estado Bolivar*/

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 17, datos_ubicacion(datos_ubicacion.validar_nombre('Caroní'),datos_ubicacion.validar_latitud(8.37222),datos_ubicacion.validar_longitud(-62.6439)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 17, datos_ubicacion(datos_ubicacion.validar_nombre('Heres'),datos_ubicacion.validar_latitud(8.12942),datos_ubicacion.validar_longitud(-63.5533)));

    /*municipios estado Táchira*/
        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 18, datos_ubicacion(datos_ubicacion.validar_nombre('Córdoba'),datos_ubicacion.validar_latitud(7.64979),datos_ubicacion.validar_longitud(-72.2667)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 18, datos_ubicacion(datos_ubicacion.validar_nombre('Torbes'),datos_ubicacion.validar_latitud(7.66778),datos_ubicacion.validar_longitud(-72.2241)));


    /*municipios estado Delta Amacuro*/
        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 19, datos_ubicacion(datos_ubicacion.validar_nombre('Casacoima'),datos_ubicacion.validar_latitud(8.39167),datos_ubicacion.validar_longitud(-62.4534)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 19, datos_ubicacion(datos_ubicacion.validar_nombre('Pedernales'),datos_ubicacion.validar_latitud(9.65581),datos_ubicacion.validar_longitud(-62.1689)));


    /*municipios estado Falcón*/
        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 20, datos_ubicacion(datos_ubicacion.validar_nombre('Carirubana'),datos_ubicacion.validar_latitud(11.717),datos_ubicacion.validar_longitud(-70.183)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 20, datos_ubicacion(datos_ubicacion.validar_nombre('Silva'),datos_ubicacion.validar_latitud(10.7807),datos_ubicacion.validar_longitud(-68.3266)));


    /*municipios estado Guárico*/
        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 21, datos_ubicacion(datos_ubicacion.validar_nombre('Ortiz'),datos_ubicacion.validar_latitud(9.62038),datos_ubicacion.validar_longitud(-67.2917)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 21, datos_ubicacion(datos_ubicacion.validar_nombre('El Socorro'),datos_ubicacion.validar_latitud(8.45457),datos_ubicacion.validar_longitud(-67.9714)));


    /*municipios estado Mérida*/
        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 22, datos_ubicacion(datos_ubicacion.validar_nombre('Rangel'),datos_ubicacion.validar_latitud(8.74801),datos_ubicacion.validar_longitud(-70.922)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 22, datos_ubicacion(datos_ubicacion.validar_nombre('Tovar'),datos_ubicacion.validar_latitud(8.3276),datos_ubicacion.validar_longitud(-71.7593)));

    /*municipios estado Nueva Esparta*/

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 23, datos_ubicacion(datos_ubicacion.validar_nombre('Tubores'),datos_ubicacion.validar_latitud(10.9048),datos_ubicacion.validar_longitud(-64.0847)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 23, datos_ubicacion(datos_ubicacion.validar_nombre('Maneiro'),datos_ubicacion.validar_latitud(11.0025),datos_ubicacion.validar_longitud(-63.7957)));

    /*municipios estado Portuguesa*/

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 24, datos_ubicacion(datos_ubicacion.validar_nombre('Araure'),datos_ubicacion.validar_latitud(9.57858),datos_ubicacion.validar_longitud(-69.2278)));

        INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES
        (id_municipio_sec.NEXTVAL, 24, datos_ubicacion(datos_ubicacion.validar_nombre('Páez'),datos_ubicacion.validar_latitud(9.56283),datos_ubicacion.validar_longitud(-69.2105)));

       DBMS_OUTPUT.PUT_LINE('Municipios creados exitosamente');
        DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');
    END;

CREATE OR REPLACE PROCEDURE crear_zonas IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Insertando zonas...');

    /*INSERTS ZONAS*/

    /*Inserción zonas de Amazonas*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 1, 1, datos_ubicacion(datos_ubicacion.validar_nombre('La esmeralda'),datos_ubicacion.validar_latitud(3.175182),datos_ubicacion.validar_longitud(-65.545955)));

    /*MUNICIPIO 2*/
        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 1, 2, datos_ubicacion(datos_ubicacion.validar_nombre('San Fernando de Atabapo'),datos_ubicacion.validar_latitud(4.042720),datos_ubicacion.validar_longitud(-67.698723)));


    /*Inserción zonas de Anzoátegui*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 2, 3, datos_ubicacion(datos_ubicacion.validar_nombre('Los Jardines'),datos_ubicacion.validar_latitud(9.439193),datos_ubicacion.validar_longitud(-64.424043)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 2, 3, datos_ubicacion(datos_ubicacion.validar_nombre('Campamento Santa Rosa'),datos_ubicacion.validar_latitud(9.451258),datos_ubicacion.validar_longitud(-64.418765)));

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 2, 3, datos_ubicacion(datos_ubicacion.validar_nombre('Lomas de Altamira'),datos_ubicacion.validar_latitud(9.457862),datos_ubicacion.validar_longitud(-64.442797)));

    /*MUNICIPIO 2*/
        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 2, 4, datos_ubicacion(datos_ubicacion.validar_nombre('Pueblo Viejo'),datos_ubicacion.validar_latitud(10.007533),datos_ubicacion.validar_longitud(-65.035586)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 2, 4, datos_ubicacion(datos_ubicacion.validar_nombre('Santa Rosa'),datos_ubicacion.validar_latitud(10.025152),datos_ubicacion.validar_longitud(-65.029571)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 2, 4, datos_ubicacion(datos_ubicacion.validar_nombre('La Mascota'),datos_ubicacion.validar_latitud(10.009725),datos_ubicacion.validar_longitud(-65.023376)));

    /*Inserción zonas de Apure*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 3, 5, datos_ubicacion(datos_ubicacion.validar_nombre('Urdaneta'),datos_ubicacion.validar_latitud(7.776791),datos_ubicacion.validar_longitud(-68.226526)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 3, 5, datos_ubicacion(datos_ubicacion.validar_nombre('Comercio'),datos_ubicacion.validar_latitud(7.78227),datos_ubicacion.validar_longitud(-68.232019)));


    /*MUNICIPIO 2*/
        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 3, 6, datos_ubicacion(datos_ubicacion.validar_nombre('Barrio Libertador'),datos_ubicacion.validar_latitud(7.842994),datos_ubicacion.validar_longitud(-67.524652)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 3, 6, datos_ubicacion(datos_ubicacion.validar_nombre('Barrio La Campereña'),datos_ubicacion.validar_latitud(7.838995),datos_ubicacion.validar_longitud(-67.521307)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 3, 6, datos_ubicacion(datos_ubicacion.validar_nombre('Barrio Los Samanes'),datos_ubicacion.validar_latitud(7.842350),datos_ubicacion.validar_longitud(-67.510204)));


    /*Inserción zonas del Distrito Capital*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 4, 7, datos_ubicacion(datos_ubicacion.validar_nombre('El Paraíso'),datos_ubicacion.validar_latitud(10.492168),datos_ubicacion.validar_longitud(-66.926994)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 4, 7, datos_ubicacion(datos_ubicacion.validar_nombre('Antímano'),datos_ubicacion.validar_latitud(10.463726),datos_ubicacion.validar_longitud(-66.983814)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 4, 7, datos_ubicacion(datos_ubicacion.validar_nombre('La Florida'),datos_ubicacion.validar_latitud(10.500605),datos_ubicacion.validar_longitud( -66.879076)));


    /*Inserción zonas de Carabobo*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 5, 8, datos_ubicacion(datos_ubicacion.validar_nombre('Sector El Milagro'),datos_ubicacion.validar_latitud(10.469367),datos_ubicacion.validar_longitud(-68.049274)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 5, 8, datos_ubicacion(datos_ubicacion.validar_nombre('Santa Cruz'),datos_ubicacion.validar_latitud(10.459154),datos_ubicacion.validar_longitud(-68.046441)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 5, 8, datos_ubicacion(datos_ubicacion.validar_nombre('Valle Seco'),datos_ubicacion.validar_latitud(10.447547),datos_ubicacion.validar_longitud(  -68.004138)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 5, 9, datos_ubicacion(datos_ubicacion.validar_nombre('Paso Real'),datos_ubicacion.validar_latitud(10.214384),datos_ubicacion.validar_longitud(-67.969542)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 5, 9, datos_ubicacion(datos_ubicacion.validar_nombre('Valle Verde'),datos_ubicacion.validar_latitud(10.228912),datos_ubicacion.validar_longitud(-67.959757)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 5, 9, datos_ubicacion(datos_ubicacion.validar_nombre('Colonial'),datos_ubicacion.validar_latitud(10.274521),datos_ubicacion.validar_longitud(  -67.950402)));

    /*Inserción zonas de Miranda*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 6, 10, datos_ubicacion(datos_ubicacion.validar_nombre('Altamira'),datos_ubicacion.validar_latitud(10.507010),datos_ubicacion.validar_longitud(-66.852421)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 6, 10, datos_ubicacion(datos_ubicacion.validar_nombre('Campo Alegre'),datos_ubicacion.validar_latitud(10.494436),datos_ubicacion.validar_longitud( -66.859459)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 6, 10, datos_ubicacion(datos_ubicacion.validar_nombre('San Marino'),datos_ubicacion.validar_latitud(10.499242),datos_ubicacion.validar_longitud(  -66.856265)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 6, 11, datos_ubicacion(datos_ubicacion.validar_nombre('La Tahona'),datos_ubicacion.validar_latitud(10.437613),datos_ubicacion.validar_longitud(-66.856828)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 6, 11, datos_ubicacion(datos_ubicacion.validar_nombre('Chuao'),datos_ubicacion.validar_latitud(10.482516),datos_ubicacion.validar_longitud(-66.844726)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 6, 11, datos_ubicacion(datos_ubicacion.validar_nombre('Prados del Este'),datos_ubicacion.validar_latitud(10.448164),datos_ubicacion.validar_longitud(  -66.887641)));

    /*Inserción zonas de Zulia*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 7, 12, datos_ubicacion(datos_ubicacion.validar_nombre('Pedregalito'),datos_ubicacion.validar_latitud(10.364732),datos_ubicacion.validar_longitud(-71.400770)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 7, 12, datos_ubicacion(datos_ubicacion.validar_nombre('Barrio Barvolento'),datos_ubicacion.validar_latitud(10.374037),datos_ubicacion.validar_longitud( -71.419264)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 7, 12, datos_ubicacion(datos_ubicacion.validar_nombre('Barrio Campo Alegre'),datos_ubicacion.validar_latitud(10.409494),datos_ubicacion.validar_longitud(  -71.448704)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 7, 13, datos_ubicacion(datos_ubicacion.validar_nombre('La Mensura'),datos_ubicacion.validar_latitud(8.853437),datos_ubicacion.validar_longitud(-71.884726)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 7, 13, datos_ubicacion(datos_ubicacion.validar_nombre('Santa Cruz del Zulia'),datos_ubicacion.validar_latitud(8.904488),datos_ubicacion.validar_longitud( -71.984633)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 7, 13, datos_ubicacion(datos_ubicacion.validar_nombre('El Moralito'),datos_ubicacion.validar_latitud(8.800731),datos_ubicacion.validar_longitud(   -71.770381)));


    /*Inserción zonas de Aragua*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 8, 14, datos_ubicacion(datos_ubicacion.validar_nombre('Barrio El Milagro'),datos_ubicacion.validar_latitud(10.262712),datos_ubicacion.validar_longitud(-67.601859)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 8, 14, datos_ubicacion(datos_ubicacion.validar_nombre('Los Olivos'),datos_ubicacion.validar_latitud(10.259503),datos_ubicacion.validar_longitud( -67.665373)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 8, 14, datos_ubicacion(datos_ubicacion.validar_nombre('Barrio Paraíso'),datos_ubicacion.validar_latitud(10.308684),datos_ubicacion.validar_longitud(   -67.563460)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 8, 15, datos_ubicacion(datos_ubicacion.validar_nombre('El Toquito'),datos_ubicacion.validar_latitud(10.024622),datos_ubicacion.validar_longitud(-67.493384)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 8, 15, datos_ubicacion(datos_ubicacion.validar_nombre('Colinas de San Francisco'),datos_ubicacion.validar_latitud(10.061621),datos_ubicacion.validar_longitud( -67.530787)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 8, 15, datos_ubicacion(datos_ubicacion.validar_nombre('La Molinera'),datos_ubicacion.validar_latitud(10.063734),datos_ubicacion.validar_longitud(   -67.539628)));


    /*Inserción zonas de Barinas*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 9, 16, datos_ubicacion(datos_ubicacion.validar_nombre('Santo Domingo'),datos_ubicacion.validar_latitud(8.347989),datos_ubicacion.validar_longitud(-70.570931)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 9, 16, datos_ubicacion(datos_ubicacion.validar_nombre('El Manguito'),datos_ubicacion.validar_latitud(8.333683),datos_ubicacion.validar_longitud( -70.571713)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 9, 16, datos_ubicacion(datos_ubicacion.validar_nombre('Las Puertas'),datos_ubicacion.validar_latitud(8.344349),datos_ubicacion.validar_longitud(   -70.515703)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 9, 17, datos_ubicacion(datos_ubicacion.validar_nombre('Santa Bárbara'),datos_ubicacion.validar_latitud(7.813990),datos_ubicacion.validar_longitud( -71.173544)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 9, 17, datos_ubicacion(datos_ubicacion.validar_nombre('Bella Vista'),datos_ubicacion.validar_latitud(7.799138),datos_ubicacion.validar_longitud( -71.249363)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 9, 17, datos_ubicacion(datos_ubicacion.validar_nombre('La Queveda'),datos_ubicacion.validar_latitud(7.792075),datos_ubicacion.validar_longitud(   -71.175279)));

    /*Inserción zonas de Cojedes*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 10, 18, datos_ubicacion(datos_ubicacion.validar_nombre('Sector Centro'),datos_ubicacion.validar_latitud(9.660404),datos_ubicacion.validar_longitud(-68.588569)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 10, 18, datos_ubicacion(datos_ubicacion.validar_nombre('Los Ilustres'),datos_ubicacion.validar_latitud(9.683996),datos_ubicacion.validar_longitud( -68.582157)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 10, 18, datos_ubicacion(datos_ubicacion.validar_nombre('El Retazo'),datos_ubicacion.validar_latitud(9.640044),datos_ubicacion.validar_longitud(   -68.584543)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 10, 19, datos_ubicacion(datos_ubicacion.validar_nombre('Barrio las Granjitas'),datos_ubicacion.validar_latitud(9.897379),datos_ubicacion.validar_longitud( -68.316571)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 10, 19, datos_ubicacion(datos_ubicacion.validar_nombre('Caño Claro I'),datos_ubicacion.validar_latitud(9.908456),datos_ubicacion.validar_longitud( -68.323910)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 10, 19, datos_ubicacion(datos_ubicacion.validar_nombre('Los Nevados'),datos_ubicacion.validar_latitud(9.916995),datos_ubicacion.validar_longitud(   -68.299062)));

    /*Inserción zonas de Lara*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 11, 20, datos_ubicacion(datos_ubicacion.validar_nombre('San Antonio'),datos_ubicacion.validar_latitud(10.056681),datos_ubicacion.validar_longitud( -69.329819)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 11, 20, datos_ubicacion(datos_ubicacion.validar_nombre('Cruz Blanca'),datos_ubicacion.validar_latitud(10.065641),datos_ubicacion.validar_longitud( -69.300477)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 11, 20, datos_ubicacion(datos_ubicacion.validar_nombre('San Benito'),datos_ubicacion.validar_latitud(10.093866),datos_ubicacion.validar_longitud(   -69.307730)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 11, 21, datos_ubicacion(datos_ubicacion.validar_nombre('Las Palomitas'),datos_ubicacion.validar_latitud(10.268521),datos_ubicacion.validar_longitud( -70.067412)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 11, 21, datos_ubicacion(datos_ubicacion.validar_nombre('Carora'),datos_ubicacion.validar_latitud(10.180464),datos_ubicacion.validar_longitud( -70.073377)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 11, 21, datos_ubicacion(datos_ubicacion.validar_nombre('El Tigrito'),datos_ubicacion.validar_latitud(10.112873),datos_ubicacion.validar_longitud(   -69.990980)));

    /*Inserción zonas de Monagas*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 12, 22, datos_ubicacion(datos_ubicacion.validar_nombre('Avenida Caripe'),datos_ubicacion.validar_latitud(10.178406),datos_ubicacion.validar_longitud( -63.497587)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 12, 23, datos_ubicacion(datos_ubicacion.validar_nombre('La Toscana'),datos_ubicacion.validar_latitud(9.800241),datos_ubicacion.validar_longitud( -63.326678)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 12, 23, datos_ubicacion(datos_ubicacion.validar_nombre('Los Mangos'),datos_ubicacion.validar_latitud(9.868150),datos_ubicacion.validar_longitud( -63.355946)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 12, 23, datos_ubicacion(datos_ubicacion.validar_nombre('Guayuta'),datos_ubicacion.validar_latitud(9.933244),datos_ubicacion.validar_longitud(   -63.433445)));


    /*Inserción zonas de Sucre*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 13, 24, datos_ubicacion(datos_ubicacion.validar_nombre('Aricagua'),datos_ubicacion.validar_latitud(10.241465),datos_ubicacion.validar_longitud( -63.897356)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 13, 24, datos_ubicacion(datos_ubicacion.validar_nombre('La Manguita'),datos_ubicacion.validar_latitud(10.239438),datos_ubicacion.validar_longitud( -63.930486)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 13, 24, datos_ubicacion(datos_ubicacion.validar_nombre('San Lorenzo'),datos_ubicacion.validar_latitud(10.222207),datos_ubicacion.validar_longitud(   -63.926710)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 13, 25, datos_ubicacion(datos_ubicacion.validar_nombre('Agua Dulce'),datos_ubicacion.validar_latitud(10.657692),datos_ubicacion.validar_longitud(  -63.010626)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 13, 25, datos_ubicacion(datos_ubicacion.validar_nombre('San Juan'),datos_ubicacion.validar_latitud(10.728412),datos_ubicacion.validar_longitud( -62.761760)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 13, 25, datos_ubicacion(datos_ubicacion.validar_nombre('Unare'),datos_ubicacion.validar_latitud(10.746373),datos_ubicacion.validar_longitud(   -62.741676)));

    /*Inserción zonas de Trujillo*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 14, 26, datos_ubicacion(datos_ubicacion.validar_nombre('Valle Verde'),datos_ubicacion.validar_latitud(9.256010),datos_ubicacion.validar_longitud( -70.240144)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 14, 26, datos_ubicacion(datos_ubicacion.validar_nombre('Los Pantanos'),datos_ubicacion.validar_latitud(9.266938),datos_ubicacion.validar_longitud( -70.231561)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 14, 26, datos_ubicacion(datos_ubicacion.validar_nombre('Miticún'),datos_ubicacion.validar_latitud(9.235122),datos_ubicacion.validar_longitud(   -70.263079)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 14, 27, datos_ubicacion(datos_ubicacion.validar_nombre('Sector Pensil'),datos_ubicacion.validar_latitud(9.334834),datos_ubicacion.validar_longitud(  -70.634498)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 14, 27, datos_ubicacion(datos_ubicacion.validar_nombre('Plata II'),datos_ubicacion.validar_latitud(9.330684),datos_ubicacion.validar_longitud( -70.598707)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 14, 27, datos_ubicacion(datos_ubicacion.validar_nombre('Sector Santa Cruz'),datos_ubicacion.validar_latitud(9.353678),datos_ubicacion.validar_longitud(   -70.601969)));


    /*Inserción zonas de Vargas*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 15, 28, datos_ubicacion(datos_ubicacion.validar_nombre('Plaza Soublette'),datos_ubicacion.validar_latitud(10.602868),datos_ubicacion.validar_longitud( -66.931390)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 15, 28, datos_ubicacion(datos_ubicacion.validar_nombre('Plaza Vargas'),datos_ubicacion.validar_latitud(10.601122),datos_ubicacion.validar_longitud( -66.933621)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 15, 28, datos_ubicacion(datos_ubicacion.validar_nombre('Plaza Bolívar'),datos_ubicacion.validar_latitud(0.602906),datos_ubicacion.validar_longitud(   -66.930726)));


    /*Inserción zonas de Yaracuy*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 16, 29, datos_ubicacion(datos_ubicacion.validar_nombre('Los Pinos'),datos_ubicacion.validar_latitud(10.151140),datos_ubicacion.validar_longitud( -68.557466)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 16, 29, datos_ubicacion(datos_ubicacion.validar_nombre('El Calvario'),datos_ubicacion.validar_latitud(10.155618),datos_ubicacion.validar_longitud( -68.570383)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 16, 29, datos_ubicacion(datos_ubicacion.validar_nombre('El Matadero'),datos_ubicacion.validar_latitud(10.158363),datos_ubicacion.validar_longitud(   -68.572143)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 16, 30, datos_ubicacion(datos_ubicacion.validar_nombre('Yaritagua'),datos_ubicacion.validar_latitud(10.075920),datos_ubicacion.validar_longitud(   -69.119068)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 16, 30, datos_ubicacion(datos_ubicacion.validar_nombre('Canaveral'),datos_ubicacion.validar_latitud(10.103299),datos_ubicacion.validar_longitud( -69.117953)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 16, 30, datos_ubicacion(datos_ubicacion.validar_nombre('Cambural'),datos_ubicacion.validar_latitud(10.105149),datos_ubicacion.validar_longitud(    -69.167088)));


    /*Inserción zonas de Bolívar*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 17, 31, datos_ubicacion(datos_ubicacion.validar_nombre('Alta Vista'),datos_ubicacion.validar_latitud(8.295329),datos_ubicacion.validar_longitud( -62.736328)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 17, 31, datos_ubicacion(datos_ubicacion.validar_nombre('La Laguna'),datos_ubicacion.validar_latitud(8.374971),datos_ubicacion.validar_longitud( -62.650610)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 17, 31, datos_ubicacion(datos_ubicacion.validar_nombre('Brisas del Orinoco'),datos_ubicacion.validar_latitud(8.382158),datos_ubicacion.validar_longitud(-62.627780)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 17, 32, datos_ubicacion(datos_ubicacion.validar_nombre('La Paragua'),datos_ubicacion.validar_latitud(8.081404),datos_ubicacion.validar_longitud(-63.520617)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 17, 32, datos_ubicacion(datos_ubicacion.validar_nombre('Los Coquitos'),datos_ubicacion.validar_latitud(8.135361),datos_ubicacion.validar_longitud(-63.514523)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 17, 32, datos_ubicacion(datos_ubicacion.validar_nombre('La Alameda'),datos_ubicacion.validar_latitud(8.145387),datos_ubicacion.validar_longitud(-63.545852)));


    /*Inserción zonas de Táchira*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 18, 33, datos_ubicacion(datos_ubicacion.validar_nombre('Veracruz'),datos_ubicacion.validar_latitud(7.659011),datos_ubicacion.validar_longitud( -72.253126)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 18, 33, datos_ubicacion(datos_ubicacion.validar_nombre('Los Nazarenos'),datos_ubicacion.validar_latitud(7.624473),datos_ubicacion.validar_longitud( -72.289561)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 18, 33, datos_ubicacion(datos_ubicacion.validar_nombre('Santa Ana del Táchira'),datos_ubicacion.validar_latitud(7.643179),datos_ubicacion.validar_longitud(-72.277498)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 18, 34, datos_ubicacion(datos_ubicacion.validar_nombre('San Josecito'),datos_ubicacion.validar_latitud(7.658988),datos_ubicacion.validar_longitud(-72.221900)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 18, 34, datos_ubicacion(datos_ubicacion.validar_nombre('La Pradera'),datos_ubicacion.validar_latitud(7.666857),datos_ubicacion.validar_longitud(-72.217351)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 18, 34, datos_ubicacion(datos_ubicacion.validar_nombre('Agua Dulce'),datos_ubicacion.validar_latitud(7.650397),datos_ubicacion.validar_longitud( -72.190357)));

    /*Inserción zonas de Delta Amacuro*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 19, 35, datos_ubicacion(datos_ubicacion.validar_nombre('El Triunfo'),datos_ubicacion.validar_latitud(8.410995),datos_ubicacion.validar_longitud( -62.495855)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 19, 35, datos_ubicacion(datos_ubicacion.validar_nombre('Piacoa'),datos_ubicacion.validar_latitud(8.561942),datos_ubicacion.validar_longitud(  -62.136739)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 19, 35, datos_ubicacion(datos_ubicacion.validar_nombre('Dinamita'),datos_ubicacion.validar_latitud(8.462430),datos_ubicacion.validar_longitud(-62.520682)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 19, 36, datos_ubicacion(datos_ubicacion.validar_nombre('Paloma'),datos_ubicacion.validar_latitud(9.019791),datos_ubicacion.validar_longitud(-62.056556)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 19, 36, datos_ubicacion(datos_ubicacion.validar_nombre('Urb. Delfín Mendoza'),datos_ubicacion.validar_latitud(9.049629),datos_ubicacion.validar_longitud(-62.043424)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 19, 36, datos_ubicacion(datos_ubicacion.validar_nombre('Tucupita'),datos_ubicacion.validar_latitud(9.069124),datos_ubicacion.validar_longitud( -62.045999)));


    /*Inserción zonas de Falcón*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 20, 37, datos_ubicacion(datos_ubicacion.validar_nombre('Sector Libertador'),datos_ubicacion.validar_latitud(11.726251),datos_ubicacion.validar_longitud( -70.175584)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 20, 37, datos_ubicacion(datos_ubicacion.validar_nombre('Sector Nuevo Pueblo'),datos_ubicacion.validar_latitud(11.714023),datos_ubicacion.validar_longitud(  -70.202792)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 20, 37, datos_ubicacion(datos_ubicacion.validar_nombre('Sector Universitario'),datos_ubicacion.validar_latitud(11.696247),datos_ubicacion.validar_longitud(-70.160048)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 20, 38, datos_ubicacion(datos_ubicacion.validar_nombre('Sanare'),datos_ubicacion.validar_latitud(10.869664),datos_ubicacion.validar_longitud( -68.374769)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 20, 38, datos_ubicacion(datos_ubicacion.validar_nombre('La Soledad'),datos_ubicacion.validar_latitud(10.861066),datos_ubicacion.validar_longitud(-68.342497)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 20, 38, datos_ubicacion(datos_ubicacion.validar_nombre('El Tuque'),datos_ubicacion.validar_latitud(10.822036),datos_ubicacion.validar_longitud( -68.341552)));


    /*Inserción zonas de Guárico*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 21, 39, datos_ubicacion(datos_ubicacion.validar_nombre('Colinas de Bucaral'),datos_ubicacion.validar_latitud(9.629246),datos_ubicacion.validar_longitud( -67.293598)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 21, 39, datos_ubicacion(datos_ubicacion.validar_nombre('Urb. Santa Rosa'),datos_ubicacion.validar_latitud(9.615558),datos_ubicacion.validar_longitud(  -67.287483)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 21, 39, datos_ubicacion(datos_ubicacion.validar_nombre('Urb. Banco Obrero'),datos_ubicacion.validar_latitud(9.617589),datos_ubicacion.validar_longitud( -67.287182)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 21, 40, datos_ubicacion(datos_ubicacion.validar_nombre('Parque Ferial'),datos_ubicacion.validar_latitud(8.998698),datos_ubicacion.validar_longitud( -65.748533)));

    /*Inserción zonas de Mérida*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 22, 41, datos_ubicacion(datos_ubicacion.validar_nombre('Mocao'),datos_ubicacion.validar_latitud(8.738046),datos_ubicacion.validar_longitud( -70.919257)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 22, 41, datos_ubicacion(datos_ubicacion.validar_nombre('El Royal'),datos_ubicacion.validar_latitud(8.758236),datos_ubicacion.validar_longitud(  -70.893594)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 22, 41, datos_ubicacion(datos_ubicacion.validar_nombre('El Pedregal'),datos_ubicacion.validar_latitud(8.783429),datos_ubicacion.validar_longitud(-70.857116)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 22, 42, datos_ubicacion(datos_ubicacion.validar_nombre('Llano Alto'),datos_ubicacion.validar_latitud(8.317196),datos_ubicacion.validar_longitud( -71.763983)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 22, 42, datos_ubicacion(datos_ubicacion.validar_nombre('Vista Alegre'),datos_ubicacion.validar_latitud(8.318852),datos_ubicacion.validar_longitud(-71.760678)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 22, 42, datos_ubicacion(datos_ubicacion.validar_nombre('Los Limones'),datos_ubicacion.validar_latitud(8.329638),datos_ubicacion.validar_longitud( -71.759605)));

    /*Inserción zonas de Nueva Esparta*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 23, 43, datos_ubicacion(datos_ubicacion.validar_nombre('Mata Redonda'),datos_ubicacion.validar_latitud(10.942448),datos_ubicacion.validar_longitud( -64.119500)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 23, 43, datos_ubicacion(datos_ubicacion.validar_nombre('Orinoco'),datos_ubicacion.validar_latitud(10.913964),datos_ubicacion.validar_longitud(  -64.034614)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 23, 43, datos_ubicacion(datos_ubicacion.validar_nombre('Chacachacare'),datos_ubicacion.validar_latitud(10.960381),datos_ubicacion.validar_longitud(-64.151901)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 23, 44, datos_ubicacion(datos_ubicacion.validar_nombre('Los Cerritos'),datos_ubicacion.validar_latitud(11.019682),datos_ubicacion.validar_longitud( -63.829741)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 23, 44, datos_ubicacion(datos_ubicacion.validar_nombre('Los Chacos'),datos_ubicacion.validar_latitud(11.011889),datos_ubicacion.validar_longitud(-63.832616)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 23, 44, datos_ubicacion(datos_ubicacion.validar_nombre('Los Robles'),datos_ubicacion.validar_latitud(11.003127),datos_ubicacion.validar_longitud( -63.837551)));


    /*Inserción zonas de Portuguesa*/
    /*MUNICIPIO 1*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 24, 45, datos_ubicacion(datos_ubicacion.validar_nombre('Baraure'),datos_ubicacion.validar_latitud(9.582228),datos_ubicacion.validar_longitud( -69.200739)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 24, 45, datos_ubicacion(datos_ubicacion.validar_nombre('Urb. Casa de Campo'),datos_ubicacion.validar_latitud(9.604886),datos_ubicacion.validar_longitud(  -69.238474)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 24, 45, datos_ubicacion(datos_ubicacion.validar_nombre('Algodonal'),datos_ubicacion.validar_latitud(9.619481),datos_ubicacion.validar_longitud(-69.153471)));

    /*MUNICIPIO 2*/

        INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 24, 46, datos_ubicacion(datos_ubicacion.validar_nombre('Espinital'),datos_ubicacion.validar_latitud(9.475304),datos_ubicacion.validar_longitud( -69.184771)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 24, 46, datos_ubicacion(datos_ubicacion.validar_nombre('Acarigua'),datos_ubicacion.validar_latitud(9.550051),datos_ubicacion.validar_longitud(-69.180651)));

       INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES
        (id_zona_sec.NEXTVAL, 24, 46, datos_ubicacion(datos_ubicacion.validar_nombre('Los Cortijos'),datos_ubicacion.validar_latitud(9.541841),datos_ubicacion.validar_longitud( -69.190135)));



    DBMS_OUTPUT.PUT_LINE('Zonas creadas exitosamente');

    END;

CREATE OR REPLACE PROCEDURE modulo_ubicacion IS
    BEGIN
       DBMS_OUTPUT.PUT_LINE('Iniciando módulo de ubicaciones...');
       DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');

       crear_estados();
       crear_municipios();
       crear_zonas();

       DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');
       DBMS_OUTPUT.PUT_LINE('Módulo de ubicaciones ejecutado exitosamente');

    END;








