--Script que contiene los roles del sistema
ALTER SESSION SET "_ORACLE_SCRIPT"=true; --para que se puedan crear los roles
CREATE ROLE administrador;
CREATE ROLE gerente_productor;
CREATE ROLE gerente_proveedor;
CREATE ROLE transportista;
CREATE ROLE usuario;

--SELECT * FROM DBA_ROLES; para ver los roles

--Asignacion de privilegios para el administrador
--DDL
GRANT CREATE TABLE, ALTER ANY TABLE, DROP ANY TABLE TO administrador;
GRANT CREATE TRIGGER, DROP ANY TRIGGER TO administrador;
GRANT CREATE PROCEDURE TO administrador;
GRANT CREATE USER, CREATE ROLE TO administrador;
GRANT CREATE VIEW, DROP ANY VIEW TO administrador;
GRANT CREATE SESSION TO administrador;
GRANT CREATE SEQUENCE, DROP ANY SEQUENCE TO administrador;

--DML
GRANT ALL ON estados TO administrador;
GRANT ALL ON municipios TO administrador;
GRANT ALL ON zonas TO administrador;
GRANT ALL ON sectores TO administrador;
GRANT ALL ON proveedores TO administrador;
GRANT ALL ON productores TO administrador;
GRANT ALL ON zonas_proveedores TO administrador;
GRANT ALL ON zonas_productores TO administrador;
GRANT ALL ON servicios TO administrador;
GRANT ALL ON contratos TO administrador;
GRANT ALL ON servicios_contratos TO administrador;
GRANT ALL ON estados_contratos TO administrador;
GRANT ALL ON transportes TO administrador;
GRANT ALL ON usuarios TO administrador;
GRANT ALL ON zonas_usuarios TO administrador;
GRANT ALL ON productos TO administrador;
GRANT ALL ON productos_productor TO administrador;
GRANT ALL ON pedidos TO administrador;
GRANT ALL ON productos_pedidos TO administrador;

--Asignacion de privilegios para el gerente_productor
--DML
GRANT SELECT ON estados TO gerente_productor;
GRANT SELECT ON municipios TO gerente_productor;
GRANT SELECT ON zonas TO gerente_productor;
GRANT SELECT ON sectores TO gerente_productor;
GRANT SELECT ON proveedores TO gerente_productor;
GRANT ALL ON productores TO gerente_productor;
GRANT SELECT ON zonas_proveedores TO gerente_productor;
GRANT ALL ON zonas_productores TO gerente_productor;
GRANT SELECT ON servicios TO gerente_productor;
GRANT ALL ON contratos TO gerente_productor;
GRANT ALL ON servicios_contratos TO gerente_productor;
GRANT ALL ON estados_contratos TO gerente_productor;
GRANT ALL ON productos TO gerente_productor;
GRANT ALL ON productos_productor TO gerente_productor;
GRANT SELECT ON pedidos TO gerente_productor;
GRANT SELECT ON productos_pedidos TO gerente_productor;

--Asignacion de privilegios para el gerente proveedor
--DML
GRANT SELECT ON estados TO gerente_proveedor;
GRANT SELECT ON municipios TO gerente_proveedor;
GRANT SELECT ON zonas TO gerente_proveedor;
GRANT SELECT ON sectores TO gerente_proveedor;
GRANT ALL ON proveedores TO gerente_proveedor;
GRANT SELECT ON productores TO gerente_proveedor;
GRANT ALL ON zonas_proveedores TO gerente_proveedor;
GRANT SELECT ON zonas_productores TO gerente_proveedor;
GRANT ALL ON servicios TO gerente_proveedor;
GRANT ALL ON contratos TO gerente_proveedor;
GRANT ALL ON servicios_contratos TO gerente_proveedor;
GRANT ALL ON estados_contratos TO gerente_proveedor;
GRANT ALL ON transportes TO gerente_proveedor;
GRANT SELECT ON usuarios TO gerente_proveedor;
GRANT SELECT ON zonas_usuarios TO gerente_proveedor;
GRANT SELECT ON productos TO gerente_proveedor;
GRANT SELECT ON productos_productor TO gerente_proveedor;
GRANT SELECT ON pedidos TO gerente_proveedor;
GRANT SELECT ON productos_pedidos TO gerente_proveedor;

--Asignacion de privilegios para el transportista
--DML
GRANT SELECT ON estados TO transportista;
GRANT SELECT ON municipios TO transportista;
GRANT SELECT ON zonas TO transportista;
GRANT SELECT ON sectores TO transportista;
GRANT SELECT ON proveedores TO transportista;
GRANT SELECT ON productores TO transportista;
GRANT ALL ON transportes TO transportista;
GRANT SELECT ON pedidos TO transportista;
GRANT SELECT ON productos_pedidos TO transportista;

--Asignacion de privilegios para el usuario
--DML
GRANT SELECT ON estados TO usuario;
GRANT SELECT ON municipios TO usuario;
GRANT SELECT ON zonas TO usuario;
GRANT SELECT ON sectores TO usuario;
GRANT SELECT ON proveedores TO usuario;
GRANT SELECT ON productores TO usuario;
GRANT SELECT ON zonas_proveedores TO usuario;
GRANT SELECT ON zonas_productores TO usuario;
GRANT ALL ON usuarios TO usuario;
GRANT ALL ON zonas_usuarios TO usuario;
GRANT SELECT ON productos TO usuario;
GRANT SELECT ON productos_productor TO usuario;
GRANT ALL ON pedidos TO usuario;
GRANT ALL ON productos_pedidos TO usuario;

