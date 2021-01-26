-- DDL

CREATE TABLE tabla_prueba (
    id NUMBER PRIMARY KEY,
    valor VARCHAR2(60)
);

ALTER TABLE tabla_prueba ADD valor2 NUMBER;

DROP TABLE tabla_prueba;

CREATE OR REPLACE TRIGGER trigger_prueba AFTER INSERT ON tabla_prueba FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('prueba');
END;

DROP TRIGGER trigger_prueba;

CREATE OR REPLACE PROCEDURE procedure_prueba IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('prueba');
END;

DROP PROCEDURE procedure_prueba;

CREATE USER user_prueba IDENTIFIED BY clave
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP
QUOTA 15M ON USERS;

DROP USER user_prueba;

CREATE ROLE rol_prueba;

DROP ROLE rol_prueba;

CREATE OR REPLACE VIEW vista_prueba AS
    SELECT * FROM tabla_prueba;

DROP VIEW vista_prueba;

CREATE SEQUENCE secuencia_prueba START WITH 1 INCREMENT BY 1;

DROP SEQUENCE secuencia_prueba;

