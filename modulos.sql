
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
        zonas_a_insertar := (zonas_a_insertar MOD 12) + 3;
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
        zonas_a_insertar := (zonas_a_insertar MOD 12) + 3;
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
ult_serv TIMESTAMP;
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
            IF serv=1 THEN
                SELECT TO_DATE('2020-10-13','YYYY-MM-DD')+TRUNC(DBMS_RANDOM.VALUE(1,123)) INTO fecha FROM dual;
            ELSE
                SELECT MAX(s.rango_fechas.fecha_fin) INTO ult_serv FROM servicios s WHERE s.id_proveedor=prov.id;
                SELECT ult_serv+TRUNC(DBMS_RANDOM.VALUE(1,123)) INTO fecha FROM dual;
            END IF;
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
num_contrato NUMBER;
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
    num_contrato:=1;
    WHILE num_contrato<=20 LOOP
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
        /*se define de manera aleatoria la vigencia del contrato*/
        SELECT ROUND(DBMS_RANDOM.VALUE(1, 12)) INTO duracion FROM dual;
        /*se define de manera aleatoria una fecha de inicio del contrato*/
        SELECT TO_DATE('2020-10-13','YYYY-MM-DD')+TRUNC(DBMS_RANDOM.VALUE(1,123)) INTO fecha FROM dual;
        /*se inicia un descuento del 0%*/
        descu:=0;
        /*se cuentan todos los servicios del proveedor*/
        SELECT COUNT(*) INTO total_servs FROM servicios s
        WHERE s.id_proveedor=id_prov AND s.rango_fechas.fecha_fin>fecha AND s.rango_fechas.fecha_inicio<fecha;
        /*se cuentan todos los estados donde el proveedor y el productor tienen sucursales en comun*/
        SELECT COUNT(DISTINCT zpd.id_estado) INTO total_ests FROM zonas_productores zpd, zonas_proveedores zpv
        WHERE zpd.id_productor=id_prod AND zpv.id_proveedor=id_prov AND zpd.id_estado=zpv.id_estado;
        /*si hay estados en comun y servicios vigentes inserta el contrato*/
        IF total_ests>0 AND total_servs>0 THEN
            /*se inserta el contrato*/
            INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES
            (id_contrato_sec.nextval,id_prod,
             rango_fechas.VALIDAR_FECHAS(fecha,add_months(fecha,duracion)),descu);
            /*se busca el id del contrato (ultimo contrato creado)*/
            SELECT MAX(id) INTO id_contrato FROM contratos;
            /*se selecciona una cantidad aleatoria de servicios para el contrato*/
            SELECT ROUND(DBMS_RANDOM.VALUE(1,total_servs)) INTO cant_servs FROM dual;
            /*se guarda en un array de manera aleatoria los id de los servicios del proveedor*/
            SELECT s.id BULK COLLECT INTO id_servicios FROM servicios s WHERE s.id_proveedor=id_prov AND s.rango_fechas.fecha_fin>fecha AND s.rango_fechas.fecha_inicio<fecha ORDER BY DBMS_RANDOM.VALUE();
            /*se insertan n cantidad de servicios para el contrato*/
            FOR i IN 1..cant_servs LOOP
                INSERT INTO servicios_contratos (id_contrato, id_productor, id_proveedor, id_servicio) VALUES
                (id_contrato,id_prod,id_prov,id_servicios(i));
            END LOOP;
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
            num_contrato:=num_contrato+1;
        END IF;
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

    /*
    Trigger que se ejecuta cada vez que se crea un producto, se encarga de asignarle una cantidad n
    aleatoria de productores a cada pedido creado en la tabla productos_productor
*/
CREATE OR REPLACE TRIGGER asignar_productores_producto AFTER INSERT ON productos FOR EACH ROW
DECLARE
    ctd_asignar INTEGER;
    ctd_productores INTEGER;
    id_productor_rand INTEGER;
    nombre_productor VARCHAR2(100);
    flag_existe INTEGER;
BEGIN
    /* se cuenta la cantidad de productores en el sistema */
    ctd_productores := 0;
    SELECT COUNT(*) INTO ctd_productores FROM productores;
    /* se genera un numero aleatorio n (ctd_asignar) que determinara a cuantos productores se le asignara el producto,
       este numero va decrementando a medida que se asignan productores de tal forma de asignar la cantidad n randomizada */
    ctd_asignar := TRUNC(DBMS_RANDOM.VALUE(1, ctd_productores + 1), 0);
    DBMS_OUTPUT.PUT('Productores -->');
    WHILE ctd_asignar > 0 LOOP
        /* se randomiza un productor al cual asignarle el producto */
        id_productor_rand := TRUNC(DBMS_RANDOM.VALUE(1, ctd_productores + 1), 0);
        /* se revisa si este productor ya tiene el producto asignado, en tal caso no se asigna nuevamente y la ctd_asignar no decrementa,
           en el caso contrario se realiza el insert y se decrementa ctd_asignar
         */
        SELECT COUNT(*) INTO flag_existe FROM productos_productor WHERE id_producto = :new.id AND id_productor = id_productor_rand;
        IF flag_existe = 0 THEN
            SELECT p.datos_empresa.nombre INTO nombre_productor FROM productores p WHERE p.id = id_productor_rand;
            DBMS_OUTPUT.PUT(' | ' || nombre_productor);
            INSERT INTO productos_productor (id_producto, id_productor) VALUES (:new.id, id_productor_rand);
            ctd_asignar := ctd_asignar - 1;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
END;
/
/* Procedure para crear pedidos, recibe como parametro la cantidad de productos a crear y realiza la creacion de los productos respectivos */
CREATE OR REPLACE PROCEDURE crear_productos (ctd_productos INTEGER) IS
    TYPE arreglo_varchar2 IS VARRAY(50) OF VARCHAR2(50);
    TYPE arreglo_char IS VARRAY(4) OF CHAR(2);
    arreglo_comidas arreglo_varchar2;
    arreglo_bebidas arreglo_varchar2;
    arreglo_medicinas_solidas arreglo_varchar2;
    arreglo_medicionas_liquidas arreglo_varchar2;
    arreglo_unidades arreglo_char;
    num_prods_acum INTEGER;
    num_random INTEGER;
    medida_selec CHAR(2);
    nombre_selec VARCHAR2(50);
    sector_selec INTEGER;
    unique_flag INTEGER;
