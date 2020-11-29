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
    transporte_a_usar NUMBER;
    referencia_a_usar VARCHAR2(50);
    tracking_pedido_creado NUMBER;
    productos_a_crear NUMBER;
    cantidad_productos_productor NUMBER;
    duracion_pedido NUMBER;
    tipo_transporte CHAR(3);
    latitud_transporte zonas.datos_ubicacion.latitud%type;
    longitud_transporte zonas.datos_ubicacion.longitud%type;
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

        DBMS_OUTPUT.PUT_LINE('Intentando crear pedido...');
        DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');

        SELECT * INTO registro_contrato FROM (SELECT * FROM contratos ORDER BY DBMS_RANDOM.RANDOM()) WHERE ROWNUM <2;

        SELECT sc.id_proveedor, p.datos_empresa.nombre INTO id_proveedor_contrato, nombre_proveedor_contrato
        FROM servicios_contratos sc, proveedores p
        WHERE registro_contrato.id=sc.ID_CONTRATO AND sc.id_proveedor = p.id AND ROWNUM < 2;

        SELECT prod.datos_empresa.nombre INTO nombre_productor_contrato FROM productores prod WHERE prod.id = registro_contrato.ID_PRODUCTOR;

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
                    DBMS_OUTPUT.PUT_LINE('TRANSPORTE A USAAAAAAAAAAAAAAAAAAAAAAAAR: ' || transporte_a_usar);
                    DBMS_OUTPUT.PUT_LINE('TRANSPORTE A iddddd: ' || t.id || ' TIPO TRANSPORTE: ' || t.tipo);
                    DBMS_OUTPUT.PUT_LINE('DISTANCIAAAAAAAAAAAAAA: ' || (ABS(latitud_origen - latitud_transporte) + ABS(longitud_origen - longitud_transporte)));

                    IF id_municipio_origen = municipio_pedido THEN

                        /*Estado inicial de la distancia entre la sucursal del productor y el transporte*/
                        IF distancia_transporte_destino = -1 THEN
                            distancia_transporte_destino := ABS(latitud_origen - latitud_transporte) + ABS(longitud_origen - longitud_transporte);
                            transporte_a_usar := t.id;
                            tipo_transporte := t.tipo;
                        ELSE
                            IF (ABS(latitud_origen - latitud_transporte) + ABS(longitud_origen - latitud_transporte)) < distancia_transporte_destino THEN
                                distancia_transporte_destino := ABS(latitud_origen - latitud_transporte) + ABS(longitud_origen - longitud_transporte);
                                transporte_a_usar := t.id;
                                tipo_transporte := t.tipo;
                            END IF;
                        END IF;

                    ELSE

                        IF t.tipo != 'bic' THEN

                            IF distancia_transporte_destino = -1 THEN
                                distancia_transporte_destino := ABS(latitud_origen - latitud_transporte) + ABS(longitud_origen - longitud_transporte);
                                transporte_a_usar := t.id;
                                tipo_transporte := t.tipo;
                            ELSE
                                IF (ABS(latitud_origen - latitud_transporte) + ABS(longitud_origen - longitud_transporte)) < distancia_transporte_destino THEN
                                    distancia_transporte_destino := ABS(latitud_origen - latitud_transporte) + ABS(longitud_origen - longitud_transporte);
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

                END IF;

                DBMS_OUTPUT.PUT_LINE('Pedido creado, seleccionando productos...');

                /*Se selecciona el id del pedido que acaba de ser creado para agregarle los productos*/
                SELECT MAX(tracking) INTO tracking_pedido_creado FROM pedidos;



                /*Se seleccionan aleatoriamente la cantidad de productos a agregar en el pedido creado previamente*/

                /*SELECT COUNT(*) INTO cantidad_productos_productor FROM PRODUCTOS_PRODUCTOR pp WHERE registro_contrato.ID_PRODUCTOR = pp.ID_PRODUCTOR;

                productos_a_crear := CEIL(DBMS_RANDOM.VALUE(1,cantidad_productos_productor));

                FOR products IN (SELECT * FROM (SELECT p.id FROM PRODUCTOS_PRODUCTOR pp, PRODUCTOS p WHERE registro_contrato.ID_PRODUCTOR = pp.ID_PRODUCTOR AND p.id = pp.ID_PRODUCTO
                                ORDER BY DBMS_RANDOM.RANDOM()) WHERE ROWNUM <= productos_a_crear)
                LOOP
                    INSERT INTO productos_pedidos(tracking_pedido, id_producto, cantidad)
                    VALUES (tracking_pedido_creado, products.ID, CEIL(DBMS_RANDOM.VALUE(1,4)));

                END LOOP;*/

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



    END;

CREATE OR REPLACE PROCEDURE modulo_pedidos IS
    BEGIN
       DBMS_OUTPUT.PUT_LINE('Ejecutando módulo de pedidos...');
       DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');

       FOR i in 1..100
       LOOP
           DBMS_OUTPUT.PUT_LINE(i);
           crear_pedidos();
       END LOOP;

       DBMS_OUTPUT.PUT_LINE('-------------------------------------------------------------------------------------------');
       DBMS_OUTPUT.PUT_LINE('Se ha finalizado la ejecución del módulo de pedidos');

    END;

call modulo_pedidos();

select * from pedidos;
select * from zonas_usuarios;
select * from usuarios;
