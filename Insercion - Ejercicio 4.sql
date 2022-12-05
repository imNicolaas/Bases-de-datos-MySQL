--Insercion tablas ejercicios 4
use Institucion_Educativa;

insert into Departamento(codigo_departamento, nombre , director ,subdirector, ubicacion) values(235235 ,'Gestiones Humanas', 'Pepe Gualtero', 'Estaban pinilla', 'Bogota')
insert into Departamento(codigo_departamento, nombre , director ,subdirector, ubicacion) values(567567 ,'Administracion general', 'Antonio Marroqui', 'Cesar Londoño', 'Bogota')
insert into Departamento(codigo_departamento, nombre , director ,subdirector, ubicacion) values(678456 ,'Secretaria General', 'Sebastian felipe',  'Marcela Gutierrez', 'Bogota')
insert into Departamento(codigo_departamento, nombre , director ,subdirector, ubicacion) values(56234 ,'Limpieza y mantenimiento', 'Camilo Gutierrez', 'Felipe Sterling', 'Bogota')
insert into Departamento(codigo_departamento, nombre , director ,subdirector, ubicacion) values(67342 ,'Bellas artes', 'Sara lopez', 'Petr Yan', 'Bogota')
select * from Departamento;

insert into Centro(codigo_centro ,nombre_centro ,direccion) values( 4124 ,'Crisanto Luque', 'Cra 10 # 19 – 64, Cl. 20 ## 9-45')
insert into Centro(codigo_centro ,nombre_centro ,direccion) values( 1234 ,'Crisanto Luque', 'Cra 10 # 19 – 64, Cl. 20 ## 9-45')
insert into Centro(codigo_centro ,nombre_centro ,direccion) values( 5678 ,'Crisanto Luque', 'Cra 10 # 19 – 64, Cl. 20 ## 9-45')
insert into Centro(codigo_centro ,nombre_centro ,direccion) values( 6785 ,'Crisanto Luque', 'Cra 10 # 19 – 64, Cl. 20 ## 9-45')
insert into Centro(codigo_centro ,nombre_centro ,direccion) values( 4577 ,'Crisanto Luque', 'Cra 10 # 19 – 64, Cl. 20 ## 9-45')
select * from Centro;

insert into Cargo(codigo_cargo, decripcion, salario) values( 234234,'Humanidades basicas', 2234000)
insert into Cargo(codigo_cargo, decripcion, salario) values( 234432,'Administracion de recursos internos', 2400000)
insert into Cargo(codigo_cargo, decripcion, salario) values( 45646, 'Gestion de documentos legales', 2100000)
insert into Cargo(codigo_cargo, decripcion, salario) values( 78998, 'Aseo y mantenimiento interno de las instalaciones', 1900000)
insert into Cargo(codigo_cargo, decripcion, salario) values( 675756,'promotor de la musica y las bellas artes', 2340000)
select * from Cargo;


