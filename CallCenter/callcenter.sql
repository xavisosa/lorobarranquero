DROP DATABASE IF EXISTS callcenter;

create database callcenter;

USE callcenter;
CREATE TABLE consultas (
    CodConsulta     INT             AUTO_INCREMENT     PRIMARY KEY
    ,Cliente        VARCHAR(100)    NOT NULL 
    ,Telefono       VARCHAR(20)     NOT NULL
    ,Email          VARCHAR(100)    NOT NULL
    ,MsjConsulta    VARCHAR(255)    NOT NULL
    ,EmpleadoCC     VARCHAR(100)    NOT NULL
    ,Estado         VARCHAR(10)     DEFAULT 'ABIERTO'   
    ,FechaHora      TIMESTAMP 
);
--REVISION | CERRADO

-- MODELO DE INSERT 
INSERT INTO consultas (Cliente, Telefono, Email, MsjConsulta, EmpleadoCC) VALUES 
('Abril Diaz', '1126596689', 'abrilsita000@gmail.com', 'Hola, todo bien', 'Koren Julie')

-- CONSULTAS 
SELECT  Cliente, Telefono, Email, MsjConsulta, EmpleadoCC, FechaHora
FROM    consultas;

SELECT  Cliente, Telefono, Email, MsjConsulta, EmpleadoCC, FechaHora
FROM    consultas;
WHERE   CodConsulta = ?;

SELECT  Cliente, Telefono, Email, MsjConsulta, EmpleadoCC, FechaHora
FROM    consultas
WHERE   Cliente = 'Jose'
AND     Estado = 'ABIERTO';

SELECT  Cliente, Telefono, Email, MsjConsulta, EmpleadoCC, FechaHora
FROM    consultas
WHERE   Estado = 'CERRADO';

UPDATE  consultas
SET     Estado = 'CERRADO'
WHERE   FechaHora < DATE_ADD(CURDATE(),INTERVAL -6 MOUTH);

-- ACTUALIZAR REGISTROS
UPDATE  nombreTabla
SET     campo1 = valor,
        campo2 = valor,
        campo3 = valor
WHERE   campo = valor
AND     campo2 = valor;zxcvbn


UPDATE  articulos
SET     precio = 89000
WHERE   codArt = 115;

-- ELIMINAR REGISTROS
DELETE  nombreTabla
WHERE   campo = valor;



















