--Guia 3

--ejer 1
--�Cu�l es el nombre del cliente que m�s ha gastado en un env�o de �rdenes?

use Northwind

select top 1 c.ContactName, o.Freight
from dbo.Customers c join dbo.Orders o
on c.CustomerID=o.CustomerID
order by o.Freight desc