insert into Profesor(codigo_profesor, nombre, direccion, telefono, email, cedula, modulo, categoria, dedicacion, salario, genero, fecha_nacimiento, lugar_nacimiento, estrato, estado_civil, comorbilidades, idiomas, EPS, fecha_ingreso, RH, codigo_departamento, codigo_centro) values( 234678 ,'Steiner Padilla', 'Cra 79f #34 -34' ,3456789,  'steiner.p@gmail.com', 151553543, 2, 'Asesoria privada',      'Docente',    2234000, 'Masculino' ,'7-12-1993',    'Bogota DC', 3, 'Soltero',      'No', 'Español',           'Famisanar', '12-11-2000', 'O+', 235235, 4124)
insert into Profesor(codigo_profesor, nombre, direccion, telefono, email, cedula, modulo, categoria, dedicacion, salario, genero, fecha_nacimiento, lugar_nacimiento, estrato, estado_civil, comorbilidades, idiomas, EPS, fecha_ingreso, RH, codigo_departamento, codigo_centro) values( 678456 ,'Luis Suares'    , 'Cra 23 #34 - 65' , 2346434, 'luis.s@gmail.com',    345345345, 4, 'Docencia instructiva', 'Profesor',    2400000, 'Masculino' ,'6-12-1999',    'Bogota DC', 2, 'Casado',       'No', 'Español / Ingles',  'Compensar',  '7-23-2008', 'A-', 567567, 1234)
insert into Profesor(codigo_profesor, nombre, direccion, telefono, email, cedula, modulo, categoria, dedicacion, salario, genero, fecha_nacimiento, lugar_nacimiento, estrato, estado_civil, comorbilidades, idiomas, EPS, fecha_ingreso, RH, codigo_departamento, codigo_centro) values( 890345 ,'Pepe Ardila'    ,  'Cra 12 #78 - 45', 6788734, 'pepe.a@gmail.com',      7989678, 3, 'Docencia tutorica',       'tutor',    2100000, 'Masculino' ,'12-18-1987',    'Medellin', 4, 'Union Libre',  'No', 'Español',            'Colsalud',  '3-14-2004', 'A+', 678456, 5678)
insert into Profesor(codigo_profesor, nombre, direccion, telefono, email, cedula, modulo, categoria, dedicacion, salario, genero, fecha_nacimiento, lugar_nacimiento, estrato, estado_civil, comorbilidades, idiomas, EPS, fecha_ingreso, RH, codigo_departamento, codigo_centro) values( 567345 ,'Juan Sosa'      , 'Cra 78 #89 - 34' , 4568723, 'juan.s@gamil.com',    345345354, 5, 'Docencia instructiva', 'profesor',    1900000, 'Masculino' ,'12-22-1992',   'Bogota DC', 3,  'Soltero',     'No', 'Español',           'Compensar',   '1-2-2011', 'O+',  56234, 6785)
insert into Profesor(codigo_profesor, nombre, direccion, telefono, email, cedula, modulo, categoria, dedicacion, salario, genero, fecha_nacimiento, lugar_nacimiento, estrato, estado_civil, comorbilidades, idiomas, EPS, fecha_ingreso, RH, codigo_departamento, codigo_centro) values( 123879 ,'Maria Lopez',      'Cra 45 #34 - 67', 4563456, 'maria.l@gmail.com',     6786967, 6, 'Docencia instructiva', 'docente'    , 2340000, 'Femenino'  , '7-14-1982', 'Cundinamarca', 3, 'Soltera',     'No', 'Español',           'Compensar',   '4-6-2009', 'O+',  67342, 4577)
select * from Profesor;

insert into Personal(codigo_personal ,nombre_personal ,direccion ,telefono ,email ,unidad_administrativa ,categoria_profesional ,cedula ,modulo ,genero ,profesion ,dedicacion ,fecha_nacimiento ,lugar_nacimiento ,estrato ,estado_civil ,comorbilidades ,idiomas ,EPS ,fecha_ingreso ,RH, codigo_cargo, codigo_departamento) values( 23567, 'Juana Suarez', 'Cra 74 #34 - 56', 321123, 'juana.s@gmail.com', 'Resursos humanos', 'Resursos humanos', 124124423, 23,             'Femenino', 'Desarrollo de talento', 'Atencion humana',                 '7-22-1998', 'Bogota', 3, 'Soltera', 'No', 'Español', 'Famisanar', '7-6-2018', 'O+', 234234, 235235 )
insert into Personal(codigo_personal ,nombre_personal ,direccion ,telefono ,email ,unidad_administrativa ,categoria_profesional ,cedula ,modulo ,genero ,profesion ,dedicacion ,fecha_nacimiento ,lugar_nacimiento ,estrato ,estado_civil ,comorbilidades ,idiomas ,EPS ,fecha_ingreso ,RH, codigo_cargo, codigo_departamento) values( 456345 ,'Pepe Rodriguez', 'Cra 56 #34 34', 324235, 'pepe.r@gmail.com', 'Secretario general', 'Administracion de empresas', 245452352, 45, 'Masculino', 'Administracion de empresas',  'Secretaria interna',      '12-23-1992', 'Bogota', 2, 'Casado', 'No', 'Español', 'Famisanar', '7-5-2004', 'O+',234432, 567567 )
insert into Personal(codigo_personal ,nombre_personal ,direccion ,telefono ,email ,unidad_administrativa ,categoria_profesional ,cedula ,modulo ,genero ,profesion ,dedicacion ,fecha_nacimiento ,lugar_nacimiento ,estrato ,estado_civil ,comorbilidades ,idiomas ,EPS ,fecha_ingreso ,RH, codigo_cargo, codigo_departamento) values( 345239 ,'Juan Estrada', 'Cra 45 #57 67',   346654, 'juan.e@gmail.com', 'Administracion', 'Administracion de empresas', 234132413, 34, 'Masculino', 'Administracion de empresas',  'Administracion de empresas',  '8-11-1990', 'Bogota', 3, 'Union Libre', 'No', 'Español', 'Colsalud', '7-12-2017', 'A-',45646, 678456 )
insert into Personal(codigo_personal ,nombre_personal ,direccion ,telefono ,email ,unidad_administrativa ,categoria_profesional ,cedula ,modulo ,genero ,profesion ,dedicacion ,fecha_nacimiento ,lugar_nacimiento ,estrato ,estado_civil ,comorbilidades ,idiomas ,EPS ,fecha_ingreso ,RH, codigo_cargo, codigo_departamento) values( 456457 ,'Juan Bolaños',  'Cra 23# 78 90', 234542, 'juan.b@gmail.com', 'Aseo genral', 'Gestion de espacios', 235235235, 23,             'Masculino', 'no', 'Aseo profesional',                                     '12-4-1988', 'Bogota', 2, 'Casado', 'No', 'Español', 'Compensar', '4-24-2016', 'A+',78998, 56234 )
insert into Personal(codigo_personal ,nombre_personal ,direccion ,telefono ,email ,unidad_administrativa ,categoria_profesional ,cedula ,modulo ,genero ,profesion ,dedicacion ,fecha_nacimiento ,lugar_nacimiento ,estrato ,estado_civil ,comorbilidades ,idiomas ,EPS ,fecha_ingreso ,RH, codigo_cargo, codigo_departamento) values( 345665 ,'Adrian Perez', 'Cra45 # 56 56',  546566, 'adrian.p@gmail.com', 'banda marcial', 'Bellas artes',    235234438, 45,              'Masculino', 'Artes escenicas', 'Musico',                                  '1-4-2000', 'Bogota', 2, 'Casado', 'No', 'Español', 'Colsalud', '7-4-2001', 'O+',675756, 67342)
select * from Personal;