BEGIN
    /* Se crean una serie de arreglos con datos posibles para cada producto */
    /* 50 comidas solidas posibles */
    arreglo_comidas := arreglo_varchar2('Hamburguesa de carne', 'Helado', 'Sandwich', 'Dona', 'Pastel de frambuesa', 'Churro', 'Galleta', 'Polvorosas', 'Hot dogs', 'Pizza',
    'Pasta', 'Nachos', 'Shawarma', 'Papitas fritas', 'Yuca frita', 'Carne asada', 'Parrila mar y tierra', 'Bistec', 'Arroz chino', 'Sushi', 'Rueda de salmon', 'Ensalada cesar',
    'Ensalada mozzarela', 'Pollo frito', 'Aros de cebolla', 'Empanadas', 'Pastelito', 'Tequeños', 'Nuggets', 'Cotufas', 'Barra de chocolate', 'Hallaca', 'Ensalada de gallina',
    'Ensalada verde', 'Tostones', 'Granjero', 'Pollo en brasas', 'Paella', 'Sopa de cebolla', 'Crema de apio', 'Pie de limon', 'Chupetas de pollo', 'Ensalada de aguacate',
    'Ensalada de frutas', 'Alitas de pollo', 'Chuleta de cerdo', 'Yuca asada', 'Parrilla de mariscos', 'Hamburguesa de pollo', 'Dorado frito');
    /* 20 comidas liquidas posibles */
    arreglo_bebidas := arreglo_varchar2('Coca cola', 'Agua', 'Cerveza regular', 'Cerveza ligera', 'Coca cola ligera', 'Chinotto', 'Frescolita', 'Jugo de parchita', 'Jugo de manzana',
    'Limonada', 'Jogo de naranja', 'Nestea de limon', 'Nestea de durazno', 'Agua con gas', 'Cerveza sin alcohol', 'Cafe negro', 'Cafe con leche', 'Chocolate caliente', 'Yogurt con azucar',
    'Yogurt sin azucar');
    /* 10 medicinas solidas posibles */
    arreglo_medicinas_solidas := arreglo_varchar2('Vitamina C', 'Omega 3/6/12', 'Zinc', 'Acetaminophem', 'Antigripal en pastillas', 'Acido úrico', 'Vitamina B12', 'Biotin', 'Alkaseltzer', 'Laxante en pastillas');
    /* 5 medicinas liquidas posibles */
    arreglo_medicionas_liquidas := arreglo_varchar2('Jarabe de toz', 'Laxante liquido', 'Peptobismol', 'Herbalife', 'Jarabe de acetaminophen');
    /* 4 tipos de unidad de medida posible */
    arreglo_unidades := arreglo_char('kg', 'g', 'lt', 'ml');

    DBMS_OUTPUT.PUT_LINE('Insertando productos...');
    /* se procede a crear 30 productos, la variable num_prods_acum ira contando cuantos se han creado */
    num_prods_acum := 0;
    WHILE num_prods_acum < ctd_productos LOOP
        /* se calcula un numero random del 1 al 4 que determinara si el producto a crear es comida, bebida, medicina solida o medicina liquida */
        num_random := TRUNC(DBMS_RANDOM.VALUE(1, 5), 0);

        /* en caso de comida, se determina el nombre con un numero random del 1 al 50, se selecciona el sector alimenticio y se selecciona la unidad de medida
           con un numero aleatorio del 1 al 2
         */
        IF num_random = 1 THEN
            num_random := TRUNC(DBMS_RANDOM.VALUE(1, 51), 0);
            nombre_selec := arreglo_comidas(num_random);
            num_random := TRUNC(DBMS_RANDOM.VALUE(1, 3), 0);
            medida_selec := arreglo_unidades(num_random);
            SELECT id INTO sector_selec FROM sectores WHERE nombre = 'Alimenticio';

        /* en caso de bebida, se determina el nombre con un numero random del 1 al 20, se selecciona el sector alimenticio y se selecciona la unidad de medida
           con un numero aleatorio del 3 al 4
         */
        ELSIF num_random = 2 THEN
            num_random := TRUNC(DBMS_RANDOM.VALUE(1, 21), 0);
            nombre_selec := arreglo_bebidas(num_random);
            num_random := TRUNC(DBMS_RANDOM.VALUE(3, 5), 0);
            medida_selec := arreglo_unidades(num_random);
            SELECT id INTO sector_selec FROM sectores WHERE nombre = 'Alimenticio';

        /* en caso de medicina solida, se determina el nombre con un numero random del 1 al 10, se selecciona el sector farmaceutico
           y se selecciona la unidad de medida con un numero aleatorio del 1 al 2
         */
        ELSIF num_random = 3 THEN
            num_random := TRUNC(DBMS_RANDOM.VALUE(1, 11), 0);
            nombre_selec := arreglo_medicinas_solidas(num_random);
            num_random := TRUNC(DBMS_RANDOM.VALUE(1, 3), 0);
            medida_selec := arreglo_unidades(num_random);
            SELECT id INTO sector_selec FROM sectores WHERE nombre = 'Farmaceutico';

        /* en caso de medicina liquida, se determina el nombre con un numero random del 1 al 5, se selecciona el sector farmaceutico
           y se selecciona la unidad de medida con un numero aleatorio del 3 al 4
         */
        ELSE
            num_random := TRUNC(DBMS_RANDOM.VALUE(1, 6), 0);
            nombre_selec := arreglo_medicionas_liquidas(num_random);
            num_random := TRUNC(DBMS_RANDOM.VALUE(3, 5), 0);
            medida_selec := arreglo_unidades(num_random);
            SELECT id INTO sector_selec FROM sectores WHERE nombre = 'Farmaceutico';

        END IF;

        /* Se revisa que un producto con el nombre seleccionado no exista actualmente,
           en caso de que exista no se inserta y en el otro caso si se inserta y se incrementa la variable contadora
         */
        SELECT COUNT(*) INTO unique_flag FROM productos WHERE nombre = nombre_selec;
        IF unique_flag = 0 THEN
            DBMS_OUTPUT.PUT_LINE('Producto creado --> ' || nombre_selec);
            /* si la medida es en kg o lt se randomiza la medida de 1 a 10 */
            IF medida_selec = 'kg' OR medida_selec = 'lt' THEN
                INSERT INTO productos (id, id_sector, nombre, medida, unidad_medida, precio_unitario) VALUES
                (id_producto_sec.nextval, sector_selec, nombre_selec, TRUNC(DBMS_RANDOM.VALUE(1,10), 2), medida_selec, TRUNC(DBMS_RANDOM.VALUE(1, 51), 2));
            /* si la medida es en g o ml se randomiza la medida de 1 a 1000 */
            ELSE
                INSERT INTO productos (id, id_sector, nombre, medida, unidad_medida, precio_unitario) VALUES
                (id_producto_sec.nextval, sector_selec, nombre_selec, TRUNC(DBMS_RANDOM.VALUE(1,1000), 2), medida_selec, TRUNC(DBMS_RANDOM.VALUE(1, 51), 2));
            END IF;
            num_prods_acum := num_prods_acum + 1;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Productos creados exitosamente.');
END;

CREATE OR REPLACE PROCEDURE modulo_productos IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('Iniciando módulo de productos...');
    DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------');
    crear_productos(30);
    DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('El módulo de productos se ha ejecutado satisfactoriamente.');
END;

    /* Cada vez que se registre un usuario en un proveedor, este registra entre 1 a 5 zonas de delivery
   en el estado del proveedor (aleatoriamente se calcula cuantas)
 */
CREATE OR REPLACE TRIGGER asignar_zonas_usuario AFTER INSERT ON usuarios FOR EACH ROW
DECLARE
    ctd_direcciones INTEGER;
    zona_ins INTEGER;
    municipio_ins INTEGER;
    estado_ins INTEGER;
    unique_flag INTEGER;
    TYPE arreglo_varchar2 IS VARRAY(100) OF VARCHAR2(50);
    arreglo_tipo_calle arreglo_varchar2;
    arreglo_nombre_calle arreglo_varchar2;
    arreglo_tipo_edificacion arreglo_varchar2;
    tipo_calle_selec VARCHAR2(50);
    nombre_calle_selec VARCHAR2(50);
    tipo_edificacion_selec VARCHAR2(50);
