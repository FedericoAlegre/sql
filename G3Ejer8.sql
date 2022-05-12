--ejer 8
--Listar los clientes que hicieron órdenes después del 1 de mayo de 1998.

select c.ContactName, o.OrderDate
from dbo.Customers c left join dbo.Orders o
on c.CustomerID=o.CustomerID
where o.OrderDate > '19980501'