insert into Alumno(Numero_de_expediente, nombre_alumno, direccion , telefono, email ,titulacion ,cedula ,genero ,jornada ,fecha_nacimiento ,lugar_nacimiento ,estrato ,estado_civil ,comorbilidades ,idiomas ,EPS ,fecha_ingreso ,RH , codigo_centro) values(4566, 'Cesar Garcia', 'Cra 45 # 45 45', 3453456, 'cesar.g@gmail.com', 'Ingenieria de sistemas', '234234243',           'Masculino', 'Mañana', '7-12-2001', 'Bogota', '3', 'Soltero',       'no', 'Español', 'Famisanar', '8-3-2018', 'O+', 4124 )
insert into Alumno(Numero_de_expediente, nombre_alumno, direccion , telefono, email ,titulacion ,cedula ,genero ,jornada ,fecha_nacimiento ,lugar_nacimiento ,estrato ,estado_civil ,comorbilidades ,idiomas ,EPS ,fecha_ingreso ,RH , codigo_centro) values(7896 ,'David Londoño',  'Cra 45 # 67 23',  3463465, 'david.l@gmail.com', 'Ingenieria de sistemas', '45645635',          'Masculino', 'Noche', '4-23-2000', 'Barranquilla', '3', 'Soltero', 'no', 'Español', 'Compensar', '6-23-2019', 'O+', 1234 )
insert into Alumno(Numero_de_expediente, nombre_alumno, direccion , telefono, email ,titulacion ,cedula ,genero ,jornada ,fecha_nacimiento ,lugar_nacimiento ,estrato ,estado_civil ,comorbilidades ,idiomas ,EPS ,fecha_ingreso ,RH , codigo_centro) values(2344 ,'Austin Vegas', 'Cra 34 # 78 23', 6786787, 'austin.v@gmail.com', 'Ingenieria de sistemas', '45636364',           'Masculino', 'Mañana', '7-1-2001', 'Cucuta'        ,'3', 'Soltero', 'no', 'Español', 'Colsalud', '9-13-2019', 'A-', 5678 )
insert into Alumno(Numero_de_expediente, nombre_alumno, direccion , telefono, email ,titulacion ,cedula ,genero ,jornada ,fecha_nacimiento ,lugar_nacimiento ,estrato ,estado_civil ,comorbilidades ,idiomas ,EPS ,fecha_ingreso ,RH , codigo_centro) values(5677 ,'Israel Coto', 'Cra 34 # 89 12', 234234, 'israel.c@gmail.com', 'tecnico en desarrollo de software', '678686786', 'Masculino', 'Mañana', '6-13-1998', 'Bogota',       '2', 'Soltero', 'no', 'Español', 'Compensar', '6-23-2020', 'A+', 6785 )
insert into Alumno(Numero_de_expediente, nombre_alumno, direccion , telefono, email ,titulacion ,cedula ,genero ,jornada ,fecha_nacimiento ,lugar_nacimiento ,estrato ,estado_civil ,comorbilidades ,idiomas ,EPS ,fecha_ingreso ,RH , codigo_centro) values(1233 ,'Floyd Quintana', 'Cra 23# 34 89', 467656, 'money@gmail.com', 'Ingenieria de sistemas', '234124324',             'Masculino', 'Mañana', '9-3-1999', 'Bogota',        '3', 'union libre', 'no', 'Español', 'Compensar', '9-4-2016', 'O-', 4577 )
select * from Alumno;

