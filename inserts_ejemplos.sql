CREATE OR REPLACE PROCEDURE insertar_estados IS
BEGIN
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval,datos_ubicacion('Amazonas',3.5,-66));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval,datos_ubicacion('Anzoátegui',9,-64.33334));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval,datos_ubicacion('Apure',7.16667,-68.83334));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval,datos_ubicacion('Distrito Capital',10.47639,-66.98333));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval,datos_ubicacion('Carabobo',10.16667,-68.08334));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval,datos_ubicacion('Miranda',10.25,-66.41666));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval,datos_ubicacion('Zulia',10,-72.16666));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval,datos_ubicacion('Aragua',10,-67.16666));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval,datos_ubicacion('Barinas',8.16667,-69.83334));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Cojedes',9.33333,-68.33334));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Lara',10.16667,-69.83334));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Monagas',9.33333,-63));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Sucre',10.41667,-63.5));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Trujillo',9.41667,-70.5));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('La Guaira',10.56667,-66.9));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Yaracuy',10.333333,-68.75));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Bolívar',6.33333,-63.5));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Táchira',7.83333,-72.08334));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Delta Amacuro',8.75,-61.333332));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Falcón',11,-69.83334));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Guárico',8.66667,-66.58334));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Mérida',8.5,-71.16666));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Nueva Esparta',11,-64));
    INSERT INTO estados (id, datos_ubicacion) VALUES (id_estado_sec.nextval, datos_ubicacion('Portuguesa',9.16667,-69.25));
END;

CREATE OR REPLACE PROCEDURE insertar_municipios IS
BEGIN
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval,1, datos_ubicacion('Alto Orinoco',3.17389,-65.5467));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval,1, datos_ubicacion('Atabapo',4.02352,-67.6844));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval,2, datos_ubicacion('Anaco',9.43417,-64.4594));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval,2, datos_ubicacion('Píritu',10.0459,-65.0335));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval,3, datos_ubicacion('Achaguas',7.76667,-68.2333));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval,3, datos_ubicacion('Biruaca',7.84267,-67.5172));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval,4, datos_ubicacion('Libertador',10.5058,-66.9144));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval,5, datos_ubicacion('Puerto Cabello',10.4667,-68.0167));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval,5, datos_ubicacion('San Diego',10.254,-68.0109));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 6, datos_ubicacion('Chacao',10.4939,-66.8566));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 6, datos_ubicacion('Baruta',10.4324,-66.8746));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 7, datos_ubicacion('Cabimas',10.4,-71.45));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 7, datos_ubicacion('Colón',8.99972,-71.9167));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 8, datos_ubicacion('Girardot',10.2517,-67.6014));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 8, datos_ubicacion('Zamora',10.0383,-67.4892));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 9, datos_ubicacion('Pedraza',8.35163,-70.5738));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 9, datos_ubicacion('Ezequiel Zamora',7.81305,-71.1777));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 10, datos_ubicacion('San Carlos',9.65,-68.5836));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 10, datos_ubicacion('Tinaquillo',9.91667,-68.3));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 11, datos_ubicacion('Iribarren',10.0639,-69.3347));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 11, datos_ubicacion('Torres',10.1752,-70.0753));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 12, datos_ubicacion('Caripe',10.1692,-63.51));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 12, datos_ubicacion('Piar',9.96806,-63.4869));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 13, datos_ubicacion('Montes',10.2541,-63.9113));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 13, datos_ubicacion('Arismendi',10.7,-63.117));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 14, datos_ubicacion('Boconó',9.2519,-70.2502));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 14, datos_ubicacion('Valera',9.32136,-70.6034));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 15, datos_ubicacion('Vargas',10.6,-66.9331));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 16, datos_ubicacion('Nirgua',10.1517,-68.5664));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 16, datos_ubicacion('Peña',10.0753,-69.1283));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 17, datos_ubicacion('Caroní',8.37222,-62.6439));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 17, datos_ubicacion('Heres',8.12942,-63.5533));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 18, datos_ubicacion('Córdoba',7.64979,-72.2667));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 18, datos_ubicacion('Torbes',7.66778,-72.2241));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 19, datos_ubicacion('Casacoima',8.39167,-62.4534));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 19, datos_ubicacion('Pedernales',9.65581,-62.1689));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 20, datos_ubicacion('Carirubana',11.717,-70.183));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 20, datos_ubicacion('Silva',10.7807,-68.3266));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 21, datos_ubicacion('Ortiz',9.62038,-67.2917));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 21, datos_ubicacion('El Socorro',8.45457,-67.9714));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 22, datos_ubicacion('Rangel',8.74801,-70.922));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 22, datos_ubicacion('Tovar',8.3276,-71.7593));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 23, datos_ubicacion('Tubores',10.9048,-64.0847));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 23, datos_ubicacion('Maneiro',11.0025,-63.7957));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 24, datos_ubicacion('Araure',9.57858,-69.2278));
    INSERT INTO municipios (id, id_estado, datos_ubicacion) VALUES (id_municipio_sec.nextval, 24, datos_ubicacion('Páez',9.56283,-69.2105));
END;

