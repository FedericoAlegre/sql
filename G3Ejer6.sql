--ejer 6
--Buscar todos los productos que tengan el mismo precio unitario que 
--el producto "Sir Rodney's Scones".
 
 --con subconsultas 
select p.ProductName, p.UnitPrice
from dbo.Products p join dbo.Products c1
on p.ProductID=c1.ProductID
where p.UnitPrice = (select p2.UnitPrice from dbo.Products p2 where p2.ProductName like 'Sir Rodney%'+'%s%'+ '%Scones') 

 --sin subconsultas
select p2.ProductName,p2.UnitPrice 
from dbo.Products p1 join dbo.Products p2
on p1.UnitPrice = p2.UnitPrice
where p1.ProductName like 'Sir Rodney%s Scones'