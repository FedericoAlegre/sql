 --ejercicio 1
--create  proc cumple_empleados
--(
--@mes int
--)
--as
--select LastName, FirstName 
--from Employees
--where month(BirthDate) = @mes

exec  dbo.cumple_empleados