CREATE OR REPLACE PROCEDURE insertar_zonas IS
BEGIN
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,1, 1, datos_ubicacion('La esmeralda',3.175182,-65.545955));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,1, 2, datos_ubicacion('San Fernando de Atabapo',4.04272,-67.698723));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,2, 3, datos_ubicacion('Los Jardines',9.439193,-64.424043));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,2, 3, datos_ubicacion('Campamento Santa Rosa',9.451258,-64.418765));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,2, 3, datos_ubicacion('Lomas de Altamira',9.457862,-64.442797));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,2, 4, datos_ubicacion('Pueblo Viejo',10.007533,-65.035586));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,2, 4, datos_ubicacion('Santa Rosa',10.025152,-65.029571));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,2, 4, datos_ubicacion('La Mascota',10.009725,-65.023376));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,3, 5, datos_ubicacion('Urdaneta',7.776791,-68.226526));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,3, 5, datos_ubicacion('Comercio',7.78227,-68.232019));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,3, 6, datos_ubicacion('Barrio Libertador',7.842994,-67.524652));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,3, 6, datos_ubicacion('Barrio La Campereña',7.838995,-67.521307));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,3, 6, datos_ubicacion('Barrio Los Samanes',7.84235,-67.510204));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,4, 7, datos_ubicacion('El Paraíso',10.492168,-66.926994));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,4, 7, datos_ubicacion('Antímano',10.463726,-66.983814));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,4, 7, datos_ubicacion('La Florida',10.500605,-66.879076));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,5, 8, datos_ubicacion('Sector El Milagro',10.469367,-68.049274));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,5, 8, datos_ubicacion('Santa Cruz',10.459154,-68.046441));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,5, 8, datos_ubicacion('Valle Seco',10.447547,-68.004138));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,5, 9, datos_ubicacion('Paso Real',10.214384,-67.969542));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,5, 9, datos_ubicacion('Valle Verde',10.228912,-67.959757));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,5, 9, datos_ubicacion('Colonial',10.274521,-67.950402));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,6, 10, datos_ubicacion('Altamira',10.50701,-66.852421));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,6, 10, datos_ubicacion('Campo Alegre',10.494436,-66.859459));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,6, 10, datos_ubicacion('San Marino',10.499242,-66.856265));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,6, 11, datos_ubicacion('La Tahona',10.437613,-66.856828));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,6, 11, datos_ubicacion('Chuao',10.482516,-66.844726));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,6, 11, datos_ubicacion('Prados del Este',10.448164,-66.887641));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,7, 12, datos_ubicacion('Pedregalito',10.364732,-71.40077));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,7, 12, datos_ubicacion('Barrio Barvolento',10.374037,-71.419264));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,7, 12, datos_ubicacion('Barrio Campo Alegre',10.409494,-71.448704));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,7, 13, datos_ubicacion('La Mensura',8.853437,-71.884726));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,7, 13, datos_ubicacion('Santa Cruz del Zulia',8.904488,-71.984633));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,7, 13, datos_ubicacion('El Moralito',8.800731,-71.770381));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,8, 14, datos_ubicacion('Barrio El Milagro',10.262712,-67.601859));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,8, 14, datos_ubicacion('Los Olivos',10.259503,-67.665373));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,8, 14, datos_ubicacion('Barrio Paraíso',10.308684,-67.56346));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,8, 15, datos_ubicacion('El Toquito',10.024622,-67.493384));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,8, 15, datos_ubicacion('Colinas de San Francisco',10.061621,-67.530787));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,8, 15, datos_ubicacion('La Molinera',10.063734,-67.539628));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,9, 16, datos_ubicacion('Santo Domingo',8.347989,-70.570931));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,9, 16, datos_ubicacion('El Manguito',8.333683,-70.571713));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,9, 16, datos_ubicacion('Las Puertas',8.344349,-70.515703));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,9, 17, datos_ubicacion('Santa Bárbara',7.81399,-71.173544));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,9, 17, datos_ubicacion('Bella Vista',7.799138,-71.249363));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,9, 17, datos_ubicacion('La Queveda',7.792075,-71.175279));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,10, 18, datos_ubicacion('Sector Centro',9.660404,-68.588569));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,10, 18, datos_ubicacion('Los Ilustres',9.683996,-68.582157));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,10, 18, datos_ubicacion('El Retazo',9.640044,-68.584543));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,10, 19, datos_ubicacion('Barrio las Granjitas',9.897379,-68.316571));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,10, 19, datos_ubicacion('Caño Claro I',9.908456,-68.32391));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,10, 19, datos_ubicacion('Los Nevados',9.916995,-68.299062));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,11, 20, datos_ubicacion('San Antonio',10.056681,-69.329819));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,11, 20, datos_ubicacion('Cruz Blanca',10.065641,-69.300477));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,11, 20, datos_ubicacion('San Benito',10.093866,-69.30773));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,11, 21, datos_ubicacion('Las Palomitas',10.268521,-70.067412));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,11, 21, datos_ubicacion('Carora',10.180464,-70.073377));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,11, 21, datos_ubicacion('El Tigrito',10.112873,-69.99098));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,12, 22, datos_ubicacion('Avenida Caripe',10.178406,-63.497587));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,12, 23, datos_ubicacion('La Toscana',9.800241,-63.326678));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,12, 23, datos_ubicacion('Los Mangos',9.86815,-63.355946));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,12, 23, datos_ubicacion('Guayuta',9.933244,-63.433445));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,13, 24, datos_ubicacion('Aricagua',10.241465,-63.897356));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,13, 24, datos_ubicacion('La Manguita',10.239438,-63.930486));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,13, 24, datos_ubicacion('San Lorenzo',10.222207,-63.92671));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,13, 25, datos_ubicacion('Agua Dulce',10.657692,-63.010626));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,13, 25, datos_ubicacion('San Juan',10.728412,-62.76176));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,13, 25, datos_ubicacion('Unare',10.746373,-62.741676));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,14, 26, datos_ubicacion('Valle Verde',9.25601,-70.240144));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,14, 26, datos_ubicacion('Los Pantanos',9.266938,-70.231561));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,14, 26, datos_ubicacion('Miticún',9.235122,-70.263079));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,14, 27, datos_ubicacion('Sector Pensil',9.334834,-70.634498));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,14, 27, datos_ubicacion('Plata II',9.330684,-70.598707));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,14, 27, datos_ubicacion('Sector Santa Cruz',9.353678,-70.601969));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,15, 28, datos_ubicacion('Plaza Soublette',10.602868,-66.93139));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,15, 28, datos_ubicacion('Plaza Vargas',10.601122,-66.933621));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,15, 28, datos_ubicacion('Plaza Bolívar',0.602906,-66.930726));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,16, 29, datos_ubicacion('Los Pinos',10.15114,-68.557466));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,16, 29, datos_ubicacion('El Calvario',10.155618,-68.570383));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,16, 29, datos_ubicacion('El Matadero',10.158363,-68.572143));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,16, 30, datos_ubicacion('Yaritagua',10.07592,-69.119068));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,16, 30, datos_ubicacion('Canaveral',10.103299,-69.117953));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,16, 30, datos_ubicacion('Cambural',10.105149,-69.167088));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,17, 31, datos_ubicacion('Alta Vista',8.295329,-62.736328));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,17, 31, datos_ubicacion('La Laguna',8.374971,-62.65061));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,17, 31, datos_ubicacion('Brisas del Orinoco',8.382158,-62.62778));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,17, 32, datos_ubicacion('La Paragua',8.081404,-63.520617));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,17, 32, datos_ubicacion('Los Coquitos',8.135361,-63.514523));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,17, 32, datos_ubicacion('La Alameda',8.145387,-63.545852));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,18, 33, datos_ubicacion('Veracruz',7.659011,-72.253126));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,18, 33, datos_ubicacion('Los Nazarenos',7.624473,-72.289561));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,18, 33, datos_ubicacion('Santa Ana del Táchira',7.643179,-72.277498));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,18, 34, datos_ubicacion('San Josecito',7.658988,-72.2219));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,18, 34, datos_ubicacion('La Pradera',7.666857,-72.217351));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,18, 34, datos_ubicacion('Agua Dulce',7.650397,-72.190357));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,19, 35, datos_ubicacion('El Triunfo',8.410995,-62.495855));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,19, 35, datos_ubicacion('Piacoa',8.561942,-62.136739));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,19, 35, datos_ubicacion('Dinamita',8.46243,-62.520682));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval,19, 36, datos_ubicacion('Paloma',9.019791,-62.056556));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 19, 36, datos_ubicacion('Urb. Delfín Mendoza',9.049629,-62.043424));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 19, 36, datos_ubicacion('Tucupita',9.069124,-62.045999));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 20, 37, datos_ubicacion('Sector Libertador',11.726251,-70.175584));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 20, 37, datos_ubicacion('Sector Nuevo Pueblo',11.714023,-70.202792));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 20, 37, datos_ubicacion('Sector Universitario',11.696247,-70.160048));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 20, 38, datos_ubicacion('Sanare',10.869664,-68.374769));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 20, 38, datos_ubicacion('La Soledad',10.861066,-68.342497));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 20, 38, datos_ubicacion('El Tuque',10.822036,-68.341552));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 21, 39, datos_ubicacion('Colinas de Bucaral',9.629246,-67.293598));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 21, 39, datos_ubicacion('Urb. Santa Rosa',9.615558,-67.287483));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 21, 39, datos_ubicacion('Urb. Banco Obrero',9.617589,-67.287182));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 21, 40, datos_ubicacion('Parque Ferial',8.998698,-65.748533));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 22, 41, datos_ubicacion('Mocao',8.738046,-70.919257));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 22, 41, datos_ubicacion('El Royal',8.758236,-70.893594));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 22, 41, datos_ubicacion('El Pedregal',8.783429,-70.857116));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 22, 42, datos_ubicacion('Llano Alto',8.317196,-71.763983));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 22, 42, datos_ubicacion('Vista Alegre',8.318852,-71.760678));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 22, 42, datos_ubicacion('Los Limones',8.329638,-71.759605));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 23, 43, datos_ubicacion('Mata Redonda',10.942448,-64.1195));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 23, 43, datos_ubicacion('Orinoco',10.913964,-64.034614));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 23, 43, datos_ubicacion('Chacachacare',10.960381,-64.151901));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 23, 44, datos_ubicacion('Los Cerritos',11.019682,-63.829741));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 23, 44, datos_ubicacion('Los Chacos',11.011889,-63.832616));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 23, 44, datos_ubicacion('Los Robles',11.003127,-63.837551));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 24, 45, datos_ubicacion('Baraure',9.582228,-69.200739));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 24, 45, datos_ubicacion('Urb. Casa de Campo',9.604886,-69.238474));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 24, 45, datos_ubicacion('Algodonal',9.619481,-69.153471));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 24, 46, datos_ubicacion('Espinital',9.475304,-69.184771));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 24, 46, datos_ubicacion('Acarigua',9.550051,-69.180651));
    INSERT INTO zonas (id, id_estado, id_municipio, datos_ubicacion) VALUES (id_zona_sec.nextval, 24, 46, datos_ubicacion('Los Cortijos',9.541841,-69.190135));
