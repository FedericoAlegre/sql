
/*Borrar los productos discontinuados.*/

delete [Order Details]
from dbo.Products p  left join [Order Details] o 
on  o.ProductID = p.ProductID
where o.ProductID is null and Discontinued = 1