BEGIN
    /* 7 tipos de calle posibles */
    arreglo_tipo_calle := arreglo_varchar2('Calle', 'Avenida', 'Carretera', 'Bulevar', 'Callejón', 'Redoma', 'Transversal');
    /* 50 nombres de calle posibles */
    arreglo_nombre_calle := arreglo_varchar2('Franciso de Miranda', 'San Marino', 'Blandin', 'Guaicaipuro', 'Blanco', 'Temeraria', 'Ampies',
    'Manaure', 'Ruiz Pineda', 'Sucre', 'Iturbe', 'Rómulo Gallegos', 'Los Perozos', 'Maparari', 'Las Palmas', 'Los Cocos', 'San Juan',
    'Las Brisas', 'San Augusto', 'Medina', 'Variante', 'Virgilio', 'La Paz', 'Iturriza', 'España', 'Carabobo', 'Quinquimari', 'Fortunato Gómez',
    'Lucio', 'Soto', 'Rotaria', 'Colinas del Torbes', 'Camejo', 'xColon', 'La Parada', 'Cumanacoa', 'Las Americas', 'Juncal', 'Santa Teresa',
    'Cantaura', 'Las Margaritas', 'Acosta', 'Junin', 'Prado', 'Los Leones', 'Circunvalación del Sol', 'Miramonte', 'Porvenir', 'Hierbas', 'Las Bellezas');
    /* 5 tipos de edificacion posibles */
    arreglo_tipo_edificacion := arreglo_varchar2('Edificio', 'Casa', 'Oficina', 'Comercio', 'Local');
    /* se calcula con un random la cantidad de direcciones a insertar */
    ctd_direcciones := TRUNC(DBMS_RANDOM.VALUE(1,6),0);
    /* mientras halla direcciones por insertar */
    WHILE ctd_direcciones > 0 LOOP
        /* se selecciona una zona aleatoria que se encuentre en un estado de las sucursales del proveedor */
        SELECT id_estado, id_municipio, id INTO estado_ins, municipio_ins, zona_ins FROM
            (SELECT z.id_estado, z.id_municipio, z.id FROM zonas z INNER JOIN zonas_proveedores zp
            ON z.id_estado = zp.id_estado WHERE zp.id_proveedor = :new.id_proveedor ORDER BY DBMS_RANDOM.RANDOM())
        WHERE ROWNUM=1;
        /* se revisa si el registro con esa zona y ese usuario ya existe */
        SELECT COUNT(*) INTO unique_flag FROM zonas_usuarios zu WHERE zu.cedula_usuario = :new.cedula AND
        zu.id_proveedor_usuario = :new.id_proveedor AND zu.id_zona = zona_ins AND zu.id_municipio = municipio_ins
        AND zu.id_estado = estado_ins;
        /* en caso que no exista, se randomiza una direccion y se realiza el insert de la zona con el
           usuario y se decrementa la cantidad de direcciones por insertar, sino no se hace nada */
        IF unique_flag = 0 THEN
            /* se seleccionan los datos de la direccion aleatoriamente */
            tipo_calle_selec := arreglo_tipo_calle(TRUNC(DBMS_RANDOM.VALUE(1,8), 0));
            nombre_calle_selec := arreglo_nombre_calle(TRUNC(DBMS_RANDOM.VALUE(1,51), 0));
            tipo_edificacion_selec := arreglo_tipo_edificacion(TRUNC(DBMS_RANDOM.VALUE(1,6), 0));
            /* se hace el insert */
            INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES
            (:new.cedula, :new.id_proveedor, estado_ins, municipio_ins, zona_ins,
            tipo_calle_selec || ' ' || nombre_calle_selec || ', ' || tipo_edificacion_selec || ' ' || TO_CHAR(TRUNC(DBMS_RANDOM.VALUE(1,1001),0)));
            ctd_direcciones := ctd_direcciones - 1;
        END IF;
    END LOOP;
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

    --Modulo de transportes

CREATE OR REPLACE PROCEDURE crear_transportes IS
    transportes_a_insertar NUMBER;
    tipo_transporte CHAR(3);
    estatus CHAR(1);
    placa VARCHAR2(7);
    letras_placa VARCHAR(26);
    numeros_placa VARCHAR(10);
    existe_placa NUMBER;
    cantidad_zonas_proveedor NUMBER;
    zona_transporte NUMBER;
    indice_zona NUMBER;
    probabilidad_transporte NUMBER;
    nombre_estado estados.datos_ubicacion.nombre%type;
    BEGIN
        probabilidad_transporte := 0;
        transportes_a_insertar := 0;
        letras_placa := 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        numeros_placa := '0123456789';
        existe_placa := 0;
        cantidad_zonas_proveedor := 0;
        zona_transporte := 0;
        indice_zona := 0;

        DBMS_OUTPUT.PUT_LINE('Insertando transportes...');

        FOR proveedor IN (SELECT * FROM proveedores p)
        LOOP

                FOR crear_estado IN (SELECT DISTINCT(zp.id_estado) id FROM zonas_proveedores zp WHERE proveedor.ID = zp.ID_PROVEEDOR)
                LOOP

                    transportes_a_insertar := CEIL(DBMS_RANDOM.VALUE(7,12));

                    SELECT e.datos_ubicacion.nombre INTO nombre_estado FROM estados e WHERE e.id = crear_estado.id;
                    DBMS_OUTPUT.PUT_LINE('Insertando '||transportes_a_insertar||' transportes para el proveedor: '||proveedor.datos_empresa.nombre || ' en el estado: ' || nombre_estado);

                    FOR i IN 1..transportes_a_insertar

                    LOOP
                        --Condicional para determinar el tipo de transporte
                        probabilidad_transporte := CEIL(DBMS_RANDOM.VALUE(0,4));
                        IF probabilidad_transporte = 1 THEN
                            tipo_transporte := 'bic';
                        ELSIF probabilidad_transporte = 2 THEN
                            tipo_transporte := 'mot';
                        ELSIF probabilidad_transporte = 3 THEN
                            tipo_transporte := 'cam';
                        ELSE
                            tipo_transporte := 'car';
                        END IF;

                        --Creación de la placa del transporte
                        IF tipo_transporte != 'bic' THEN

                            LOOP
                                placa := SUBSTR(letras_placa,DBMS_RANDOM.VALUE(1,26),1)||SUBSTR(letras_placa,DBMS_RANDOM.VALUE(1,26) ,1)
                                ||SUBSTR(numeros_placa,DBMS_RANDOM.VALUE(1,10) ,1)||SUBSTR(numeros_placa,DBMS_RANDOM.VALUE(1,10),1)
                                ||SUBSTR(numeros_placa, DBMS_RANDOM.VALUE(1,10) ,1)
                                ||SUBSTR(letras_placa,DBMS_RANDOM.VALUE(1,26),1)||SUBSTR(letras_placa,DBMS_RANDOM.VALUE(1,26),1);


                                SELECT COUNT(*) INTO existe_placa
                                FROM transportes
                                WHERE numero_placa = placa;

                                EXIT WHEN existe_placa = 0;

                            END LOOP;
                        END IF;

                        --Condicional para determinar estatus del transporte
                        IF CEIL(DBMS_RANDOM.VALUE(0,10)) <= 2 THEN
                            estatus := 'd';
                        ELSE
                            estatus := 'f';
                        END IF;

                        /*Para cada estado se seleccionan n zonas aleatorias para insertar los transportes*/
                        SELECT COUNT(*) INTO cantidad_zonas_proveedor
                        FROM zonas_proveedores zp
                        WHERE proveedor.ID=zp.ID_PROVEEDOR AND zp.id_estado = crear_estado.id;

                        zona_transporte := CEIL(DBMS_RANDOM.VALUE(1,cantidad_zonas_proveedor));

                        indice_zona := 1;

                        FOR crear_zona IN (SELECT zp.ID_ZONA id_zona, zp.ID_MUNICIPIO id_municipio, zp.ID_ESTADO id_estado
                                            FROM zonas_proveedores zp
                                            WHERE proveedor.ID=zp.ID_PROVEEDOR AND zp.id_estado = crear_estado.id
                                            ORDER BY DBMS_RANDOM.RANDOM())

                        LOOP
                            --Creacion del transporte
                            IF indice_zona = zona_transporte THEN

                                IF tipo_transporte = 'bic' THEN
                                    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus)
                                    VALUES (id_transporte_sec.nextval, proveedor.ID, crear_zona.ID_ESTADO, crear_zona.ID_MUNICIPIO, crear_zona.ID_ZONA, tipo_transporte, estatus);
                                ELSE
                                    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa)
                                    VALUES (id_transporte_sec.nextval, proveedor.ID, crear_zona.ID_ESTADO, crear_zona.ID_MUNICIPIO, crear_zona.ID_ZONA, tipo_transporte, estatus, placa);

                                END IF;

                            END IF;

                            indice_zona := indice_zona + 1;

                        END LOOP;

                    END LOOP;


                END LOOP;

        END LOOP;

        DBMS_OUTPUT.PUT_LINE('Transportes creados exitosamente');

    END;



