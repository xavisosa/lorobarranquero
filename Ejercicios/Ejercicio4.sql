-- Ejercicio 4

/*  TABLAS:

fabricantes
-codigo
-nombre

articulos
-codigo
-nombre
-precio
-fabric INT
** AGREGAR ESTA LINEA AL FINAL DEL CREATE TABLE DE ARTICULOS: foreign key (fabric) references fabricantes (codigo)*/


insert into fabricantes values
(1,'Sony'),(2,'LG'),(3,'Gigabyte'),(4,'Asus'),(5,'Magnum'),(6,'Kingston'),(7,'AMD'),(8,'Intel'),(9,'WD'),(10,'Genius');

insert into articulos values
(100,'Teclado',200,10),
(101,'Mouse',150,10),
(102,'Monitor 23pulg',2700,2),
(103,'Disco Rigido 1tb',1200,9),
(104,'Mem 8gb',1850,6),
(105,'Mem 16gb',3400,6),
(106,'Pen Drive 32gb',800,6),
(107,'i5 7200',5030,8),
(108,'i7 Extrem 9300',7890,8),
(109,'a10 7340',3890,7),
(110,'a8 7300',2750,7),
(111,'Mother ga-5262',2350,3),
(112,'Mother ga-8922',3100,3),
(113,'Mother as-6162-3',4350,4),
(114,'TV Smart 65 pulg',12000,1),
(115,'Home 5.1',6850,2),
(116,'TV 4D 42 pulg',19700,1),
(117,'Placa Video 2gb',5650,3),
(118,'Gabinete KIT 646',890,5),
(119,'Gabinete s/fuente 910',1250,5),
(120,'BlueRay 3d',9700,2);