END;

CREATE OR REPLACE PROCEDURE insertar_sectores IS
BEGIN
    INSERT INTO sectores (id, nombre) VALUES (1, 'Alimenticio');
    INSERT INTO sectores (id, nombre) VALUES (2, 'Farmaceutico');
    INSERT INTO sectores (id, nombre) VALUES (3, 'Vestimenta');
    INSERT INTO sectores (id, nombre) VALUES (4, 'Tecnologico');
    INSERT INTO sectores (id, nombre) VALUES (5, 'Botanico');
    INSERT INTO sectores (id, nombre) VALUES (6, 'Calzado');
    INSERT INTO sectores (id, nombre) VALUES (7, 'Vehiculos');
    INSERT INTO sectores (id, nombre) VALUES (8, 'Floral');
    INSERT INTO sectores (id, nombre) VALUES (9, 'Cosmetica');
    INSERT INTO sectores (id, nombre) VALUES (10, 'Electrodomesticos');
    INSERT INTO sectores (id, nombre) VALUES (11, 'Bebidas Alcoholicas');
    INSERT INTO sectores (id, nombre) VALUES (12, 'Inmuebles');
    INSERT INTO sectores (id, nombre) VALUES (13, 'Herramientas');
    INSERT INTO sectores (id, nombre) VALUES (14, 'Utiles Escolares');
    INSERT INTO sectores (id, nombre) VALUES (15, 'Importaciones');
END;

