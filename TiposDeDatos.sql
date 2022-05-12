-- Tipos de Datos

-- Tipo     | Python            | SQL
-------------------------------------------------------------------------------
-- Texto    | String(str)       | VARCHAR(255) *
--          |                   | CHAR(2) *
--          |                   | DATETIME * 'dd-mm-aaaa hh:mm:ss'
--          |                   | DATE
--          |                   | TIME
-- Números  | Integer(int)      | INT *
--          |                   | SMALLINT *
--          |                   | TINYINT
--          | Float(float)      | FLOAT(m,d)       40.456789   (m,d) == (2,6)   
--          |                   | DECIMAL
--          |                   | MONEY *
--          |                   | DOUBLE *
--          | Complejos(complex)| 
-- Lógicos  | Booleanos(bool)   | BIT *         0 False | 1 True


-- Operadores de comparación
-- Tipo             | Python            | SQL
-------------------------------------------------------------------------------
-- Igual            | ==                | =
-- Distinto         | !=                | <>
-- Mayor            | >                 | >
-- Menor            | <                 | <
-- Mayor o igual que| >=                | >=
-- Menor o igual que| <=                | <=
-- Negar            | NOT               | NOT

-- En un conjunto   | IN                | IN
-- No esta en conj  | NOT IN            | NOT IN

-- Y                | and               | AND
-- O                | or                | OR

-- Rangos           | > 40 and < 50     | > 40 and < 50  -- 41 y 49
-- Rangos           | >= 40 and <= 50   | >= 40 and <= 50  -- 40 y 50  
-- Rangos           |                   | BETWEEN


SELECT idPais, nombre, continente, republica
FROM paises
WHERE idPais = 10 and idPais = 30 and idPais = 50 and idPais = 70 
          V       y      V        y      V       y       V         =

AND Y
V y V = V
V y F = F