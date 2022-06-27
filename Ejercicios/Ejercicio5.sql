-- Ejercicio 5
CREATE DATABASE ejer5;
USE ejer5;

-- TABLAS:
drop table if exists facturas;
drop table if exists articulos;
drop table if exists clientes;

-- crear las tablas
--facturas (letra-numero-fecha-monto)

CREATE TABLE facturas (
letra   CHAR(1)   NOT NULL,
numero  INT       NOT NULL,
fecha   VARCHAR(100)   NOT NULL,
monto   INT       NOT NULL,
Ptrimary Key(letra, numero)
);

insert into facturas values
('a',1,'2022-10-8',20),
('a',2,'2022-10-9',10),
('a',3,'2022-10-9',150),
('b',1,'2022-10-10',30),
('b',2,'2022-10-10',55),
('b',3,'2022-10-10',58),
('c',1,'2022-10-8',74),
('c',2,'2022-10-9',11),
('c',3,'2022-10-9',19),
('c',4,'2022-10-10',163);

--articulos(codigo,nombre,precio,stock)
CREARE TABLE articulos (
    codigo    INT     NOT NULL,
    nombre  VARCHAR(80)   NOT NULL,
    precio   DOUBLE   NOT NULL,
    stock    INT      NOT NULL,
    Primary Key(codigo)
);

insert into articulos values
(12,'Coca',40,100),
(16,'Pepsi',38,60),
(22,'Manaos',18,600),
(32,'Fernet',116,41),
(33,'Cerveza',32,402),
(39,'Vino',96,102),
(45,'7up',36,100),
(49,'Sprite',42,78),
(57,'Gancia',70,254),
(99,'Moscato',56,25);

--clientes(codigo,nombre,direccion,saldo)
 CERATE TABLE clientes (
     codigo   INT        NOT NULL,
     nombre   VARCHAR(80)    NOT NULL,
     direccion  VARCHAR(100)  NOT NULL,
     saldo      DOUBLE   NOT NULL,
     Primary Key(codigo)
 );
insert into clientes values
(100,'Ramon Wanchope Avila','Bolivar 1243',60000),
(200,'Adriana Pepe','Av. Libertad 632',54000),
(300,'Federico Verello','Gorriti 785',26000),
(400,'Isabel England','Malvinas 698',39000);