CREATE OR REPLACE PROCEDURE insertar_proveedores IS
    datos_emp datos_empresa;
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

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('DoorDash'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('14/09/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('dash@doordash.co'),
        datos_empresa.VALIDAR_TELEFONO('+584141738951'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'doordash.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Postmates'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('02/11/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('ayudaes@gmail.com'),
        datos_empresa.VALIDAR_TELEFONO('+584268547195'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'postmates.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Caviar Delivery'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('09/09/2018', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('caviardeliverycliente@gmail.com'),
        datos_empresa.VALIDAR_TELEFONO('+584149562648'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'caviar.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Jumia Delivery'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('12/12/2018', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('ayuda@jumia.co.ve'),
        datos_empresa.VALIDAR_TELEFONO('+582122658974'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'jumia.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO proveedores (id, datos_empresa) VALUES
    (id_proveedor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Cylex'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('28/11/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('info@cylex.com.ve'),
        datos_empresa.VALIDAR_TELEFONO('+584147845624'),
        EMPTY_BLOB()
    )) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'cylex.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);
END;

CREATE OR REPLACE PROCEDURE insertar_productores IS
    datos_emp datos_empresa;
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

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Farmacias SAAS'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('31/12/2016', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('ayuda@saas.com.ve'),
        datos_empresa.VALIDAR_TELEFONO('+582128945126'),
        EMPTY_BLOB()
    ), 2) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'farmaciasaas.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Farmaplus'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('23/05/2017', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('contacto@farmaplus.com.ve'),
        datos_empresa.VALIDAR_TELEFONO('+582125847854'),
        EMPTY_BLOB()
    ), 2) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'farmaplus.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Farmahorro'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('11/09/2016', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('ahorra@farmahorro.com.ve'),
        datos_empresa.VALIDAR_TELEFONO('+582125986451'),
        EMPTY_BLOB()
    ), 2) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'farmahorro.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Dominos Pizza'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('16/07/2020', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('pizza@dominos.com.ve'),
        datos_empresa.VALIDAR_TELEFONO('+584147856415'),
        EMPTY_BLOB()
    ), 1) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'dominos.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO productores (id, datos_empresa, id_sector) VALUES
    (id_productor_sec.nextval, datos_empresa(
        datos_empresa.VALIDAR_NOMBRE('Burger Shack'),
        datos_empresa.VALIDAR_FECHA(TO_DATE('21/06/2019', 'dd/mm/yyyy')),
        datos_empresa.VALIDAR_CORREO('ayuda@burgershack.com.ve'),
        datos_empresa.VALIDAR_TELEFONO('+584168542598'),
        EMPTY_BLOB()
    ), 1) RETURNING datos_empresa INTO datos_emp;
    img_blob := datos_emp.logo;
    img_file := BFILENAME('DIR_LOGOS_EMPRESAS', 'burgershack.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);
END;

CREATE OR REPLACE PROCEDURE insertar_zonas_productores IS
BEGIN
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (3, 6, 11, 1);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (8, 15, 38, 1);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (13, 25, 67, 1);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (4, 7, 15, 1);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (1, 1, 1, 2);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (8, 15, 38, 2);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (5, 9, 20, 2);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (19, 35, 98, 2);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (18, 33, 92, 3);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (12, 23, 61, 3);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (13, 25, 66, 3);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (15, 28, 77, 3);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (16, 30, 82, 4);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (14, 27, 72, 4);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (16, 29, 78, 4);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (21, 40, 111, 4);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (11, 21, 57, 5);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (2, 4, 7, 5);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (10, 19, 52, 5);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (21, 39, 108, 5);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (7, 13, 32, 6);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (1, 2, 2, 6);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (2, 4, 6, 6);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (24, 46, 127, 6);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (20, 38, 106, 7);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (16, 29, 80, 7);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (20, 37, 103, 7);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (22, 42, 115, 7);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (20, 37, 104, 8);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (21, 39, 108, 8);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (20, 38, 107, 8);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (21, 39, 110, 8);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (7, 13, 33, 9);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (9, 16, 43, 9);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (22, 41, 114, 9);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (17, 31, 84, 9);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (16, 29, 80, 10);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (1, 2, 2, 10);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (24, 46, 129, 10);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (19, 36, 99, 10);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (6, 11, 28, 11);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (20, 37, 103, 11);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (4, 7, 16, 11);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (19, 35, 97, 11);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (17, 31, 84, 12);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (4, 7, 15, 12);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (6, 11, 27, 12);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (20, 38, 107, 12);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (23, 43, 118, 13);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (2, 4, 6, 13);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (23, 44, 123, 13);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (4, 7, 15, 13);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (8, 15, 40, 14);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (9, 16, 42, 14);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (15, 28, 76, 14);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (5, 8, 17, 14);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (8, 14, 35, 15);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (2, 3, 5, 15);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (23, 44, 122, 15);
    INSERT INTO zonas_productores (id_estado, id_municipio, id_zona, id_productor) VALUES (22, 41, 112, 15);
END;

CREATE OR REPLACE PROCEDURE insertar_zonas_proveedores IS
BEGIN
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (8, 14, 35, 1);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (5, 8, 17, 1);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (23, 43, 120, 1);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (17, 31, 84, 1);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (16, 29, 80, 2);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (9, 16, 43, 2);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (15, 28, 75, 2);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (4, 7, 16, 2);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (5, 9, 21, 3);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (7, 12, 31, 3);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (23, 43, 120, 3);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (4, 7, 16, 3);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (13, 25, 66, 4);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (5, 8, 18, 4);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (14, 26, 70, 4);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (8, 14, 37, 4);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (17, 32, 87, 5);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (3, 5, 9, 5);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (23, 43, 120, 5);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (7, 12, 30, 5);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (19, 36, 100, 6);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (12, 23, 61, 6);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (3, 6, 13, 6);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (1, 1, 1, 6);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (16, 30, 82, 7);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (22, 42, 116, 7);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (6, 11, 27, 7);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (11, 21, 56, 7);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (11, 21, 58, 8);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (20, 38, 106, 8);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (21, 39, 109, 8);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (3, 6, 12, 8);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (14, 26, 69, 9);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (16, 30, 81, 9);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (3, 6, 13, 9);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (23, 43, 120, 9);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (6, 10, 25, 10);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (12, 23, 62, 10);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (4, 7, 16, 10);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (8, 15, 40, 10);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (5, 8, 17, 11);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (3, 5, 10, 11);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (13, 25, 68, 11);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (5, 8, 19, 11);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (6, 10, 24, 12);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (11, 21, 58, 12);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (8, 14, 36, 12);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (4, 7, 14, 12);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (11, 20, 53, 13);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (3, 6, 12, 13);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (16, 29, 78, 13);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (7, 13, 32, 13);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (1, 1, 1, 14);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (14, 26, 69, 14);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (16, 30, 82, 14);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (23, 43, 119, 14);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (9, 16, 42, 15);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (18, 34, 95, 15);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (14, 27, 72, 15);
    INSERT INTO zonas_proveedores (id_estado, id_municipio, id_zona, id_proveedor) VALUES (8, 14, 35, 15);
END;

CREATE OR REPLACE PROCEDURE insertar_servicios IS
BEGIN
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval,1, rango_fechas(TO_DATE('2021-02-03', 'yyyy-mm-dd'),TO_DATE('2022-02-03','yyyy-mm-dd')), 6722, 'a', 20166);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval,2, rango_fechas(TO_DATE('2020-10-27', 'yyyy-mm-dd'),TO_DATE('2021-05-27','yyyy-mm-dd')), 175, 's', 700);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval,3, rango_fechas(TO_DATE('2021-01-01', 'yyyy-mm-dd'),TO_DATE('2022-01-01','yyyy-mm-dd')), 644, 'm', 3220);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval,3, rango_fechas(TO_DATE('2022-03-21', 'yyyy-mm-dd'),TO_DATE('2022-05-21','yyyy-mm-dd')), 655, 'm', 2620);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval,4, rango_fechas(TO_DATE('2020-12-19', 'yyyy-mm-dd'),TO_DATE('2021-07-19','yyyy-mm-dd')), 599, 'm', 1198);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval,5, rango_fechas(TO_DATE('2020-10-16', 'yyyy-mm-dd'),TO_DATE('2020-12-16','yyyy-mm-dd')), 604, 'm', 2416);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval,6, rango_fechas(TO_DATE('2020-10-30', 'yyyy-mm-dd'),TO_DATE('2021-09-30','yyyy-mm-dd')), 17, 'd', 85);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval,6, rango_fechas(TO_DATE('2021-10-26', 'yyyy-mm-dd'),TO_DATE('2022-08-26','yyyy-mm-dd')), 107, 's', 107);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval,7, rango_fechas(TO_DATE('2020-11-03', 'yyyy-mm-dd'),TO_DATE('2021-05-03','yyyy-mm-dd')), 27, 'd', 108);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 8, rango_fechas(TO_DATE('2020-10-25', 'yyyy-mm-dd'),TO_DATE('2021-08-25','yyyy-mm-dd')), 569, 'm', 1138);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 8, rango_fechas(TO_DATE('2021-12-07', 'yyyy-mm-dd'),TO_DATE('2022-11-07','yyyy-mm-dd')), 94, 's', 282);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 9, rango_fechas(TO_DATE('2021-01-02', 'yyyy-mm-dd'),TO_DATE('2021-07-02','yyyy-mm-dd')), 884, 'm', 2652);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 10, rango_fechas(TO_DATE('2021-02-07', 'yyyy-mm-dd'),TO_DATE('2021-10-07','yyyy-mm-dd')), 19, 'd', 19);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 10, rango_fechas(TO_DATE('2022-01-11', 'yyyy-mm-dd'),TO_DATE('2023-01-11','yyyy-mm-dd')), 6474, 'a', 12948);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 11, rango_fechas(TO_DATE('2021-01-04', 'yyyy-mm-dd'),TO_DATE('2021-05-04','yyyy-mm-dd')), 151, 's', 604);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 12, rango_fechas(TO_DATE('2020-10-30', 'yyyy-mm-dd'),TO_DATE('2020-11-30','yyyy-mm-dd')), 175, 's', 350);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 13, rango_fechas(TO_DATE('2021-01-09', 'yyyy-mm-dd'),TO_DATE('2021-12-09','yyyy-mm-dd')), 720, 'm', 720);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 13, rango_fechas(TO_DATE('2022-02-12', 'yyyy-mm-dd'),TO_DATE('2022-12-12','yyyy-mm-dd')), 168, 's', 504);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 14, rango_fechas(TO_DATE('2021-01-09', 'yyyy-mm-dd'),TO_DATE('2021-04-09','yyyy-mm-dd')), 444, 'm', 1332);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 14, rango_fechas(TO_DATE('2021-04-27', 'yyyy-mm-dd'),TO_DATE('2021-07-27','yyyy-mm-dd')), 196, 's', 588);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 15, rango_fechas(TO_DATE('2020-12-30', 'yyyy-mm-dd'),TO_DATE('2021-07-30','yyyy-mm-dd')), 76, 's', 228);
    INSERT INTO servicios (id, id_proveedor, rango_fechas, cantidad, frecuencia, precio) VALUES (id_servicio_sec.nextval, 15, rango_fechas(TO_DATE('2021-11-19', 'yyyy-mm-dd'),TO_DATE('2022-05-19','yyyy-mm-dd')), 669, 'm', 2676);
