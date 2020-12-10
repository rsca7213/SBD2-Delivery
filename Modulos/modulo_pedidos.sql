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


            EXIT WHEN cantidad_pedidos_creados = 300;

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
        -- probabilidad del 5% de que se repare el transporte (se asigna el estatus a "funcional"
        IF TRUNC(DBMS_RANDOM.VALUE(1,101),0) = 100 THEN
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
               luego, hay una probabilidad del 30% de que el transporte se dañe (en ese caso se cambia el estatus del
               transporte a "dañado") y para finalizar se llama al procedimiento verificar_transportes para reparar
               transportes dañados, especificando que ignore el transporte que se acaba de utilizar con los parametros */
            IF TRUNC(DBMS_RANDOM.VALUE(1,101), 0) >= 50 THEN
                DBMS_OUTPUT.PUT_LINE('Se ha entregado el pedido.');
                UPDATE pedidos SET estatus = 'en', satisfaccion = TRUNC(DBMS_RANDOM.VALUE(1,6),0) WHERE tracking = pedido.tracking;
                UPDATE transportes SET id_zona = pedido.id_zona_destino, id_municipio = pedido.id_municipio_destino, id_estado = pedido.id_estado_destino
                WHERE id = pedido.id_transporte AND id_proveedor = pedido.id_proveedor_transporte;
                IF TRUNC(DBMS_RANDOM.VALUE(1,101),0) >= 30 THEN
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



