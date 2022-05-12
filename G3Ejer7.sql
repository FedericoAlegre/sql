--ejer 7
--Listar cuanto ha vendido cada empleado.

use northwind

select e.EmployeeID, e.LastName, sum (od.UnitPrice*od.Quantity) as TotalVendido 
from dbo.Employees e left join dbo.Orders o join [dbo.Order Details] od
on od.OrderID=o.OrderID
on e.EmployeeID=o.EmployeeID
group by e.EmployeeID, e.LastName