END;

CREATE OR REPLACE PROCEDURE insertar_contratos IS
BEGIN
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval,14, rango_fechas(TO_DATE('2020-11-07','yyyy-mm-dd'),TO_DATE('2021-05-07','yyyy-mm-dd')), 0);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval,13, rango_fechas(TO_DATE('2021-01-08','yyyy-mm-dd'),TO_DATE('2021-07-08','yyyy-mm-dd')), 20);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval,10, rango_fechas(TO_DATE('2020-11-27','yyyy-mm-dd'),TO_DATE('2021-01-27','yyyy-mm-dd')), 0);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval,3, rango_fechas(TO_DATE('2021-02-09','yyyy-mm-dd'),TO_DATE('2021-07-09','yyyy-mm-dd')), 0);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval,7, rango_fechas(TO_DATE('2021-02-04','yyyy-mm-dd'),TO_DATE('2021-05-04','yyyy-mm-dd')), 20);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval,14, rango_fechas(TO_DATE('2021-01-06','yyyy-mm-dd'),TO_DATE('2021-06-06','yyyy-mm-dd')), 0);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval,4, rango_fechas(TO_DATE('2021-01-05','yyyy-mm-dd'),TO_DATE('2021-05-05','yyyy-mm-dd')), 0);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval,1, rango_fechas(TO_DATE('2020-12-07','yyyy-mm-dd'),TO_DATE('2021-02-07','yyyy-mm-dd')), 0);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval,11, rango_fechas(TO_DATE('2020-12-10','yyyy-mm-dd'),TO_DATE('2021-07-10','yyyy-mm-dd')), 20);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval, 8, rango_fechas(TO_DATE('2020-12-23','yyyy-mm-dd'),TO_DATE('2021-04-23','yyyy-mm-dd')), 0);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval, 6, rango_fechas(TO_DATE('2020-12-14','yyyy-mm-dd'),TO_DATE('2021-07-14','yyyy-mm-dd')), 20);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval, 3, rango_fechas(TO_DATE('2021-01-25','yyyy-mm-dd'),TO_DATE('2021-04-25','yyyy-mm-dd')), 0);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval, 14, rango_fechas(TO_DATE('2021-01-19','yyyy-mm-dd'),TO_DATE('2021-04-19','yyyy-mm-dd')), 0);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval, 8, rango_fechas(TO_DATE('2021-01-21','yyyy-mm-dd'),TO_DATE('2021-04-21','yyyy-mm-dd')), 0);
    INSERT INTO contratos (id, id_productor, rango_fechas, descuento) VALUES (id_contrato_sec.nextval, 4, rango_fechas(TO_DATE('2021-01-24','yyyy-mm-dd'),TO_DATE('2021-02-24','yyyy-mm-dd')), 0);
