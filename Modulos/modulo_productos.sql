/*
    Trigger que se ejecuta cada vez que se crea un producto, se encarga de asignarle una cantidad n
    aleatoria de productores a cada pedido creado en la tabla productos_productor
*/
CREATE OR REPLACE TRIGGER asignar_productores_producto AFTER INSERT ON productos FOR EACH ROW
DECLARE
    ctd_asignar INTEGER;
    ctd_productores INTEGER;
    id_productor_rand INTEGER;
    flag_existe INTEGER;
BEGIN
    /* se cuenta la cantidad de productores en el sistema */
    ctd_productores := 0;
    SELECT COUNT(*) INTO ctd_productores FROM productores;
    /* se genera un numero aleatorio n (ctd_asignar) que determinara a cuantos productores se le asignara el producto,
       este numero va decrementando a medida que se asignan productores de tal forma de asignar la cantidad n randomizada */
    ctd_asignar := TRUNC(DBMS_RANDOM.VALUE(1, ctd_productores + 1), 0);
    WHILE ctd_asignar > 0 LOOP
        /* se randomiza un productor al cual asignarle el producto */
        id_productor_rand := TRUNC(DBMS_RANDOM.VALUE(1, ctd_productores + 1), 0);
        /* se revisa si este productor ya tiene el producto asignado, en tal caso no se asigna nuevamente y la ctd_asignar no decrementa,
           en el caso contrario se realiza el insert y se decrementa ctd_asignar
         */
        SELECT COUNT(*) INTO flag_existe FROM productos_productor WHERE id_producto = :new.id AND id_productor = id_productor_rand;
        IF flag_existe = 0 THEN
            INSERT INTO productos_productor (id_producto, id_productor) VALUES (:new.id, id_productor_rand);
            ctd_asignar := ctd_asignar - 1;
        END IF;
    END LOOP;
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