-- Ejercicio 5
CREATE DATABASE ejer5;
USE ejer5;

-- TABLAS:
drop table if exists facturas;
drop table if exists articulos;
drop table if exists clientes;

-- crear las tablas
--facturas (letra-numero-fecha-monto)
--articulos(codigo,nombre,precio,stock)
--clientes(codigo,nombre,direccion,saldo)

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

insert into clientes values
(100,'Ramon Wanchope Avila','Bolivar 1243',60000),
(200,'Adriana Pepe','Av. Libertad 632',54000),
(300,'Federico Verello','Gorriti 785',26000),
(400,'Isabel England','Malvinas 698',39000);