select nombre_alumno from Alumno; -- Consultar solo nombres o cualquier valor de la tabla

select Numero_de_expediente, fecha_ingreso from Alumno;

select * from Alumno where nombre_alumno = 'Floyd Quintana'; --Mostrar todos los atributos de la tabla si coincide con el nombre

select * from Alumno where email = 'cesar.g@gmail.com'; -- Correo

select nombre_alumno, Numero_de_expediente, estrato from Alumno where estrato > 2;--- muestra solo los atributos selecionados de los alumnos con estrato mayor a 2

select * from Alumno where nombre_alumno <> 'Austin Vegas'; -- Muestra todos los registros que sean diferentes <> a Austin Vegas  

select nombre_alumno, direccion, titulacion, jornada, EPS from Alumno where Numero_de_expediente = 5677; -- Mostrar atributos seleccionados si cumple con los requisitos de Numero_de_expediente 

select * from Personal where id_personal >=1 and id_personal <=3 -- muestra solo las id mayores o iguales a 1 y menores o iguales a 3 

select * from Personal where id_personal =1 or id_personal = 3 or id_personal = 5 -- selecciona solo los registros con ids 1, 3 y 5 ya que se cumplen una condicion ó otra

select * from Personal order by estrato asc -- muestra los registros ordenados por el estrato de mayor a menor 

select * from Personal where email in ('adrian.p@gmail.com') -- selecciona el campo donde el emalil sea el correcto 

select * from Personal where genero like ('mascu%') -- muestra los campos donde la columna genero empieze por "mascu"

select * from Personal where categoria_profesional like('%empresas')-- muestra llos campos donde la categoria profesional termine en empresas

select * from Profesor where estado_civil like ('%ter%')-- muestra los regostros que tengan "ter" en el contenido

select * from Profesor where lugar_nacimiento like ('B_______C')-- muestra los regostros que empiezen econ B y terminen en C

select * from Profesor where modulo between 2 and 5 -- Muestra los modulos entre 2 y 5

select  distinct estrato from Profesor -- Muestra los estratos diferentes de la tabla

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------- CONSULTAS SELECT AVANZADO ----------------------------
select * from Alumno
select * from Cargo
select * from Centro
select * from Departamento
select * from Personal
select * from Profesor 

---------------------------------------------------------------------------------------------------------------------------------------
----- CONSULTA #1
select Alumno.nombre_alumno,
       centro.nombre_centro,
	   Profesor.nombre as Docente
	   
from Alumno, Centro, Profesor
where Alumno.id_alumno = 5 and Centro.codigo_centro = 4577 and Profesor.codigo_profesor = '123879'
---------------------------------------------------------------------------------------------------------------------------------------
----- CONSULTA #2
Select Alumno.id_alumno, 
       Cargo.decripcion,
	   Centro.codigo_centro,
	   Departamento.director,
	   Personal.EPS,
	   Profesor.dedicacion

from Alumno, Cargo, Centro, Departamento, Personal, Profesor
where Alumno.id_alumno > 4 and Cargo.decripcion like ('Humanidades%') and Centro.nombre_centro in ('Crisanto Luque') and Departamento.ubicacion like ('%Bogo%') and Personal.comorbilidades in ('No') and Profesor.codigo_profesor = 678456
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----- SELECT #3
select Alumno.nombre_alumno,
       Alumno.jornada,
	   Centro.nombre_centro,
	   Profesor.nombre
from Alumno, Centro, Profesor
where Alumno.id_alumno = 3 and Profesor.id_profesor >=1 and Profesor.id_profesor <=5 
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----- SELECT #4
select Alumno.nombre_alumno,
       Alumno.email,
	   Alumno.direccion,
	   Alumno.EPS
