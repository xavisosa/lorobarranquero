-- Lenguaje SQL - Structured Query Languaje
--               Lenguaje de Consultas Estructurado

-- Un tipo de Base De Datos llamado Relacional
-- NoSQL - No Relacional (JSON JavaScriptObjectNotation)

-- Crear / Modificar / Eliminar                 | Estructuras
-- Consultar / Insertar / Modificar / Eliminar  | Datos

-- Notación de los formatos

-- PALABRAS RESERVADAS: Van a aparecer en Mayúscula
SELECT
DISTINCT
FROM
-- Nombres o palabras de objetos: Minúscula cursiva, estas palabras deberán ser reemplazadas por los nombres definidos.
columna1
columna2
nombretabla
otratabla
-- Barra Vertical (o pipe) |: Indicará la elección de una las opciones que este separando. O una u otra, no ambas.
* Devuelve todos los campos o columnas de una tabla
o defino que campos o columnas quiero mostrar
-- Corchetes [] : Encierra elementos opcionales de la sentencia que pueden tomarse o no.
-- Llaves {} : Encierra elementos obligatorios de la sentencia que siempre deberán de ser especificados.

SELECT [DISTINCT] {* | columna1, [columna2, ...]}
FROM nombretabla, [otratabla, ....]