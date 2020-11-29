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