from   Alumno
where  Alumno.id_alumno >=1 and Alumno.id_alumno <=5 
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----- SELECT #5
select Profesor.nombre,
	   Profesor.categoria,
	   Profesor.modulo,
	   Profesor.email,
	   Profesor.EPS,

	   Centro.nombre_centro,
	   Centro.direccion,
	   Centro.codigo_centro


from   Profesor, Centro
where  Profesor.id_profesor>=1 and Profesor.id_profesor <=5 and Centro.id_centro = Profesor.id_profesor;
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----- SELECT #6
select Personal.nombre_personal,
       Personal.codigo_personal,
       Personal.email,
	   Personal.unidad_administrativa,
	   Personal.fecha_ingreso
from   Personal
where Personal.id_personal >=1 and Personal.id_personal <=5
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----- SELECT #7
select a.id_personal,
       a.nombre_personal,
       a.codigo_personal,
       a.dedicacion as dedicacion_del_aspirante,
	   a.genero,
	   a.RH,

	   b.decripcion as descripcion_del_cargo_a_ocupar,
	   b.salario 
from Personal a, Cargo b
where a.id_personal >=1 and a.id_personal <=5 and b.id_cargo = a.id_personal	   

----------------------------------------------------------------------------------------------------------------------------------------------------------------
--- BORRADO y UPDATE DE TABLAS DE TABLAS ---
----------------------------------------------------------------------------------------------------------------------------------------------------------------
----- #1
drop table Alumno; -- Eliminar tabla Alumno

----- #2
select * from Cargo
update Cargo set salario = 2320000 where id_cargo = 3
select * from Cargo

----- #3
select * from Alumno
update Alumno set nombre_alumno = 'Israel Coto Alvarez' where id_alumno = 4
select * from Alumno

----- #4
select * from Centro
update Centro set codigo_centro = 412424 where id_centro = 1
select * from Centro

-----#5
select * from Departamento
update Departamento set nombre = 'Artes y Bellas Artes' where id_departamento = 5 
select * from Departamento

-----#6
select * from Personal
update personal set categoria_profesional = 'Gestion de espacios internos' where id_personal = 4
select * from Personal

-----#7
select * from Profesor
update Profesor set salario = 2224000 where id_profesor = 2
select * from Profesor
----------------------------------------------------------------------------------------------------------------------------------------------------------------
--- JOINS ---
--- Borrar un registro de cada tabla para evidenciar el funcionamiento de los joins 

select * from Alumno order by id_alumno asc
select * from Cargo order by id_cargo asc
select * from Centro order by id_centro  asc
select * from Departamento order by id_departamento asc
select * from Personal order by id_personal asc
select * from Profesor order by id_profesor asc

delete from Alumno where id_alumno = 1
delete from Cargo where  id_cargo = 2
delete from Centro where id_centro = 3
delete from Departamento where id_departamento  = 4
delete from Personal where id_personal = 5
delete from Profesor where id_profesor = 1

EXEC sp_msforeachtable "ALTER TABLE ? NOCHECK CONSTRAINT ALL"; -- se desactivan las llaves para poder borrar la informacion

EXEC sp_msforeachtable "ALTER TABLE ? WITH CHECK CHECK CONSTRAINT ALL"; -- Se activan las llavez nuevamente para evitar borrados accidentales 

