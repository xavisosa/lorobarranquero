----------+--------------
-- Field  | Type         | Articulos
----------+--------------
-- codigo | int(11)      
-- nombre | varchar(100) 
-- precio | float        
-- fabric | int(11)      
----------+--------------
----------+-------------
-- Field  | Type        | Fabricantes
----------+-------------
-- codigo | int(11)     
-- nombre | varchar(100)

-- Mostrar la cantidad de fabricantes con codigo mayor a 100
SELECT count(*) 
FROM fabricantes
WHERE codigo > 5;
-- Mostrar el precio maximo del articulo cuyo fabric sean 10
SELECT  max(precio) 
FROM    articulos
WHERE   fabric = 10;
-- Mostrar el promedio de los precios de los articulos cuyo nombre comiencen con T
SELECT  avg(precio)
FROM    articulos
WHERE   nombre like 'T%';