-- 1
-- Mostrar los artículos con precio mayor a 100
SELECT nombre, codigo, precio, stock
FROM  articulos
WHERE  precio> 100;

-- 2
-- Mostrar los artículos con precio entre 20 y 40 (usar < y >)
    SELECT nombre, codigo, precio, stock
    FROM articulos
    WHERE precio>20 
    and precio<40;
-- 3
-- Mostrar los artículos con precio entre 40 y 60 (usar BETWEEN)
    SELECT nombre, codigo, precio, stock
    FROM articulos
    WHERE precio>40
    and precio<60;
-- 4
-- Mostrar los artículos con precio = 20 y stock mayor a 30
    SELECT *
    FROM Articulos
    WHERE precio = 20
    and stock>30;
-- 5
-- Mostrar los artículos con precio (12,20,30) no usar IN
    SELECT *
    FROM articulos 
    WHERE precio = 12 
    and precio = 20
    and precio = 30;  
-- 6
-- Mostrar los artículos con precio (12,20,30) usar el IN
     SELECT *
     FROM articulos
     WHERE precio in (12,20,30);
-- 7
-- Mostrar los artículos que su precio no sea (12,20,30)
     SELECT *
     FROM articulos
     WHERE precio in not (12,20,30)
-- 8
-- Listar los artículos ordenados por precio de mayor a menor, 
-- y si hubiera precio iguales deben quedar ordenados por nombre.
     SELECT *
     FROM articulos
     order by precio desc, nombre asc
-- 9
-- Listar todos los artículos incluyendo una columna denominada
-- precio con IVA, la cual deberá tener el monto con el iva del producto.
     SELECT *, precio*1.21  as precioIVA 
     FROM articulos 
-- 10
-- Listar todos los artículos incluyendo una columna denominada 
-- “cantidad de cuotas” y otra “valor de cuota”, la cantidad es fija 
-- y es 3, el valor de cuota corresponde a 1/3 del monto con un 5% de interés.
     SELECT*,3  as cantidaddecuotas, 1/3 as valordecuota, 5% as monto 
     FROM articulos