END;

CREATE OR REPLACE PROCEDURE insertar_servicios_contratos IS
BEGIN
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (1, 14, 2, 2);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (2, 13, 3, 3);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (3, 10, 7, 6);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (4, 3, 7, 6);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (5, 7, 2, 2);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (6, 14, 3, 3);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (7, 4, 21, 15);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (8, 1, 7, 6);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (9, 11, 10, 8);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (10, 8, 10, 8);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (11, 6, 7, 6);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (12, 3, 5, 4);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (13, 14, 2, 2);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (14, 8, 10, 8);
    INSERT INTO servicios_contratos (id_contrato, id_productor, id_servicio, id_proveedor) VALUES (15, 4, 5, 4);
END;

CREATE OR REPLACE PROCEDURE insertar_estados_contratos IS
BEGIN
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (15, 1, 14);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (23, 2, 13);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (4, 2, 13);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (19, 3, 10);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (12, 4, 3);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (16, 5, 7);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (5, 6, 14);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (14, 7, 4);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (3, 8, 1);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (20, 9, 11);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (21, 10, 8);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (20, 10, 8);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (1, 11, 6);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (13, 12, 3);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (9, 13, 14);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (15, 13, 14);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (20, 14, 8);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (21, 14, 8);
    INSERT INTO estados_contratos (id_estado, id_contrato, id_productor) VALUES (14, 15, 4);
END;

CREATE OR REPLACE PROCEDURE insertar_transportes IS
BEGIN
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval,1, 23, 43, 120, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval,1, 8, 14, 35, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval,1, 17, 31, 84, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval,1, 5, 8, 17, 'car', 'f', 'ZC392MB');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval,2, 15, 28, 75, 'cam', 'f', 'FM657LJ');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval,2, 4, 7, 16, 'car', 'f', 'YV736UY');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval,2, 9, 17, 44, 'car', 'f', 'UV361OL');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval,2, 16, 29, 80, 'cam', 'f', 'HP880VT');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval,3, 23, 43, 120, 'car', 'f', 'HB861RN');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 3, 7, 12, 31, 'car', 'f', 'ZV856RM');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 3, 5, 9, 20, 'cam', 'f', 'QT399DU');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 3, 4, 7, 16, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 4, 14, 27, 72, 'mot', 'f', 'KM348KS');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 4, 8, 14, 37, 'car', 'f', 'MQ873QD');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 4, 5, 8, 18, 'mot', 'f', 'QD275PZ');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 4, 13, 24, 63, 'cam', 'd', 'PM295JU');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 5, 23, 43, 120, 'cam', 'f', 'AJ936GQ');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 5, 7, 12, 30, 'mot', 'f', 'ZS517HL');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 5, 17, 32, 87, 'car', 'f', 'ZX371VY');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 5, 3, 5, 9, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 6, 1, 1, 1, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 6, 12, 23, 61, 'car', 'f', 'DJ626PD');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 6, 3, 6, 13, 'mot', 'f', 'CT157CS');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 6, 19, 36, 100, 'cam', 'f', 'RV446IW');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 7, 6, 11, 27, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 7, 11, 21, 56, 'cam', 'd', 'TO298GV');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 7, 22, 42, 116, 'mot', 'f', 'NM721PI');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 7, 16, 30, 82, 'cam', 'f', 'KJ482BK');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 8, 11, 21, 58, 'cam', 'f', 'OO259YB');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 8, 21, 39, 109, 'cam', 'f', 'SJ314EI');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 8, 20, 38, 106, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 8, 3, 6, 12, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 9, 14, 26, 69, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 9, 23, 43, 120, 'car', 'f', 'IV131SS');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 9, 3, 6, 13, 'car', 'f', 'FH577UP');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 9, 16, 30, 81, 'car', 'f', 'JQ263SC');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 10, 6, 10, 25, 'mot', 'f', 'RK074YJ');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 10, 12, 23, 62, 'car', 'd', 'UQ416MT');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 10, 8, 15, 40, 'mot', 'f', 'LV584IH');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 10, 4, 7, 16, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 11, 5, 8, 19, 'car', 'f', 'AW126TA');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 11, 3, 5, 10, 'cam', 'f', 'TC256XH');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 11, 13, 25, 68, 'mot', 'f', 'DO535NM');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 12, 6, 10, 24, 'car', 'f', 'MP666FX');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 12, 11, 21, 58, 'mot', 'f', 'DA605CM');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 12, 8, 14, 36, 'mot', 'f', 'OR585VJ');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 12, 4, 7, 14, 'mot', 'f', 'CE710JT');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 13, 7, 13, 32, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 13, 11, 20, 53, 'cam', 'f', 'EC032NF');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 13, 3, 6, 12, 'car', 'f', 'IQ223DO');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 13, 16, 29, 78, 'bic', 'd', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 14, 14, 26, 69, 'bic', 'd', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 14, 23, 43, 119, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 14, 1, 1, 1, 'bic', 'f', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 14, 16, 30, 82, 'cam', 'f', 'KM764RD');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 15, 14, 27, 73, 'cam', 'f', 'MF838IB');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 15, 8, 14, 35, 'bic', 'd', null);
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 15, 18, 34, 95, 'car', 'f', 'LE670TX');
    INSERT INTO transportes (id, id_proveedor, id_estado, id_municipio, id_zona, tipo, estatus, numero_placa) VALUES (id_transporte_sec.nextval, 15, 9, 16, 42, 'bic', 'd', null);
END;

CREATE OR REPLACE PROCEDURE insertar_usuarios IS
    img_blob BLOB;
    img_file BFILE;
