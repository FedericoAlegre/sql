CREATE TABLE Proveedor (
Id INTEGER PRIMARY KEY NOT NULL,
Nombre CHAR(50) NOT NULL
);
CREATE TABLE Producto (
Id INTEGER PRIMARY KEY NOT NULL,
Nombre CHAR(50) NOT NULL ,
Precio numeric(15,2) NOT NULL ,
ProveedorId INTEGER NOT NULL
CONSTRAINT fk_Proveedor_Producto REFERENCES Proveedor(Id)

);

INSERT INTO Proveedor(Id,Nombre) VALUES(1,'Sony');
INSERT INTO Proveedor(Id,Nombre) VALUES(2,'Creative Labs');
INSERT INTO Proveedor(Id,Nombre) VALUES(3,'Hewlett-Packard');
INSERT INTO Proveedor(Id,Nombre) VALUES(4,'Iomega');
INSERT INTO Proveedor(Id,Nombre) VALUES(5,'Fujitsu');
INSERT INTO Proveedor(Id,Nombre) VALUES(6,'Winchester');
INSERT INTO Proveedor(Id,Nombre) VALUES(7,'Bose');
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(1,'Hard
drive',240,5);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId)
VALUES(2,'Memory',120,6);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(3,'ZIP
drive',150,4);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(4,'Floppy
disk',5,6);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId)
VALUES(5,'Monitor',240,1);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(6,'DVD
drive',180,2);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(7,'CD
drive',90,2);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId)
VALUES(8,'Printer',270,3);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(9,'Toner
cartridge',66,3);
INSERT INTO Producto(Id,Nombre,Precio,ProveedorId) VALUES(10,'DVD
burner',180,2);

--1
select Nombre
from Producto 

--2
select Nombre, Precio
from Producto 

--3
select Nombre
from Producto 
where Precio <= 200

--4
select Nombre
from Producto 
where Precio < 120 and Precio > 60

--5
select Nombre, (Precio*100) as [Precio en centavos]
from Producto

--6
select AVG(Precio) as [Precio Promedio]
from Producto

--7
select AVG(o.Precio) as [AVG proveedor2]
from Producto o join Proveedor p
on o.ProveedorId = p.Id
where p.Id = 2

--8
select count(Nombre) as [cant. Productos con precio >=180]
from Producto 
where Precio >= 180

--9
select Nombre, Precio 
from Producto 
where Precio >= 180
--order by Precio desc
order by Nombre

--10
select *
from Producto P join Proveedor o
on p.ProveedorId = o.Id

--11
select p.Nombre, p.Precio, o.Nombre
from Producto P join Proveedor o
on p.ProveedorId = o.Id

--12
select p.Id, AVG(o.Precio) as [AVG proveedor]
from Producto o join Proveedor p
on o.ProveedorId = p.Id
group by p.Id

--13
select p.Nombre, AVG(o.Precio) as [AVG proveedor]
from Producto o join Proveedor p
on o.ProveedorId = p.Id
group by p.Nombre

--14
select p.Nombre 
from Producto o join Proveedor p
on o.ProveedorId = p.Id
group by p.Nombre
having avg(o.Precio)>=150

--15
select top 1 Nombre, Precio
from Producto
order by Precio

--16
SELECT A.Nombre, A.Precio, F.Nombre
FROM Producto A, Proveedor F
WHERE A.ProveedorId = F.Id
AND A.Precio =
(
SELECT MAX(A.Precio)
FROM Producto A
WHERE A.ProveedorId = F.Id
);