CREATE OR REPLACE PROCEDURE modulo_transportes IS
    BEGIN
       DBMS_OUTPUT.PUT_LINE('Iniciando módulo de transportes...');
       DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');


       crear_transportes();

       DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');
       DBMS_OUTPUT.PUT_LINE('Módulo de transportes ejecutado satisfactoriamente');

    END;

/* Modulo de pedidos */

CREATE OR REPLACE PROCEDURE crear_pedidos IS
    TYPE arreglo_varchar2 IS VARRAY(100) OF VARCHAR2(50);
    arreglo_tipo_referencia arreglo_varchar2;
    arreglo_nombre_referencia arreglo_varchar2;

    registro_contrato contratos%rowtype;
    id_proveedor_contrato proveedores.id%type;
    nombre_proveedor_contrato proveedores.datos_empresa.nombre%type;
    nombre_productor_contrato productores.datos_empresa.nombre%type;
    cantidad_pedidos_realizados NUMBER;
    limite_envios NUMBER;
    cantidad_usuarios NUMBER;
    cedula_pedido usuarios.cedula%type;
    email_pedido usuarios.email%type;
    primer_nombre_pedido usuarios.primer_nombre%type;
    primer_apellido_pedido usuarios.primer_apellido%type;
    zona_pedido zonas.id%type;
    estado_pedido estados.id%type;
    municipio_pedido municipios.id%type;
    direccion_pedido zonas_usuarios.direccion%type;
    nombre_zona zonas.datos_ubicacion.nombre%type;
    nombre_estado estados.datos_ubicacion.nombre%type;
    nombre_municipio municipios.datos_ubicacion.nombre%type;
    distancia_productor_usuario NUMBER;
    latitud_destino zonas.datos_ubicacion.latitud%type;
    longitud_destino zonas.datos_ubicacion.longitud%type;
    latitud_origen zonas.datos_ubicacion.latitud%type;
    longitud_origen zonas.datos_ubicacion.longitud%type;
    id_zona_origen zonas.id%type;
    id_municipio_origen municipios.id%type;
    idd_estado_origen estados.id%type;
    nombre_zona_origen zonas.datos_ubicacion.nombre%type;
    nombre_municipio_origen municipios.datos_ubicacion.nombre%type;
    nombre_estado_origen estados.datos_ubicacion.nombre%type;
    distancia_transporte_destino NUMBER;
    nueva_distancia_transporte_destino NUMBER;
    transporte_a_usar NUMBER;
    referencia_a_usar VARCHAR2(50);
    tracking_pedido_creado NUMBER;
    productos_a_crear NUMBER;
    cantidad_productos_productor NUMBER;
    duracion_pedido NUMBER;
    tipo_transporte CHAR(3);
    latitud_transporte zonas.datos_ubicacion.latitud%type;
    longitud_transporte zonas.datos_ubicacion.longitud%type;
    cantidad_acumulada_productos NUMBER;
    cantidad_productos_insertar NUMBER;
    descuento_acumulado NUMBER;
    pedidos_previos NUMBER;
    sectores_productos_pedido NUMBER;
    cantidad_pedidos_creados NUMBER;
    productos_posee_productor NUMBER;
    BEGIN

        duracion_pedido:= 0;
        /* 7 tipos de calle referencias */
        arreglo_tipo_referencia:= arreglo_varchar2('Hotel', 'Torre', 'Edificio', 'Estación de Servicio', 'Centro Comercial', 'Colegio', 'Gimnasio');

        /* 50 nombres de referencias*/
        arreglo_nombre_referencia:= arreglo_varchar2('Sol de Oro', 'El Amanecer', 'El Limón', 'Naranjal', 'La paz', 'Celeste', 'Orinoco', 'Agua Dulce', 'La piedra',
                                    'San Ignacio', 'Paraíso', 'Bolívar', 'Junín', 'El Centro', 'Candoral', 'Sebucán', 'Santa Fe', 'San Antonio', 'Líder', 'Naranjal',
                                    'El Porvenir', 'Casa Blanca', 'Las Palmeras', 'Tolón', 'Torbes', 'Ávila', 'Albión', 'Carabobo', 'Las Flores', 'Santillana', 'Santa Bárbara',
                                    'San Pedro', 'La Hacienda', 'El Valle', 'El Alba', 'Baralt', 'Amazonas', 'Imperial', 'El Alba', 'Las Américas', 'Las Palmas', 'Manaure',
                                    'El Arco', 'Lima', 'Altamira', 'Florida', 'Prado', 'Colinas', 'Turpial', 'Araguaney');

        /*CICLO PARA CREAR 100 PEDIDOS*/
        cantidad_pedidos_creados := 0;
        productos_posee_productor := 0;
        LOOP

            /*Si el productor no tiene productos no se crea el pedido*/

            SELECT * INTO registro_contrato FROM (SELECT * FROM contratos ORDER BY DBMS_RANDOM.RANDOM()) WHERE ROWNUM <2;

            SELECT COUNT(*) INTO productos_posee_productor FROM productos_productor pp WHERE registro_contrato.ID_PRODUCTOR = pp.ID_PRODUCTOR;

            IF productos_posee_productor != 0 THEN

                DBMS_OUTPUT.PUT_LINE('Intentando crear pedido...');
                DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');

                --SELECT * INTO registro_contrato FROM (SELECT * FROM contratos ORDER BY DBMS_RANDOM.RANDOM()) WHERE ROWNUM <2;

                SELECT sc.id_proveedor, p.datos_empresa.nombre INTO id_proveedor_contrato, nombre_proveedor_contrato
                FROM servicios_contratos sc, proveedores p
                WHERE registro_contrato.id=sc.ID_CONTRATO AND sc.id_proveedor = p.id AND ROWNUM < 2;

                SELECT prod.datos_empresa.nombre INTO nombre_productor_contrato FROM productores prod WHERE prod.id = registro_contrato.ID_PRODUCTOR;

                DBMS_OUTPUT.PUT_LINE('+---------------------------------------------------------------------+');
                DBMS_OUTPUT.PUT_LINE('|                          Datos del contrato                         |');
                DBMS_OUTPUT.PUT_LINE('+---------------------------------------------------------------------+');

                DBMS_OUTPUT.PUT_LINE('ID del contrato: ' || registro_contrato.id);
                DBMS_OUTPUT.PUT_LINE('Proveedor: ' || nombre_proveedor_contrato);
                DBMS_OUTPUT.PUT_LINE('Productor: ' || nombre_productor_contrato);

                /*Se cuenta la cantidad de pedidos realizados previamente para ese contrato y se compara con el limite de pedidos de los servicios*/

                SELECT COUNT(*) INTO cantidad_pedidos_realizados FROM pedidos ped WHERE registro_contrato.id = ped.ID_CONTRATO;

                DBMS_OUTPUT.PUT_LINE('cantidad de envios del contrato realizados: ' || cantidad_pedidos_realizados);

                SELECT SUM(cantidad) INTO limite_envios
                FROM servicios serv, servicios_contratos sc
                WHERE id_proveedor_contrato = serv.ID_PROVEEDOR AND id_proveedor_contrato = sc.ID_PROVEEDOR AND sc.ID_CONTRATO = registro_contrato.ID
                AND serv.ID_PROVEEDOR = sc.ID_PROVEEDOR;

                DBMS_OUTPUT.PUT_LINE('limite de envios del contrato: ' || limite_envios);

                IF cantidad_pedidos_realizados < limite_envios THEN

                    /*Se selecciona aleatoriamente un usuario registrado con el proveedor y que
                      contenga una ubicación en un estado de los que se especifíca en el contrato*/

                    SELECT COUNT(*) INTO cantidad_usuarios
                    FROM zonas_usuarios zu, estados_contratos ec
                    WHERE id_proveedor_contrato = zu.ID_PROVEEDOR_USUARIO AND zu.ID_ESTADO = ec.ID_ESTADO AND registro_contrato.id = ec.id_contrato;

                    IF cantidad_usuarios > 0 THEN

                        /*Query para seleccionar el usuario aleatorio del proveedor que tenga el mismo estado que algun estado del contrato*/
                        SELECT primer_nombre, primer_apellido, cedula, email, estado
                        INTO primer_nombre_pedido, primer_apellido_pedido, cedula_pedido, email_pedido, estado_pedido
                        FROM (SELECT u.primer_nombre primer_nombre, u.primer_apellido primer_apellido, u.cedula cedula, u.email email, zu.ID_ESTADO estado
                              FROM usuarios u, zonas_usuarios zu, estados_contratos ec
                              WHERE id_proveedor_contrato = zu.ID_PROVEEDOR_USUARIO AND zu.ID_ESTADO = ec.ID_ESTADO AND registro_contrato.id = ec.ID_CONTRATO AND zu.cedula_usuario = u.cedula
                              ORDER BY DBMS_RANDOM.RANDOM())
                        WHERE ROWNUM < 2;



                        /*Query para seleccionar la dirección completa del usuario seleccionado previamente */
                        SELECT zona, mun, dir INTO zona_pedido, municipio_pedido, direccion_pedido
                        FROM (SELECT zu.ID_ZONA zona, zu.ID_MUNICIPIO mun, zu.direccion dir
                              FROM zonas_usuarios zu
                              WHERE cedula_pedido = zu.cedula_usuario AND estado_pedido = zu.id_estado AND zu.ID_PROVEEDOR_USUARIO = id_proveedor_contrato
                              ORDER BY DBMS_RANDOM.RANDOM())
                        WHERE ROWNUM < 2;



                        /*Query para seleccionar el nombre de las zona, municipio y estado*/

                        SELECT z.datos_ubicacion.nombre, m.datos_ubicacion.nombre , e.datos_ubicacion.nombre, z.datos_ubicacion.latitud, z.datos_ubicacion.longitud
                        INTO nombre_zona, nombre_municipio, nombre_estado, latitud_destino, longitud_destino
                        FROM zonas z, municipios m, estados e
                        WHERE zona_pedido = z.id AND m.id = z.ID_MUNICIPIO AND e.id = m.ID_ESTADO;


                        DBMS_OUTPUT.PUT_LINE('+---------------------------------------------------------------------+');
                        DBMS_OUTPUT.PUT_LINE('|                          Datos del usuario                          |');
                        DBMS_OUTPUT.PUT_LINE('+---------------------------------------------------------------------+');
                        DBMS_OUTPUT.PUT_LINE('Nombre: ' || primer_nombre_pedido || ' ' || primer_apellido_pedido );
                        DBMS_OUTPUT.PUT_LINE('Cédula: ' || cedula_pedido);
                        DBMS_OUTPUT.PUT_LINE('Email: ' || email_pedido);
                        DBMS_OUTPUT.PUT_LINE('Dirección: ' || direccion_pedido || ', ' || nombre_zona || ', ' || nombre_municipio || ', ' || nombre_estado);
                        DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');

                        /*Se selecciona la sucursal del productor que pertenezca a los estados del contrato más cercana a la ubicación
                          del usuario como zona de origen de pedido*/

                        distancia_productor_usuario := -1;

                        FOR sucursal IN (SELECT z.datos_ubicacion.latitud lat, z.datos_ubicacion.longitud lon, z.id z_id FROM zonas_productores zp, zonas z WHERE registro_contrato.ID_PRODUCTOR = zp.ID_PRODUCTOR AND z.id = zp.ID_ZONA AND zp.ID_ESTADO = estado_pedido)
                        LOOP
                            /*Estado inicial de la distancia entre la sucursal del productor y el usuario*/
                            IF distancia_productor_usuario = -1 THEN
                                distancia_productor_usuario := ABS(sucursal.lat - latitud_destino) + ABS(sucursal.lon - longitud_destino);
                                id_zona_origen := sucursal.z_id;
                                latitud_origen := sucursal.lat;
                                longitud_origen := sucursal.lon;
                            ELSE
                                IF (ABS(sucursal.lat - latitud_destino) + ABS(sucursal.lon - longitud_destino)) < distancia_productor_usuario THEN

                                    distancia_productor_usuario := ABS(sucursal.lat - latitud_destino) + ABS(sucursal.lon - longitud_destino);
                                    id_zona_origen := sucursal.z_id;
                                    latitud_origen := sucursal.lat;
                                    longitud_origen := sucursal.lon;

                                END IF;
                            END IF;


                        END LOOP;

                        /*Se busca toda la información respectiva al origen del pedido*/

                        SELECT z.datos_ubicacion.nombre, m.datos_ubicacion.nombre, e.datos_ubicacion.nombre, m.id, e.id
                        INTO nombre_zona_origen, nombre_municipio_origen, nombre_estado_origen, id_municipio_origen, idd_estado_origen
                        FROM zonas z, municipios m, estados e
                        WHERE id_zona_origen = z.id AND m.id = z.ID_MUNICIPIO AND e.id = m.ID_ESTADO;

                        /*Se muestra en pantalla los datos de la ubicación origen*/
                        DBMS_OUTPUT.PUT_LINE('+-----------------------------------------------------------------------------------------+');
                        DBMS_OUTPUT.PUT_LINE('|Datos de la ubicación de la sucursal del productor más cercana a la ubicación del usuario|');
                        DBMS_OUTPUT.PUT_LINE('+-----------------------------------------------------------------------------------------+');
                        DBMS_OUTPUT.PUT_LINE('Zona: ' || nombre_zona_origen);
                        DBMS_OUTPUT.PUT_LINE('Municipio: ' || nombre_municipio_origen);
                        DBMS_OUTPUT.PUT_LINE('Estado: ' || nombre_estado_origen);
                        DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');

                        /*se comparan los municipios de origen y destino*/

                        distancia_transporte_destino := -1;
                        transporte_a_usar := 0;

                        /*ciclo para buscar el transporte funcional más cercano a la zona origen del pedido*/
                        FOR t IN (SELECT t.id, t.id_proveedor, t.id_estado, t.id_municipio, t.id_zona, t.tipo, t.estatus FROM transportes t LEFT JOIN pedidos p ON p.id_transporte = t.id
                                    AND p.estatus = 'en' AND p.id_estado_origen = t.id_estado
                                    WHERE t.estatus = 'f' AND idd_estado_origen = t.ID_ESTADO
                                    AND t.id_proveedor = id_proveedor_contrato)

                        LOOP
                            SELECT z.datos_ubicacion.latitud, z.datos_ubicacion.longitud
                            INTO latitud_transporte,longitud_transporte
                            FROM zonas z WHERE z.id = t.id_zona;

                            nueva_distancia_transporte_destino := (ABS(latitud_origen - latitud_transporte) + ABS(longitud_origen - longitud_transporte));


                            IF id_municipio_origen = municipio_pedido THEN

                                /*Estado inicial de la distancia entre la sucursal del productor y el transporte*/
                                IF distancia_transporte_destino = -1 THEN
                                    distancia_transporte_destino := nueva_distancia_transporte_destino;
                                    transporte_a_usar := t.id;
                                    tipo_transporte := t.tipo;
                                ELSE
                                    IF nueva_distancia_transporte_destino < distancia_transporte_destino THEN
                                        distancia_transporte_destino := nueva_distancia_transporte_destino;
                                        transporte_a_usar := t.id;
                                        tipo_transporte := t.tipo;
                                    END IF;
                                END IF;

                            ELSE

                                IF t.tipo != 'bic' THEN

                                    IF distancia_transporte_destino = -1 THEN
                                        distancia_transporte_destino := nueva_distancia_transporte_destino;
                                        transporte_a_usar := t.id;
                                        tipo_transporte := t.tipo;
                                    ELSE
                                        IF nueva_distancia_transporte_destino < distancia_transporte_destino THEN
                                            distancia_transporte_destino := nueva_distancia_transporte_destino;
                                            transporte_a_usar := t.id;
                                            tipo_transporte := t.tipo;
                                        END IF;
                                    END IF;

                                END IF;

                            END IF;

                        END LOOP;

                        /*Si no hay un transporte disponible para el envío*/
                        referencia_a_usar := arreglo_tipo_referencia(TRUNC(DBMS_RANDOM.VALUE(1,8), 0))|| ' ' || arreglo_nombre_referencia(TRUNC(DBMS_RANDOM.VALUE(1,51), 0));


                        IF transporte_a_usar = 0 THEN

                            DBMS_OUTPUT.PUT_LINE('No se pudo asignar un transporte al pedido, se creará el pedido sin transporte');

                            /*Se crea el pedido sin transporte, con estatus en espera y con fecha de entrega al día siguiente*/


                            INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen,
                                                 cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino,
                                                 id_contrato, id_productor_contrato, referencia_direccion)
                            VALUES (TRACKING_PEDIDO_SEC.nextval, rango_fechas.VALIDAR_FECHAS(CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + 1), 'es', idd_estado_origen, id_municipio_origen,
                                    id_zona_origen, cedula_pedido, id_proveedor_contrato, estado_pedido, municipio_pedido, zona_pedido,
                                    registro_contrato.ID, registro_contrato.ID_PRODUCTOR, referencia_a_usar);

                            cantidad_pedidos_creados := cantidad_pedidos_creados + 1;
                            actualizar_pedidos(tracking_pedido_sec.currval);

                        /*si hay transporte disponible para el envio*/
                        ELSE
                            IF tipo_transporte = 'bic' THEN
                                duracion_pedido := (ABS(latitud_origen - latitud_destino) + ABS(longitud_origen - longitud_destino)) * 300 +5;
                            ELSIF tipo_transporte = 'mot' THEN
                                duracion_pedido := (ABS(latitud_origen - latitud_destino) + ABS(longitud_origen - longitud_destino)) * 0.5 * 300 +5;
                            ELSE
                                duracion_pedido := (ABS(latitud_origen - latitud_destino) + ABS(longitud_origen - longitud_destino)) * 0.7 * 300 +5;
                            END IF;

                            DBMS_OUTPUT.PUT_LINE('Creando pedido...');

                            INSERT INTO pedidos (TRACKING, RANGO_FECHAS, ESTATUS, ID_ESTADO_ORIGEN, ID_MUNICIPIO_ORIGEN, ID_ZONA_ORIGEN,
                                                 CEDULA_USUARIO, ID_PROVEEDOR_USUARIO, ID_ESTADO_DESTINO, ID_MUNICIPIO_DESTINO, ID_ZONA_DESTINO,
                                                 ID_CONTRATO, ID_PRODUCTOR_CONTRATO, REFERENCIA_DIRECCION, ID_TRANSPORTE, ID_PROVEEDOR_TRANSPORTE)
                            VALUES (TRACKING_PEDIDO_SEC.nextval, rango_fechas.VALIDAR_FECHAS(CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + (duracion_pedido/1440)), 'es', idd_estado_origen, id_municipio_origen,
                                    id_zona_origen, cedula_pedido, id_proveedor_contrato, estado_pedido, municipio_pedido, zona_pedido,
                                    registro_contrato.ID, registro_contrato.ID_PRODUCTOR, referencia_a_usar, transporte_a_usar, id_proveedor_contrato);


                            cantidad_pedidos_creados := cantidad_pedidos_creados + 1;
                            actualizar_pedidos(tracking_pedido_sec.currval);

                        END IF;

                        DBMS_OUTPUT.PUT_LINE('Pedido creado, seleccionando productos...');

                        /*Se selecciona el id del pedido que acaba de ser creado para agregarle los productos*/
                        SELECT MAX(tracking) INTO tracking_pedido_creado FROM pedidos;



                        /*Se seleccionan aleatoriamente la cantidad de productos a agregar en el pedido creado previamente*/

                        SELECT COUNT(*) INTO cantidad_productos_productor FROM PRODUCTOS_PRODUCTOR pp WHERE registro_contrato.ID_PRODUCTOR = pp.ID_PRODUCTOR;

                        productos_a_crear := CEIL(DBMS_RANDOM.VALUE(1,cantidad_productos_productor));
                        cantidad_acumulada_productos := 0;
                        FOR products IN (SELECT * FROM (SELECT p.id FROM PRODUCTOS_PRODUCTOR pp, PRODUCTOS p WHERE registro_contrato.ID_PRODUCTOR = pp.ID_PRODUCTOR AND p.id = pp.ID_PRODUCTO
                                        ORDER BY DBMS_RANDOM.RANDOM()) WHERE ROWNUM <= productos_a_crear)
                        LOOP
                            cantidad_productos_insertar := CEIL(DBMS_RANDOM.VALUE(1,4));
                            cantidad_acumulada_productos := cantidad_acumulada_productos + cantidad_productos_insertar;
                            INSERT INTO productos_pedidos(tracking_pedido, id_producto, cantidad)
                            VALUES (tracking_pedido_creado, products.ID, cantidad_productos_insertar);

                        END LOOP;

                        /*Descuentos por si el pedido consiste en más de 10 articulos*/
                        descuento_acumulado := 0;
                        IF cantidad_acumulada_productos >= 10 THEN
                            descuento_acumulado := descuento_acumulado + 5;
                        END IF ;

                        /*descuento si es el primer pedido del usuario a la empresa productora*/

                        SELECT COUNT(*) INTO pedidos_previos FROM pedidos p WHERE p.CEDULA_USUARIO = cedula_pedido AND p.ID_PRODUCTOR_CONTRATO = registro_contrato.ID_PRODUCTOR;

                        IF pedidos_previos = 1 THEN
                            descuento_acumulado := descuento_acumulado + 10;
                        END IF ;

                        /*descuento si el pedido consiste en 3 o mas sectores comerciales diferentes*/

                        sectores_productos_pedido := 0;

                        SELECT COUNT(DISTINCT prod.ID_SECTOR) INTO sectores_productos_pedido
                        FROM pedidos ped, productos_pedidos pp, productos prod
                        WHERE tracking_pedido_creado = ped.TRACKING AND ped.TRACKING = pp.TRACKING_PEDIDO AND prod.ID = pp.ID_PRODUCTO;

                        IF sectores_productos_pedido >= 3 THEN
                            descuento_acumulado := descuento_acumulado + 5;
                        END IF ;

                        /*probabilidad de que el pedido sea gratis como parte de una proomocion*/

                        IF CEIL(DBMS_RANDOM.VALUE(1,100)) = 1 THEN
                            descuento_acumulado := 100;
                        END IF;

                        /*si existe descuento*/

                        IF descuento_acumulado != 0 THEN

                            UPDATE pedidos SET descuento_productos = descuento_acumulado WHERE tracking = tracking_pedido_creado;

                        END IF;

                        DBMS_OUTPUT.PUT_LINE('Se han seleccionado los productos y calculado el descuento de estos');

                        DBMS_OUTPUT.PUT_LINE('Se ha finalizado satisfactoriamente la creación del pedido con #tracking: ' || tracking_pedido_creado);

                    ELSE
                        DBMS_OUTPUT.PUT_LINE('No se puede llevar a cabo el pedido debido a que el proveedor no posee ningún usuario');
                        DBMS_OUTPUT.PUT_LINE('registrado con una ubicación que pertenezca a uno de los estados del contrato');
                    END IF;

                ELSE

                    DBMS_OUTPUT.PUT_LINE('No se puede llevar a cabo el pedido debido a que sobrepasa los límites de envío');
                    DBMS_OUTPUT.PUT_LINE('que contienen los acuerdos de servicio del contrato');

                END IF;

            END IF;


            EXIT WHEN cantidad_pedidos_creados = 100;

        END LOOP;

    END;

