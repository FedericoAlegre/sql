A--ejer 9
--Obtener un listado con todos los productos, mostrando para cada producto: 
--el identificador, el nombre y el nombre de la categor�a a la cual pertenece.
--Obtener la cantidad de productos que est�n a la venta actualmente en cada categor�a de producto.

select c.CategoryName,c.CategoryID, count (p.CategoryID ) as cantprod
from dbo.Products p join dbo.Categories c
on p.CategoryID=c.CategoryID
group by c.CategoryID, c.CategoryName


  