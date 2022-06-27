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
    ,puntuacionIMBD DOUBLE       DEFAULT 1.0
);

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