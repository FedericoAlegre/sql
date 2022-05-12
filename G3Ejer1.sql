--Guia 3

--ejer 1
--¿Cuál es el nombre del cliente que más ha gastado en un envío de órdenes?

use Northwind

select top 1 c.ContactName, o.Freight
from dbo.Customers c join dbo.Orders o
on c.CustomerID=o.CustomerID
order by o.Freight desc

