
--CREATE TABLE Tecnologia
--(
--	idTecnologia INT NOT NULL IDENTITY(1,1),
--	nombreTecnologia VARCHAR(50) NOT NULL
--	PRIMARY KEY (idTecnologia)	
--)

--CREATE TABLE Curso
--(
--	idCurso INT NOT NULL IDENTITY(1,1),
--	idTecnologia INT,
--	nombreCurso VARCHAR(50) NOT NULL,
--	fechaDeInicio DATETIME,
--	fechaDeFin DATETIME,
--	cantidadAlumnos INT,
--	PRIMARY KEY (idCurso),
--	FOREIGN KEY (idTecnologia) REFERENCES Tecnologia(idTecnologia)
--)

--INSERT INTO Tecnologia(nombreTecnologia) VALUES ('.NET')
--INSERT INTO Tecnologia(nombreTecnologia) VALUES ('POO')
--INSERT INTO Tecnologia(nombreTecnologia) VALUES ('POO')
--select * 
--from Tecnologia


--INSERT INTO Curso(idTecnologia, nombreCurso, fechaDeInicio, fechaDeFin, cantidadAlumnos) VALUES (1, 'C#', '2022-03-01', '2022-05-01', 20)
--INSERT INTO Curso(idTecnologia, nombreCurso, fechaDeInicio, fechaDeFin, cantidadAlumnos) VALUES (2, 'JAVA', '2022-04-01', '2022-06-01', 20)
--INSERT INTO Curso(idTecnologia, nombreCurso, fechaDeInicio, fechaDeFin, cantidadAlumnos) VALUES (3, 'C++', '2022-03-01', '2022-05-01', 20)

select * 
from Curso c join  Tecnologia t
on c.idTecnologia = t.idTecnologia
order by idCurso desc



create view [Ver fechas de inicio]
as
select idCurso, nombreCurso, fechaDeInicio
from Curso c join  Tecnologia t
on c.idTecnologia = t.idTecnologia

select * from [Ver fechas de inicio]

create  proc [Ver fecha de inicio]
(
@curso varchar(50)
)
as
select idCurso, nombreCurso, fechaDeInicio
from Curso c 
where c.nombreCurso = @curso

exec [Ver fecha de inicio] @curso = 'C#'

