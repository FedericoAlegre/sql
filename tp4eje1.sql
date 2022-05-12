
/*Consulte por los productos cuyo precio unitario se encuentren entre los 18 y 25 pesos.*/


select ProductName, UnitPrice
from Products
where UnitPrice between 18 and 25