BEGIN
    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.nextval, 2, 'Anastasia', 'Pacheco', 'Gomez', EMPTY_BLOB(), 'AnastasiaPacheco@bing.com', TO_DATE('2020-12-23','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '1.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 6, 'Anastasia', 'Pacheco', 'Gomez', EMPTY_BLOB(), 'AnastasiaPacheco@bing.com', TO_DATE('2020-12-23','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '1.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 10, 'Anastasia', 'Pacheco', 'Gomez', EMPTY_BLOB(), 'AnastasiaPacheco@bing.com', TO_DATE('2020-12-23','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '1.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 11, 'Anastasia', 'Pacheco', 'Gomez', EMPTY_BLOB(), 'AnastasiaPacheco@bing.com', TO_DATE('2020-12-23','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '1.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.nextval, 1, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 2, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 3, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 4, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 5, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 6, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 7, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 8, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 9, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 10, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 11, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 12, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 13, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 14, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 15, 'Barbara', 'Palma', 'De Olim', EMPTY_BLOB(), 'BarbaraPalma@cantv.ve', TO_DATE('2020-09-27','yyyy-mm-dd'), NULL) RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_MUJER', '2.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.nextval, 1, 'Jorge', 'Graterol', 'Paredes', EMPTY_BLOB(), 'JorgeGraterol@hotmail.com', TO_DATE('2020-09-27','yyyy-mm-dd'), 'Eduardo') RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_HOMBRE', '1.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 2, 'Jorge', 'Graterol', 'Paredes', EMPTY_BLOB(), 'JorgeGraterol@hotmail.com', TO_DATE('2020-09-27','yyyy-mm-dd'), 'Eduardo') RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_HOMBRE', '1.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 4, 'Jorge', 'Graterol', 'Paredes', EMPTY_BLOB(), 'JorgeGraterol@hotmail.com', TO_DATE('2020-09-27','yyyy-mm-dd'), 'Eduardo') RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_HOMBRE', '1.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 7, 'Jorge', 'Graterol', 'Paredes', EMPTY_BLOB(), 'JorgeGraterol@hotmail.com', TO_DATE('2020-09-27','yyyy-mm-dd'), 'Eduardo') RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_HOMBRE', '1.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 8, 'Jorge', 'Graterol', 'Paredes', EMPTY_BLOB(), 'JorgeGraterol@hotmail.com', TO_DATE('2020-09-27','yyyy-mm-dd'), 'Eduardo') RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_HOMBRE', '1.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 13, 'Jorge', 'Graterol', 'Paredes', EMPTY_BLOB(), 'JorgeGraterol@hotmail.com', TO_DATE('2020-09-27','yyyy-mm-dd'), 'Eduardo') RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_HOMBRE', '1.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);

    INSERT INTO usuarios (cedula, id_proveedor, primer_nombre, primer_apellido, segundo_apellido, foto, email, fecha_registro, segundo_nombre) VALUES
    (cedula_usuario_sec.currval, 15, 'Jorge', 'Graterol', 'Paredes', EMPTY_BLOB(), 'JorgeGraterol@hotmail.com', TO_DATE('2020-09-27','yyyy-mm-dd'), 'Eduardo') RETURNING foto INTO img_blob;
    img_file := BFILENAME('DIR_FOTOS_HOMBRE', '1.png');
    DBMS_LOB.OPEN(img_file, DBMS_LOB.LOB_READONLY);
    DBMS_LOB.LOADFROMFILE(img_blob, img_file, SYS.DBMS_LOB.GETLENGTH(img_file));
    DBMS_LOB.CLOSE(img_file);
END;

CREATE OR REPLACE PROCEDURE insertar_zonas_usuarios IS
BEGIN
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000000, 10, 8, 15, 40, 'Callejón Temeraria, Edificio 465');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000000, 11, 13, 24, 64, 'Carretera Los Cocos, Comercio 22');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000000, 2, 9, 17, 45, 'Avenida Acosta, Local 881');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000000, 6, 1, 1, 1, 'Callejón Blanco, Oficina 792');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000000, 6, 3, 6, 12, 'Transversal Rotaria, Casa 142');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 5, 7, 12, 30, 'Carretera Maparari, Local 324');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 1, 5, 9, 21, 'Carretera Maparari, Casa 218');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 4, 14, 27, 72, 'Calle Variante, Edificio 510');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 4, 13, 24, 63, 'Avenida Las Brisas, Casa 298');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 11, 13, 25, 67, 'Avenida Virgilio, Local 625');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 15, 9, 17, 46, 'Avenida Soto, Edificio 809');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 10, 12, 22, 59, 'Transversal La Parada, Edificio 263');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 9, 16, 30, 83, 'Transversal La Parada, Edificio 887');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 13, 11, 21, 57, 'Avenida xColon, Casa 418');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 8, 3, 6, 11, 'Calle Carabobo, Casa 935');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 14, 16, 30, 82, 'Calle Junin, Oficina 615');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 14, 23, 43, 120, 'Calle Las Bellezas, Edificio 98');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 6, 19, 35, 98, 'Calle Rotaria, Local 329');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 6, 1, 1, 1, 'Calle Cantaura, Oficina 120');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 7, 22, 41, 113, 'Carretera Rómulo Gallegos, Edificio 375');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 3, 5, 9, 20, 'Transversal Las Margaritas, Local 594');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 2, 4, 7, 15, 'Carretera Blanco, Edificio 561');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 12, 11, 20, 53, 'Calle España, Local 780');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000001, 12, 6, 10, 25, 'Avenida La Paz, Local 390');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000002, 4, 5, 9, 21, 'Carretera Los Cocos, Comercio 580');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000002, 13, 11, 21, 58, 'Avenida Manaure, Local 137');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000002, 1, 17, 31, 84, 'Carretera Junin, Oficina 903');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000002, 8, 21, 39, 109, 'Bulevar Ampies, Edificio 90');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000002, 15, 14, 27, 73, 'Bulevar Medina, Local 578');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000002, 2, 9, 17, 44, 'Redoma Cumanacoa, Comercio 220');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000002, 2, 16, 29, 79, 'Transversal Las Brisas, Casa 260');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000002, 7, 6, 11, 27, 'Transversal Hierbas, Edificio 720');
    INSERT INTO zonas_usuarios (cedula_usuario, id_proveedor_usuario, id_estado, id_municipio, id_zona, direccion) VALUES (20000002, 7, 16, 29, 79, 'Bulevar Junin, Comercio 321');
END;

