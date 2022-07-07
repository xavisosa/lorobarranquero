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
    ,FechaHora      TIMESTAMP 
);

-- MODELO DE INSERT 
INSERT INTO consultas (Cliente, Telefono, Email, MsjConsulta, EmpleadoCC) VALUES 
('Abril Diaz', '1126596689', 'abrilsita000@gmail.com', 'Hola, todo bien', 'Koren Julie')

-- CONSULTAS 
 SELECT  Cliente, Telefono, Email, MsjConsulta, EmpleadoCC, FechaHora
 FROM   consultas;

 SELECT  Cliente, Telefono, Email, MsjConsulta, EmpleadoCC, FechaHora
 FROM   consultas;
 WHERE CodConsulta = ?;
 

