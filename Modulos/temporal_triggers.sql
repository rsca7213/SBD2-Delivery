CREATE OR REPLACE PROCEDURE verificar_transportes (ignorar_id_transporte NUMBER, ignorar_id_prov_transporte NUMBER) IS
BEGIN
    FOR transporte IN
        (SELECT )
END;

CREATE OR REPLACE TRIGGER actualizar_pedidos AFTER INSERT ON pedidos
DECLARE
    CURSOR pedidos_por_act IS
        SELECT * FROM pedidos p WHERE p.estatus != 'en' AND p.tracking != :new.tracking;
    pedido pedidos%ROWTYPE;
    transporte transportes%ROWTYPE;
    zona_transporte zonas%ROWTYPE;
    zona_t zonas%ROWTYPE;
    zona_sucursal zonas%ROWTYPE;
BEGIN
    OPEN pedidos_por_act;
    FETCH pedidos_por_act INTO pedido;
    WHILE pedidos_por_act%FOUND LOOP

        DBMS_OUTPUT.PUT_LINE('Actualizando pedido con #tracking = ' || pedido.tracking);

        IF pedido.estatus = 'es' THEN

            IF pedido.id_transporte IS NOT NULL THEN
                DBMS_OUTPUT.PUT_LINE('El pedido está en espera de que el transporte lo recoja en la sucursal, simulando acción...');

                IF TRUNC(DBMS_RANDOM.VALUE(1,101), 0) >= 30 THEN
                    UPDATE pedidos SET estatus = 'et' WHERE tracking = pedido.tracking;
                    DBMS_OUTPUT.PUT_LINE('El transporte ha recogido el pedido y se encuentra en transito hacia la ubicación del pedido.');

                ELSE
                    DBMS_OUTPUT.PUT_LINE('El transporte no ha llegado a la sucursal a recoger el pedido.');

                END IF;

            ELSE
                DBMS_OUTPUT.PUT_LINE('El pedido está en espera sin transporte asignado, intentando asignarle un transporte...');

                FOR t IN (
                    SELECT * FROM transportes t LEFT JOIN pedidos p ON p.id_transporte = t.id
                    AND p.id_proveedor_transporte = t.id_proveedor AND p.estatus = 'en'
                    WHERE t.estatus = 'f' AND p.id_estado_origen = t.id_estado
                    AND t.id_proveedor = pedido.id_proveedor_transporte
                ) LOOP

                    SELECT * INTO zona_transporte FROM zonas z WHERE z.id = transporte.id_zona
                    AND z.id_municipio = transporte.id_municipio AND z.id_estado = transporte.id_estado;
                    SELECT * INTO zona_t FROM zonas z WHERE z.id = t.id_zona
                    AND z.id_municipio = t.id_municipio AND z.id_estado = t.id_estado;
                    SELECT * INTO zona_sucursal FROM zonas z WHERE z.id = pedido.id_zona_origen
                    AND z.id_municipio = pedido.id_municipio_origen AND z.id_estado = pedido.id_estado_origen;

                    IF transporte.id IS NULL THEN
                        IF t.tipo != 'bic' OR (t.tipo = 'bic' AND zona_sucursal.id_municipio = zona_t.id_municipio) THEN
                            transporte := t;
                        END IF;

                    ELSE
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
                            IF t.tipo != 'bic' OR (t.tipo = 'bic' AND zona_sucursal.id_municipio = zona_t.id_municipio) THEN
                                transporte := t;
                            END IF;
                        END IF;
                    END IF;
                END LOOP;
                IF transporte.id IS NULL THEN
                    DBMS_OUTPUT.PUT_LINE('No hay transportes disponibles para el pedido actualmente.');

                ELSE
                    UPDATE pedidos SET id_transporte = transporte.id, id_proveedor_transporte = transporte.id_proveedor
                    WHERE tracking = pedido.tracking;
                    DBMS_OUTPUT.PUT_LINE('Se ha asignado el transporte con id #' || transporte.id || ' del tipo '
                        || DECODE(transporte.tipo, 'bic', 'bicicleta', 'mot', 'moto', 'car', 'carro', 'camioneta') || ' al pedido.');

                END IF;

            END IF;

        ELSE
            DBMS_OUTPUT.PUT_LINE('El pedido está en transito a la ubicación destino del pedido, simulando acción...');
            IF TRUNC(DBMS_RANDOM.VALUE(1,101), 0) >= 50 THEN
                DBMS_OUTPUT.PUT_LINE('Se ha entregado el pedido.');
                UPDATE pedidos SET estatus = 'en', satisfaccion = TRUNC(DBMS_RANDOM.VALUE(1,6),0) WHERE tracking = pedido.tracking;
                IF TRUNC(DBMS_RANDOM.VALUE(1,101),0) >= 10 THEN
                    DBMS_OUTPUT.PUT_LINE('El transporte se encuentra funcional luego de entregar el pedido.');
                ELSE
                    UPDATE transportes SET estatus = 'd' WHERE id = pedido.id_transporte AND id_proveedor = pedido.id_proveedor_transporte;
                    DBMS_OUTPUT.PUT_LINE('El transporte se ha dañado durante la entrega de este pedido.');
                END IF;

                verificar_transportes(pedido.id_transporte, pedido.id_proveedor_transporte);
            ELSE
                DBMS_OUTPUT.PUT_LINE('El transporte no ha llegado a la ubicación destino del pedido.');
            END IF;

        END IF;

        FETCH pedidos_por_act INTO pedido;
    END LOOP;
END;
