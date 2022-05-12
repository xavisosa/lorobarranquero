-- Query -> Consultas
-- Palabras Claves -> Select, from, where, and, or, not, in, between
-- Query
-- SELECT * | campos
-- FROM tabla
-- WHERE campo = valor

-- Mostrar todos los datos de los Elementos
SELECT *
FROM elementos

-- Mostrar el numero atomico, simbolo y nombre de los elementos
SELECT nroAtomico, simbolo, nombre
FROM elementos

-- Mostrar la densidad, nombre y año de Descubrimeinto de los elem
SELECT densidad, nombre, añoDescubrimiento
FROM elementos

-- Mostrar el id, nombre y los punto fusión y ebullisón de los elem
SELECT idElemento, nombre, puntoFusion, puntoEbullision
FROM elementos

-- Mostrar el nombre y simbolo del elemento cuyo nro atomico sea 10
SELECT nombre, simbolo
FROM elemento
WHERE nroAtomico = 10  -- Busqueda exacta

-- Mostrar los datos de los elementos cuya densidad sea menor a 5
SELECT *
FROM elementos
WHERE densidad < 5  -- filtrar

-- Mostrar los datos de los elementos que sean de numero atomico 5,6 y 10
SELECT *
FROM elementos
WHERE nroAtomico IN (5,6,10)  -- Filtrar por 5-6-10

SELECT *
FROM elementos
WHERE nroAtomico = 5 or nroAtomico = 6 or nroAtomico = 10

-- Mostrar los datos de los elementos que no sean de numero atomico 5,6 y 10
SELECT *
FROM elementos
WHERE nroAtomico NOT IN (5,6,10)  -- Descartar 5-6-10

SELECT *
FROM elementos
WHERE nroAtomico <> 5 or nroAtomico <> 6 or nroAtomico <> 10

-- Mostrar los datos de los elementos que la densidad sea entre 10 y 80
SELECT *
FROM elementos
WHERE densidad > 10 and densidad < 80

SELECT *
FROM elementos
WHERE densidad BETWEEN 10 and 80