/* procedimiento que repara transportes dañados, ignora el transporte especificado en los parametros */
CREATE OR REPLACE PROCEDURE verificar_transportes (ignorar_id_transporte NUMBER, ignorar_id_prov_transporte NUMBER) IS
    tipo_tranporte VARCHAR2(15); --para hacer DECODE ('car' -> 'carro')
BEGIN
    -- se itera para cada transporte dañado en la base de datos ignorando el especificado en los parametros
    FOR transporte IN
        (SELECT * FROM transportes t WHERE t.estatus = 'd' AND t.id != ignorar_id_transporte
        AND t.id_proveedor != ignorar_id_prov_transporte)
    LOOP
        -- probabilidad del 30% de que se repare el transporte (se asigna el estatus a "funcional"
        IF TRUNC(DBMS_RANDOM.VALUE(1,101),0) >= 70 THEN
            UPDATE transportes t SET estatus = 'f' WHERE t.id = transporte.id AND t.id_proveedor = transporte.id_proveedor;
            SELECT DECODE(t.tipo, 'bic', 'bicicleta', 'mot', 'moto', 'car', 'carro', 'camioneta') INTO tipo_tranporte FROM
            transportes t WHERE t.id = transporte.id AND t.id_proveedor = transporte.id_proveedor;
            DBMS_OUTPUT.PUT_LINE('El transporte de tipo ' || tipo_tranporte || ' con id # ' || transporte.id || ' fue reparado.');

        END IF;
    END LOOP;
END;

/* procedure llamado por el trigger actualizar_pedidos */
CREATE OR REPLACE PROCEDURE actualizar_pedidos (ignorar_tracking NUMBER) IS
    /* cursor que almacena todos los pedidos no entregados que no sean el que se acaba de crear */
    CURSOR pedidos_por_act IS
        SELECT * FROM pedidos p WHERE p.estatus != 'en' AND p.tracking != ignorar_tracking;
    /* variables de tipo rowtype utilizadas en el flujo */
    pedido pedidos%ROWTYPE; --almacena cada pedido del cursor
    transporte transportes%ROWTYPE; --almacena el transporte mas cercano a la sucursal origen del pedido
    zona_transporte zonas%ROWTYPE; -- almacena la zona del transporte mas cercano a la sucursal origen del pedido
    zona_t zonas%ROWTYPE; --almacena la zona de un transporte que posiblemente este mas cerca que el transporte anterior
    zona_sucursal zonas%ROWTYPE; --almacena la zona de la sucursal origen del pedido
    tipo_tranporte VARCHAR2(15); --para hacer DECODE ('car' -> 'carro')
    valor_tipo_trans NUMBER; --para hacer DECODE ('car' --> 0.7)
    valor_tipo_t NUMBER; --para hacer DECODE ('car' --> 0.7)
BEGIN
    OPEN pedidos_por_act; --se abre el cursor
    FETCH pedidos_por_act INTO pedido; --se busca el primer pedido del cursor
    WHILE pedidos_por_act%FOUND LOOP --mientras haya pedidos por iterar
        DBMS_OUTPUT.PUT_LINE('↻');
        DBMS_OUTPUT.PUT_LINE('Actualizando pedido con #tracking = ' || pedido.tracking);
        -- si el pedido tiene un estatus "en espera"
        IF pedido.estatus = 'es' THEN
            -- si el pedido tiene un transporte asignado
            IF pedido.id_transporte IS NOT NULL THEN
                DBMS_OUTPUT.PUT_LINE('El pedido está en espera de que el transporte lo recoja en la sucursal, simulando acción...');
                -- probabilidad de 70% de que el transporte recoja el pedido (se asigna el estatus a "en transito")
                IF TRUNC(DBMS_RANDOM.VALUE(1,101), 0) >= 30 THEN
                    UPDATE pedidos SET estatus = 'et' WHERE tracking = pedido.tracking;
                    DBMS_OUTPUT.PUT_LINE('El transporte ha recogido el pedido y se encuentra en transito hacia la ubicación del pedido.');
                -- probabilidad de 30% de que el transporte no llegue a recoger el pedido
                ELSE
                    DBMS_OUTPUT.PUT_LINE('El transporte no ha llegado a la sucursal a recoger el pedido.');
                END IF;
            -- si el pedido no tiene transporte asignado
            ELSE
                DBMS_OUTPUT.PUT_LINE('El pedido está en espera sin transporte asignado, intentando asignarle un transporte...');
                -- se almacena la zona de la sucursal origen del pedido
                SELECT * INTO zona_sucursal FROM zonas z WHERE z.id = pedido.id_zona_origen
                AND z.id_municipio = pedido.id_municipio_origen AND z.id_estado = pedido.id_estado_origen;
                /* se itera sobre todos los transportes del proveedor disponibles funcionales en el estado del pedido
                 (se realiza un algoritmo de seleccion para determinar el transporte mas cercano a la sucursal origen)*/
                FOR t IN (
                    SELECT t.id, t.id_proveedor, t.id_estado, t.id_municipio, t.id_zona, t.tipo,
                    t.estatus, t.numero_placa FROM transportes t LEFT JOIN pedidos p ON
                    p.id_transporte = t.id AND p.id_proveedor_transporte = t.id_proveedor
                    AND p.estatus = 'en' AND p.id_estado_origen = t.id_estado WHERE t.estatus = 'f'
                    AND t.id_proveedor = pedido.id_proveedor_transporte
                ) LOOP
                    -- al iniciar cada iteración se actualizan las zonas del transporte minimo actual y minimo posible
                    SELECT * INTO zona_transporte FROM zonas z WHERE z.id = transporte.id_zona
                    AND z.id_municipio = transporte.id_municipio AND z.id_estado = transporte.id_estado;
                    SELECT * INTO zona_t FROM zonas z WHERE z.id = t.id_zona
                    AND z.id_municipio = t.id_municipio AND z.id_estado = t.id_estado;
                    -- si todavia no hay un valor inicial
                    IF transporte.id IS NULL THEN
                        -- si el transporte no es bicicleta o es bicicleta en el mismo municipio de la sucursal
                        IF t.tipo != 'bic' OR (t.tipo = 'bic' AND zona_sucursal.id_municipio = zona_t.id_municipio) THEN
                            transporte.id := t.id;
                            transporte.id_proveedor := t.id_proveedor;
                        END IF;
                    -- si ya hay un valor con el que comparar
                    ELSE
                        SELECT DECODE(tr.tipo, 'bic', 1, 'mot', 0.5, 0.7) INTO valor_tipo_trans FROM transportes tr
                        WHERE tr.id = transporte.id AND tr.id_proveedor = transporte.id_proveedor;
                        SELECT DECODE(tr.tipo, 'bic', 1, 'mot', 0.5, 0.7) INTO valor_tipo_t FROM transportes tr
                        WHERE tr.id = t.id AND tr.id_proveedor = t.id_proveedor;
                        -- si el tiempo de recorrido del transporte minimo posible es menor al del transporte minimo actual
                        IF (
                            (ABS(zona_sucursal.datos_ubicacion.latitud - zona_t.datos_ubicacion.latitud)
                            + ABS(zona_sucursal.datos_ubicacion.longitud - zona_t.datos_ubicacion.longitud))
                            * valor_tipo_t * 300 + 5
                        ) <
                        (
                            (ABS(zona_sucursal.datos_ubicacion.latitud - zona_transporte.datos_ubicacion.latitud)
                            + ABS(zona_sucursal.datos_ubicacion.longitud - zona_transporte.datos_ubicacion.longitud))
                            * valor_tipo_trans * 300 + 5
                        ) THEN
                            -- se cambia el transporte siempre y cuando se cumpla la condicion de las bicicletas
                            IF t.tipo != 'bic' OR (t.tipo = 'bic' AND zona_sucursal.id_municipio = zona_t.id_municipio) THEN
                                transporte.id := t.id;
                                transporte.id_proveedor := t.id_proveedor;
                            END IF;
                        END IF;
                    END IF;
                END LOOP;
                -- al finalizar el ciclo, si el transporte sigue siendo nulo, no hay transportes posibles
                IF transporte.id IS NULL THEN
                    DBMS_OUTPUT.PUT_LINE('No hay transportes disponibles para el pedido actualmente.');
                -- si transporte no es nulo, se asigna ese transporte al pedido
                ELSE
                    UPDATE pedidos SET id_transporte = transporte.id, id_proveedor_transporte = transporte.id_proveedor
                    WHERE tracking = pedido.tracking;
                    SELECT DECODE(t.tipo, 'bic', 'bicicleta', 'mot', 'moto', 'car', 'carro', 'camioneta') INTO tipo_tranporte
                    FROM transportes t WHERE t.id = transporte.id AND t.id_proveedor = transporte.id_proveedor;
                    DBMS_OUTPUT.PUT_LINE('Se ha asignado el transporte con id #' || transporte.id || ' del tipo ' || tipo_tranporte);
                END IF;
            END IF;
        -- si el pedido está "en transito"
        ELSE
            DBMS_OUTPUT.PUT_LINE('El pedido está en transito a la ubicación destino del pedido, simulando acción...');
            /* probabilidad del 50% de que se entregue el pedido (se cambia el estatus del pedido a "entregado" se asigna una
               satisfaccion aleatoria y se asigna la ubicacion del transporte a la ubicacion destino del pedido,
               luego, hay una probabilidad del 10% de que el transporte se dañe (en ese caso se cambia el estatus del
               transporte a "dañado") y para finalizar se llama al procedimiento verificar_transportes para reparar
               transportes dañados, especificando que ignore el transporte que se acaba de utilizar con los parametros */
            IF TRUNC(DBMS_RANDOM.VALUE(1,101), 0) >= 50 THEN
                DBMS_OUTPUT.PUT_LINE('Se ha entregado el pedido.');
                UPDATE pedidos SET estatus = 'en', satisfaccion = TRUNC(DBMS_RANDOM.VALUE(1,6),0) WHERE tracking = pedido.tracking;
                UPDATE transportes SET id_zona = pedido.id_zona_destino, id_municipio = pedido.id_municipio_destino, id_estado = pedido.id_estado_destino
                WHERE id = pedido.id_transporte AND id_proveedor = pedido.id_proveedor_transporte;
                IF TRUNC(DBMS_RANDOM.VALUE(1,101),0) >= 10 THEN
                    DBMS_OUTPUT.PUT_LINE('El transporte se encuentra funcional luego de entregar el pedido.');
                ELSE
                    UPDATE transportes SET estatus = 'd' WHERE id = pedido.id_transporte AND id_proveedor = pedido.id_proveedor_transporte;
                    DBMS_OUTPUT.PUT_LINE('El transporte se ha dañado durante la entrega de este pedido.');
                END IF;

                verificar_transportes(pedido.id_transporte, pedido.id_proveedor_transporte);
            -- probabilidad del 50% de que no se entregue el transporte en esta ocasión
            ELSE
                DBMS_OUTPUT.PUT_LINE('El transporte no ha llegado a la ubicación destino del pedido.');
            END IF;

        END IF;
        -- se busca el siguiente pedido del cursor
        FETCH pedidos_por_act INTO pedido;
    END LOOP;
END;

CREATE OR REPLACE PROCEDURE modulo_pedidos IS
    BEGIN

       DBMS_OUTPUT.PUT_LINE('***********************************************************************');
       DBMS_OUTPUT.PUT_LINE('*                   Ejecutando módulo de pedidos...                   *');
       DBMS_OUTPUT.PUT_LINE('***********************************************************************');

        crear_pedidos();

       DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');
       DBMS_OUTPUT.PUT_LINE('Se ha finalizado la ejecución del módulo de pedidos');

    END;



