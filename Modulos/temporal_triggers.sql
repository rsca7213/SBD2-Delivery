/* procedimiento que repara transportes dañados, ignora el transporte especificado en los parametros */
CREATE OR REPLACE PROCEDURE verificar_transportes (ignorar_id_transporte NUMBER, ignorar_id_prov_transporte NUMBER) IS
BEGIN
    -- se itera para cada transporte dañado en la base de datos ignorando el especificado en los parametros
    FOR transporte IN
        (SELECT * FROM transportes t WHERE t.estatus = 'd' AND t.id != ignorar_id_transporte
        AND t.id_proveedor != ignorar_id_prov_transporte)
    LOOP
        -- probabilidad del 30% de que se repare el transporte (se asigna el estatus a "funcional"
        IF TRUNC(DBMS_RANDOM.VALUE(1,101),0) >= 70 THEN
            UPDATE transportes t SET estatus = 'f' WHERE t.id = transporte.id AND t.id_proveedor = transporte.id_proveedor;
            DBMS_OUTPUT.PUT_LINE('El transporte de tipo ' ||
            DECODE(transporte.tipo, 'bic', 'bicicleta', 'mot', 'moto', 'car', 'carro', 'camioneta')
                   || ' con id #' || transporte.id || ' fue reparado.');
        END IF;
    END LOOP;
END;

/* trigger que se ejecuta cada vez que se crea un pedido y sigue el flujo definido en actualizar_pedidos */
CREATE OR REPLACE TRIGGER actualizar_pedidos AFTER INSERT ON pedidos
DECLARE
    /* cursor que almacena todos los pedidos no entregados que no sean el que se acaba de crear */
    CURSOR pedidos_por_act IS
        SELECT * FROM pedidos p WHERE p.estatus != 'en' AND p.tracking != :new.tracking;
    /* variables de tipo rowtype utilizadas en el flujo */
    pedido pedidos%ROWTYPE; --almacena cada pedido del cursor
    transporte transportes%ROWTYPE; --almacena el transporte mas cercano a la sucursal origen del pedido
    zona_transporte zonas%ROWTYPE; -- almacena la zona del transporte mas cercano a la sucursal origen del pedido
    zona_t zonas%ROWTYPE; --almacena la zona de un transporte que posiblemente este mas cerca que el transporte anterior
    zona_sucursal zonas%ROWTYPE; --almacena la zona de la sucursal origen del pedido
BEGIN
    OPEN pedidos_por_act; --se abre el cursor
    FETCH pedidos_por_act INTO pedido; --se busca el primer pedido del cursor
    WHILE pedidos_por_act%FOUND LOOP --mientras haya pedidos por iterar
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
                    SELECT * FROM transportes t LEFT JOIN pedidos p ON p.id_transporte = t.id
                    AND p.id_proveedor_transporte = t.id_proveedor AND p.estatus = 'en'
                    WHERE t.estatus = 'f' AND p.id_estado_origen = t.id_estado
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
                            transporte := t;
                        END IF;
                    -- si ya hay un valor con el que comparar
                    ELSE
                        -- si el tiempo de recorrido del transporte minimo posible es menor al del transporte minimo actual
                        IF (
                            (ABS(zona_sucursal.datos_ubicacion.latitud - zona_t.datos_ubicacion.latitud)
                            + ABS(zona_sucursal.datos_ubicacion.longitud - zona_t.datos_ubicacion.longitud))
                            * DECODE(t.tipo, 'bic', 1, 'mot', 0.5, 0.7) * 300 + 5
                        ) <
                        (
                            (ABS(zona_sucursal.datos_ubicacion.latitud - zona_transporte.datos_ubicacion.latitud)
                            + ABS(zona_sucursal.datos_ubicacion.longitud - zona_transporte.datos_ubicacion.longitud))
                            * DECODE(transporte.tipo, 'bic', 1, 'mot', 0.5, 0.7) * 300 + 5
                        ) THEN
                            -- se cambia el transporte siempre y cuando se cumpla la condicion de las bicicletas
                            IF t.tipo != 'bic' OR (t.tipo = 'bic' AND zona_sucursal.id_municipio = zona_t.id_municipio) THEN
                                transporte := t;
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
                    DBMS_OUTPUT.PUT_LINE('Se ha asignado el transporte con id #' || transporte.id || ' del tipo '
                        || DECODE(transporte.tipo, 'bic', 'bicicleta', 'mot', 'moto', 'car', 'carro', 'camioneta') || ' al pedido.');
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
