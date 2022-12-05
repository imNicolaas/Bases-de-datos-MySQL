create database Prueba_VAR

use Prueba_VAR 

create table a (variable int primary key)
create table b (variable_b int primary key)

insert into a(variable) values(2)
insert into a(variable) values(4)
insert into a(variable) values(6)
insert into a(variable) values(8)
insert into a(variable) values(10)
insert into a(variable) values(12)

insert into b(variable_b) values(1)
insert into b(variable_b) values(2)
insert into b(variable_b) values(3)
insert into b(variable_b) values(4)
insert into b(variable_b) values(5)
insert into b(variable_b) values(6)


select * from a
select var(variable)as var
from a 

select * from b
select var(variable_b)as var_b -- SACA LA "VARIANCE" O MEDIANA DEL CAMPO SELECCIONADO ES DECOR SUMA TODOS LOS DATOS Y LOS DIVIDE EN LA CATIDAD DE DATOS ( 21/6 ) 
from b


select * from b
select avg(variable_b)as avg__var_b -- SACA EL PROMEDIO DEL CAMPO SELECCIONADO ES DECIR , SUMAS LOS DATOS Y LOS DIVIDE EN LA CANTIDAD DE DATOS MAS UNO ( 21/7 )
from b