CREATE OR REPLACE PROCEDURE insertar_productos IS
BEGIN
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval,2, 'Peptobismol', 2.33, 27.1, 'lt');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval,2, 'Vitamina C', 9.94, 46.26, 'kg');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval,1, 'Nestea de limon', 2.31, 14.08, 'lt');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval,2, 'Herbalife', 554.73, 8.13, 'ml');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval,2, 'Vitamina B12', 152.47, 7.87, 'g ');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval,1, 'Yogurt con azucar', 7.51, 18.33, 'lt');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval,1, 'Chocolate caliente', 960.35, 1.26, 'ml');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval,1, 'Nestea de durazno', 1.4, 15.15, 'lt');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval,1, 'Shawarma', 4.76, 4.14, 'kg');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval, 1, 'Frescolita', 2.58, 45.34, 'lt');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval, 2, 'Jarabe de toz', 1.42, 32.88, 'lt');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval, 2, 'Jarabe de acetaminophen', 433.18, 8.88, 'ml');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval, 2, 'Antigripal en pastillas', 8.39, 19.37, 'kg');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval, 1, 'Rueda de salmon', 4.08, 35.13, 'kg');
    INSERT INTO productos (id, id_sector, nombre, medida, precio_unitario, unidad_medida) VALUES (id_producto_sec.nextval, 1, 'Cafe con leche', 654.44, 41.84, 'ml');
END;

CREATE OR REPLACE PROCEDURE insertar_productos_productor IS
BEGIN
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (1, 4);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (2, 6);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (3, 11);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (4, 2);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (4, 12);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (5, 2);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (6, 6);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (6, 7);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (7, 3);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (7, 15);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (8, 14);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (8, 8);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (9, 5);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (9, 15);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (10, 13);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (11, 4);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (12, 2);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (13, 2);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (13, 8);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (14, 13);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (14, 12);
    INSERT INTO productos_productor (id_producto, id_productor) VALUES (15, 12);
END;

CREATE OR REPLACE PROCEDURE insertar_pedidos IS
BEGIN
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-02','yyyy-mm-dd')), 'en', 14, 27, 72, 20000001, 4, 14, 27, 72, 15, 4, 'Gimnasio Las Flores', 2, 13, 4, 10);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-03','yyyy-mm-dd')), 'en', 9, 16, 42, 20000002, 2, 9, 17, 44, 13, 14, 'Centro Comercial San Antonio', 1, 7, 2, 10);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-02','yyyy-mm-dd')), 'en', 14, 27, 72, 20000002, 15, 14, 27, 73, 7, 4, 'Edificio Lima', 1, 56, 15, 10);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-03','yyyy-mm-dd')), 'es', 5, 8, 17, 20000001, 3, 5, 9, 20, 6, 14, 'Estación de Servicio Torbes', null, null, null, 10);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-03','yyyy-mm-dd')), 'es', 1, 2, 2, 20000001, 6, 1, 1, 1, 11, 6, 'Torre Tolón', null, null, null, 10);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-03','yyyy-mm-dd')), 'en', 5, 8, 17, 20000001, 3, 5, 9, 20, 6, 14, 'Centro Comercial El Alba', 2, 11, 3, null);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-02','yyyy-mm-dd')), 'en', 21, 39, 110, 20000002, 8, 21, 39, 109, 14, 8, 'Centro Comercial Tolón', 5, 30, 8, 10);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-03','yyyy-mm-dd')), 'en', 9, 16, 42, 20000002, 2, 9, 17, 44, 13, 14, 'Edificio Naranjal', 4, 7, 2, null);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-02','yyyy-mm-dd')), 'en', 21, 39, 110, 20000002, 8, 21, 39, 109, 14, 8, 'Colegio El Alba', 3, 30, 8, null);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-02','yyyy-mm-dd')), 'en', 21, 39, 110, 20000002, 8, 21, 39, 109, 14, 8, 'Estación de Servicio San Antonio', 5, 30, 8, null);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-02','yyyy-mm-dd')), 'en', 14, 27, 72, 20000002, 15, 14, 27, 73, 7, 4, 'Centro Comercial Torbes', 2, 56, 15, null);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-03','yyyy-mm-dd')), 'en', 13, 25, 66, 20000001, 4, 13, 24, 63, 12, 3, 'Centro Comercial Santa Bárbara', 5, 16, 4, 10);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-02','yyyy-mm-dd')), 'et', 14, 27, 72, 20000001, 4, 14, 27, 72, 15, 4, 'Hotel Naranjal', null, 13, 4, null);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-02','yyyy-mm-dd')), 'et', 16, 29, 80, 20000002, 2, 16, 29, 79, 5, 7, 'Estación de Servicio Carabobo', null, 8, 2, 10);
    INSERT INTO pedidos (tracking, rango_fechas, estatus, id_estado_origen, id_municipio_origen, id_zona_origen, cedula_usuario, id_proveedor_usuario, id_estado_destino, id_municipio_destino, id_zona_destino, id_contrato, id_productor_contrato, referencia_direccion, satisfaccion, id_transporte, id_proveedor_transporte, descuento_productos) VALUES (tracking_pedido_sec.nextval, rango_fechas(TO_DATE('2020-12-02','yyyy-mm-dd'),TO_DATE('2020-12-03','yyyy-mm-dd')), 'es', 13, 25, 66, 20000001, 4, 13, 24, 63, 12, 3, 'Estación de Servicio Naranjal', null, 16, 4, null);
END;

CREATE OR REPLACE PROCEDURE insertar_productos_pedidos IS
BEGIN
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (1, 11, 3);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (1, 1, 4);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (2, 8, 3);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (3, 11, 4);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (3, 1, 4);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (4, 8, 2);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (5, 6, 2);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (5, 2, 4);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (6, 8, 2);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (7, 13, 3);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (7, 8, 2);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (8, 8, 3);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (9, 13, 4);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (9, 8, 3);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (10, 8, 2);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (10, 13, 4);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (11, 1, 2);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (11, 11, 2);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (12, 7, 4);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (13, 11, 2);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (13, 1, 3);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (14, 6, 4);
    INSERT INTO productos_pedidos (tracking_pedido, id_producto, cantidad) VALUES (15, 7, 3);
END;

CREATE OR REPLACE PROCEDURE inserts_ejemplos IS
BEGIN
    insertar_estados();
    insertar_municipios();
    insertar_zonas();
    insertar_sectores();
    insertar_productores();
    insertar_proveedores();
    insertar_zonas_productores();
    insertar_zonas_proveedores();
    insertar_servicios();
    insertar_contratos();
    insertar_servicios_contratos();
    insertar_estados_contratos();
    insertar_transportes();
    insertar_usuarios();
    insertar_zonas_usuarios();
    insertar_productos();
    insertar_productos_productor();
    insertar_pedidos();
    insertar_productos_pedidos();
END;