--------------------------------------------------------------------------------------------------------------------------------
----- #1 INNER JOIN
use Institucion_Educativa
select * from Alumno  --- La tabla de alumno sale en rojo por que esta muy abajo del query
select * from Centro 
select Alumno.numero_de_expediente, Alumno.nombre_alumno, Alumno.email, Alumno.titulacion, Alumno.jornada, Alumno.fecha_ingreso, Centro.codigo_centro, Centro.nombre_centro, Centro.direccion, Alumno.id_alumno, centro.id_centro 
from Alumno  inner join Centro
on Alumno.codigo_centro = Centro.codigo_centro
--------------------------------------------------------------------------------------------------------------------------------
----- #2 LEFT JOIN
select * from Personal 
select * from Cargo
select Personal.nombre_personal, Personal.email, Personal.unidad_administrativa, Personal.fecha_ingreso, Cargo.id_cargo, Cargo.codigo_cargo, Cargo.decripcion
from Personal left join Cargo 
on Cargo.codigo_cargo = Personal.codigo_cargo
--------------------------------------------------------------------------------------------------------------------------------
----- #3 RIGHT JOIN
select * from Profesor
select * from Centro
select Profesor.nombre, Profesor.telefono, Profesor.dedicacion, Centro.nombre_centro, Centro.codigo_centro, Centro.id_centro
from Profesor right join Centro -- Al ser un join por derecha le da prioridad a la tabla de la derecha para empezar a comparar y asi imprimir la tabla final 
on Profesor.codigo_centro = centro.codigo_centro
--------------------------------------------------------------------------------------------------------------------------------
----- #4 FULL OUTER JOIN
select * from Departamento 
select * from Personal
select Departamento.codigo_departamento, Departamento.nombre, Departamento.director, Departamento.ubicacion, Personal.nombre_personal, Personal.categoria_profesional, Personal.cedula
from Departamento FULL OUTER JOIN Personal
on Departamento.codigo_departamento = Personal.codigo_departamento
--------------------------------------------------------------------------------------------------------------------------------
----- #5 INNER JOIN 
select * from Profesor
select * from Departamento
select Profesor.id_profesor, Profesor.nombre, Profesor.codigo_profesor, Profesor.dedicacion, Departamento.nombre, Departamento.codigo_departamento, Departamento.director
from Profesor inner join Departamento
on Profesor.codigo_departamento = Departamento.codigo_departamento
--------------------------------------------------------------------------------------------------------------------------------
----- #6 INNER JOIN
select * from Alumno
select * from Centro
select Alumno.nombre_alumno, ALumno.Numero_de_expediente, Centro.direccion
from Alumno inner join Centro
on Alumno.codigo_centro = Centro.codigo_centro
--------------------------------------------------------------------------------------------------------------------------------
----- #7 LEFT JOIN
select * from Personal
select * from Departamento
select Personal.nombre_personal, Personal.codigo_personal, Departamento.nombre, Departamento.ubicacion
from Personal left join Departamento
on Personal.codigo_departamento = Departamento.codigo_departamento

--------------------------------------------------------------------------------------------------------------------------------
---------- CLAUSULAS MATEMATICAS ----------
--------------------------------------------------------------------------------------------------------------------------------
--- #1 COUNT
select * from Alumno
select count(numero_de_expediente) as total_de_expedientes
from Alumno

--------------------------------------------------------------------------------------------------------------------------------
--- #2 SUM
select * from Cargo
select sum(salario) as total_a_devengar_por_salarios
from Cargo

--------------------------------------------------------------------------------------------------------------------------------
--- #3 AVG
select * from Profesor
select avg(estrato) as promedio_de_estrato
from Profesor 
--------------------------------------------------------------------------------------------------------------------------------
--- #4 MAX
select * from Departamento
select max(id_departamento) as id_maxima_departamento
from Departamento
where id_departamento !=5
--------------------------------------------------------------------------------------------------------------------------------
--- #4 MIN
select * from Personal
select min(modulo) as modulo_minimo
from Personal
where id_personal != 1
--------------------------------------------------------------------------------------------------------------------------------
--- #5 VAR
select * from Profesor
select var(modulo) as media_de_modulo
from Profesor 
--------------------------------------------------------------------------------------------------------------------------------
--- #6 MIN
select * from Alumno
select min(fecha_nacimiento)as fecha_minima
from Alumno
--------------------------------------------------------------------------------------------------------------------------------
--- #7 AVG

select * from Personal
select max(fecha_ingreso) as fecha_de_ingreso_mas_reciente
from Personal

--------------------------------------------------------------------------------------------------------------------------------
--- #8 COUNT
select * from Alumno
select count(titulacion)as total_registros_ingenieria_de_sistemas
from Alumno
where titulacion = 'Ingenieria de sistemas' -- Cuenta los registros que estan estudiando ingenieria de sistemas 









-- uso de --> delete -- truncate -- y drop

use PRUEBA_POTO;

select * from Centro_poto

select * from Alumno_poto

delete from Alumno_poto where id_alumno = 1 -- Remueve un registro pero si tenia un atributo autonumerico no elimina su posicion es decir que el siguiente registro seguira desde el siguiente al eliminado
truncate table Alumno_poto  -- Elimina todos los registros de la tabla y sus atributos autonumericos se borran tambien dejando disponibles sus posicion 
drop table Alumno_poto; -- Elimina la tabla por completo 

insert into Alumno_poto (nombre_alumno, codigo_alumno, edad) values( 'Nicolas C', '96372', 19 )


