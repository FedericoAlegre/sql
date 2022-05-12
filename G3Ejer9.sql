A--ejer 9
--Obtener un listado con todos los productos, mostrando para cada producto: 
--el identificador, el nombre y el nombre de la categoría a la cual pertenece.
--Obtener la cantidad de productos que están a la venta actualmente en cada categoría de producto.

select c.CategoryName,c.CategoryID, count (p.CategoryID ) as cantprod
from dbo.Products p join dbo.Categories c
on p.CategoryID=c.CategoryID
group by c.CategoryID, c.CategoryName


  