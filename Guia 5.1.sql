create table depto(	depto_no varchar(36) primary key, 
					d_nombre varchar(50) not null,
					loc varchar(50) not null
)

create table empleados(	emp_no varchar(10) primary key not null,
						apellido varchar(36) not null,
						oficio varchar(36) not null,
						dir varchar(10),
						fecha_alt date not null,
						salario int not null,
						comision int,
						dept_no varchar(36), foreign key(dept_no) references depto(depto_no) 
					
)

insert into depto values (10, 'CONTABILIDAD', 'SEVILLA');
insert into depto(d_nombre, depto_no, loc) values (20, 'INVESTIGACION', 'MADRID');
insert into depto(depto_no, d_nombre, loc) values (30, 'VENTAS', 'BARCELONA');
Insert into depto(depto_no, d_nombre, loc) values (40, 'PRODUCCION ', 'BILBAO');

insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7369, 'ZANCHES', 'EMPLEADO', 7902, '12-17-1980', 104000, null ,20)
insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7499, 'ARROYO', 'VENDEDOR', 7698, '02-20-1980', 208000 , 39000, 30)
insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7521, 'SALA', 'VENDEDOR', 7698 , '02-22-1981', 162500, 162500, 30)
insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7566, 'JIMENEZ', 'DIRECTOR', 7839, '04-02-1981', 38675, null, 20)
insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7654, 'MARTIN', 'VENDEDOR', 7698, '09-29-1981', 162500 , 182000, 30)
insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7698, 'NEGRO', 'DIRECTOR', 7839, '05-01-1981', 370500, null, 30)
insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7788, 'GIL', 'ANALISTA', 7566, '11-09-1981', 390000, null, 20)
insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7839, 'REY', 'PRESIDENTE', null, '11-17-1981', 650000, null, 10)
insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7844, 'TOVAR', 'VENDEDOR', 7698, '09-08-1981', 195000, 0, 30)
insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7876, 'ALONSO', 'EMPLEADO', 7788, '09-23-1981', 143000, null, 20)
insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7900, 'JIMENO', 'EMPLEADO', 7698, '12-03-1981', 1235000, null, 30)
insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7902, 'FERNANDEZ', 'ANALISTA', 7566, '12-03-1981', 390000, null, 20)
insert into empleados(emp_no, apellido, oficio, dir, fecha_alt, salario, comision, dept_no) values(7934, 'MUÑOZ', 'EMPLEADO', 7782, '01-23-1982', 169000, null, 10)

select * from empleados;

use guia_5

--1 
select apellido, oficio, dept_no as numero_de_departamento from empleados

--2
select * from depto

--3
select * from empleados

--4
select * from empleados order by apellido asc

--5
select * from empleados order by dept_no desc

--6
select * from empleados order by dept_no desc, apellido asc

--7
select * from empleados where salario > 2000000

--9
select * from empleados where oficio = 'ANALISTA'
					
--10
select apellido, oficio from empleados where dept_no = 20

--11
select * from empleados order by apellido asc

--12
select * from empleados where oficio = 'VENDEDOR' order by apellido asc

--13
select * from empleados where oficio = 'ANALISTA' and dept_no = 10 order by apellido asc

--14
select * from empleados where salario > 200000 or dept_no = 20

--15
select * from empleados order by oficio asc, apellido asc

--16
select * from empleados where apellido LIKE 'A%'

--17
select * from empleados where apellido LIKE '%Z'

--18
select * from empleados where apellido LIKE 'A%' and oficio LIKE '%E%'

--19
select * from empleados where salario BETWEEN 100000 AND 200000

--20
select * from empleados where oficio = 'VENDEDOR' and salario > 100000

--21
select * from empleados order by dept_no, apellido

--22
select * from empleados where apellido like '%Z' and salario > 300000

--23
select * from depto where loc like 'B%'


--24 
select * from empleados where oficio =  'EMPLEADO' and salario > 100000 and dept_no = 10

--25
select * from empleados where comision = 0 or comision = NULL