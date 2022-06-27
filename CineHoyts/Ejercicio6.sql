DROP DATABASE IF EXISTS cineshoyts;

CREATE DATABASE cineshoyts;
USE cineshoyts;

-- TABLAS:
CREATE TABLE peliculas (
    idPelicula      INT          NOT NULL PRIMARY KEY
    ,titulo         VARCHAR(80)  NOT NULL
    ,tituloOriginal VARCHAR(80)  NULL
    ,anio           YEAR         NOT NULL
    ,certificado    CHAR(3)      DEFAULT 'ATP'
    ,duracion       SMALLINT     NOT NULL
    ,genero         VARCHAR(30)  NOT NULL
    ,direccion      VARCHAR(50)  NOT NULL
    ,sinapsis       VARCHAR(800) NOT NULL
    ,ISAM           VARCHAR(33)  NULL
    ,puntuacionIMBd DOUBLE       DEFAULT 1.0
);

INSERT INTO peliculas(idPelicula, titulo, tituloOriginal, anio, certificado, duracion, genero, direccion, sinapsis, isam, puntuacionIMBd) VALUES
(100,'Barbie en la Princesa y la Plebeya','Barbie as the Princess and the Pauper',2004, 'ATP', 1.25,'Animación','William Lau','La princesa Anneliese encuentra una inesperada amistad cuando conoce a su humilde doble, Erika. ¿Podrán la princesa y la costurera frustrar los planes del intrigante asesor de la reina, Preminger?','',6.9)
,(187,'Barbie y las 12 princesas bailarinas','Barbie in the 12 Dancing Princesses',2006,'ATP',1.23,'Animación','Greg Richardson','El rey viudo Randolph solicita la ayuda de su prima para que enseñe a sus hijas la etiqueta real adecuada. En lugar de ello, prohíbe todos los bailes en el palacio. ¿Podrán las doce princesas bailarinas salvar el reino?','',6.7)
,(198,'Barbie en la Princesa de la Isla','Barbie as the Island Princess',2007,'ATP',1.26,'Animación','Greg Richardson','Abandonada en un idílico islote, la bella joven Ro ve cómo su mundo se pone patas arriba cuando un aventurero príncipe la lleva a ella y a sus peludos amigos a explorar la civilización. ¿Podría Ro ser Rosella, la princesa desaparecida?','',6.4)
,(344,'Coraline','-',2009,'+13',1.40,'Animación','Henry Selick','Una aventurera niña de 11 años encuentra otro mundo que es una versión extrañamente idealizada de su frustrante hogar, pero que tiene siniestros secretos.','',7.7)
,(780,'Capitán América: Civil War','Captain America: Civil War',2016,'+13',2.27,'Acción','Anthony Russo, Joe Russo','La implicación política en los asuntos de los Vengadores causa una ruptura entre Iron Man y el Capitán América.','',7.8)
,(581,'Yo, Tonya','I, Tonya',2017,'+16',1.59,'Biografía','Craig Gillespie','Tonya Harding, la patinadora sobre hielo, va subiendo en el ranking del campeonato estadounidense de patinaje. Pero su futuro en la profesión es puesto en duda cuando su exmarido interviene.','',7.5)
,(624,'Hamilton','-',2020,'+13',2.40,'Musical','Thomas Kail','La historia de uno de los padres fundadores de los Estados Unidos y primer Secretario del Tesoro, Alexander Hamilton, rodada en directo en Broadway con el reparto original.','',8.4)
,(901,'Jumanji','-',1995,'ATP',1.44,'Aventura','Joe Johnston','Cuando dos niños encuentran y juegan a un juego de mesa mágico, liberan a un hombre atrapado en él durante décadas, y a una serie de peligros que solo pueden detenerse si se acaba el juego.','',7.0)
,(1087,'El diario de Noa','The Notebook',2004,'+13',2.03,'Drama','Nick Cassavetes','Un joven pobre pero apasionado se enamora de una joven rica, dándole una sensación de libertad, pero pronto se separan debido a sus diferencias sociales.','',7.8)
,(456,'Donde la Verdad se Esconde','The Whole Truth',2021,'+16',2.05,'Terror','Wisit Sasanatieng','Cuando dos hermanos tropiezan con un extraño agujero en la pared de la casa de sus abuelos, horribles incidentes revelan siniestros secretos sobre su familia.','',5.1)
;

-- 1
SELECT  titulo,direccion,genero
FROM    peliculas
WHERE   certificado = '+13'
AND     puntuacionIMBD > 5.0
ORDER BY titulo ASC;

-- 2
SELECT  titulo,certificado
FROM    peliculas
WHERE   direccion like 'Juan%'
AND     anio = 2000;

-- 3
SELECT  ISAM,sinapsis
FROM    peliculas
WHERE   tituloOriginal IS NULL;

-- 4
SELECT  avg(puntuacionIMBD) as promedioPuntuacion
FROM    peliculas
WHERE   certificado = 'ATP'
AND     anio < 2010;