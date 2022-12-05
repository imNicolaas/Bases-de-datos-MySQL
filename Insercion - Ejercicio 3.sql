 ----Insercion tablas ejercicios 3 

use proveedor_piezas;

insert into Proveedor (codigo_proveedor, nombre_provedor ,nit, telefono_Contacto , correo_Electronico, direccion, ciudad ,provincia, pais) values(456789, 'Tecno SA', 86234, 239487, 'tecnosa@gmail.com', 'Cra 45 #12 - 56', 'Bogota', 'Usme',  'Colombia')
insert into Proveedor (codigo_proveedor, nombre_provedor ,nit, telefono_Contacto , correo_Electronico, direccion, ciudad ,provincia, pais) values(234576, 'Clones y perifericos',  678346567, 12334634, 'clonesyp@gmail.com', 'Cra 67 #12 - 45', 'Bogota', 'Soacha', 'Colombia')
insert into Proveedor (codigo_proveedor, nombre_provedor ,nit, telefono_Contacto , correo_Electronico, direccion, ciudad ,provincia, pais) values(345256, 'Amazon', 234456568, 346345, 'amazon@gmail.com', 'Cra 34 #45 -67', 'USA', 'California', 'USA')
insert into Proveedor (codigo_proveedor, nombre_provedor ,nit, telefono_Contacto , correo_Electronico, direccion, ciudad ,provincia, pais) values(789456, 'Mercado libre',  234234567, 34534535, 'mercadolibre@gmail.com', 'Cra 23 #23 - 56', 'Buenos aires', 'La plata', 'Argentina')
insert into Proveedor (codigo_proveedor, nombre_provedor ,nit, telefono_Contacto , correo_Electronico, direccion, ciudad ,provincia, pais) values(967345, 'Tecno Latam', 78945634, 345345, 'tecnolatam@gmail.com', 'Cra 56 #34 -89', 'Bocas del toro', 'cocle','Panama')

select * from Proveedor;

insert into Categoria(codigo_categoria, descripcion) values(3425234, 'Tecnologia')
insert into Categoria(codigo_categoria, descripcion) values(345643, 'Implementos de oficina')
insert into Categoria(codigo_categoria, descripcion) values(477345, 'Informatica')
insert into Categoria(codigo_categoria, descripcion) values(789673, 'Computacion')
insert into Categoria(codigo_categoria, descripcion) values(98746, 'Tecnologia')

select * from Categoria;



insert into Piezas(codigo_Piezas, descripcion, color,precio ,cantidad ,tamaño ,material ,marca , codigo_proveedor ,codigo_categoria) values(234235, 'tecnologia', 'azul', 12456, 23, '120 x 120 x 23', 'madera', 'logitech', 456789, 3425234)
insert into Piezas(codigo_Piezas, descripcion, color,precio ,cantidad ,tamaño ,material ,marca , codigo_proveedor ,codigo_categoria) values(235235, 'tecnologia', 'rojo', 123456, 57, '142 x 356 x 23', 'metal', 'corsair', 234576, 345643)
insert into Piezas(codigo_Piezas, descripcion, color,precio ,cantidad ,tamaño ,material ,marca , codigo_proveedor ,codigo_categoria) values(456456,'tecnologia', 'verde', 1200000, 45, '123x 356 x 234', 'aluminio','lenovo', 345256, 477345)
insert into Piezas(codigo_Piezas, descripcion, color,precio ,cantidad ,tamaño ,material ,marca , codigo_proveedor ,codigo_categoria) values(678677, 'tecnologia', 'amarillo', 13400, 67, '456x 46 x456',  'plastico', 'acer', 789456, 789673)
insert into Piezas(codigo_Piezas, descripcion, color,precio ,cantidad ,tamaño ,material ,marca , codigo_proveedor ,codigo_categoria) values(567457 ,'tecnologia', 'cafe', 320000, 23, '123  x 123  x 123', 'plastico', 'razer',967345, 98746)

select * from Piezas;

-----------------------------------------------------------------------------------------------------------------------------------------------------
-- Listar
select codigo_Piezas As codigo, tamaño as Volumnen from Piezas

select distinct descripcion from Piezas -- Muestra solo los atributos que son diferentes de toda la colmna (en este caso solo uno por que todos son iguales)

select distinct cantidad from Piezas --Se muestran solo las cantidades diferentes de los productos registrados 

select * from Piezas where id_Referencia >=2 and id_Referencia<=5; -- Seleccionar los atributos con dos condiciones logicas para mostrar los que tengan id entre la dos y la cuatro (se utiliza el and por que la condiciones se tienen que cumplir al mismo tiempo) 

select * from Piezas where id_Referencia = 2 or id_Referencia = 4; -- Seleccionar solo los atributos que cumplan con una o dos condiciones para mostrar en este caso solo dos regsitros (se usa or por que el and dice que deben valer esos valores al mismo tiempo y eso no es posible)

select *, cantidad as C_A_N_T_I_D_A_D  from Piezas order by cantidad desc -- se selecionan todos los tributos de la tabla y la cantidad se orden de mayor a menor 

select * from Piezas order by precio asc -- Muestra los registros ordenados de menor a mayor 

select * from Piezas where codigo_Piezas in (235235) -- mustra solo las piezas cuyo codigo sea "235235"

select descripcion, codigo_Piezas as Codigo_de_la_pieza, cantidad, material from Piezas where descripcion in ('tecnologia') -- muestra solo los productos cuya descripcion sea tecnologia 

select * from Piezas where color like 'azu%' -- Muestra solo las piezas registradas cuyo color empieze por "azu"

select * from Piezas where  material like '%tico' -- Muestras solo los productos registrados cuyo material termine en "tico"

select * from Piezas where material like '%umi%' -- Muestra los registros en donde hayan la cadena "umi" en la tabla material

select * from Piezas where marca like 'r___r' -- muestra los registro en donde la marca empieze con r y termine con r 

select * from Piezas where codigo_Piezas between '234235' and '567457' -- Muestra solo los registros entre 234235 y 456456

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---------------------------- CONSULTAS SELECT AVANZADO ----------------------------

select * from Piezas
select * from Categoria
select * from Proveedor
------------------------------------------------------------------------------------------------------------
----SELECT #1
select Piezas.codigo_Piezas, Piezas.descripcion, 
	   Categoria.codigo_categoria, 
	   Proveedor.nombre_provedor, Proveedor.pais
	  
from   Piezas, Categoria, Proveedor
where  Piezas.id_Referencia = 3 and Categoria.id_categoria = 3 and Proveedor.id_proveedor = 3;
------------------------------------------------------------------------------------------------------------
----SELECT #2
select Piezas.precio,
       Categoria.descripcion, 
	   Proveedor.direccion
from   Piezas, Categoria, Proveedor
where Piezas.id_Referencia = 1 and categoria.id_categoria = 1 and Proveedor.id_proveedor = 1
------------------------------------------------------------------------------------------------------------
----SELECT #3
select a.cantidad,
	   b.codigo_categoria,
	   c.nombre_provedor

from Piezas a , Categoria b, Proveedor c
where a.codigo_Piezas = 678677 and b.codigo_categoria = 789673 and c.codigo_proveedor = 789456
------------------------------------------------------------------------------------------------------------
----SELECT #4
select Piezas.precio, Categoria.descripcion, Proveedor.pais

from   Piezas, Categoria, Proveedor
where Piezas.precio >= 123456 and Categoria.id_categoria = 1 and Proveedor.id_proveedor > 1
------------------------------------------------------------------------------------------------------------
----SELECT #5
select Piezas.marca,                Categoria.codigo_categoria ,       Proveedor.nombre_provedor

from   Piezas, Categoria, Proveedor
where  Piezas.id_Referencia > 3 and Categoria.id_categoria > 3 and Proveedor.id_proveedor >3
------------------------------------------------------------------------------------------------------------
----SELECT #6
select Piezas.precio,
	   Categoria.id_categoria,
	   Proveedor.correo_Electronico

from   Piezas, Categoria, Proveedor
where  Piezas.material like ('%plas%') and Categoria.codigo_categoria > 4 and Proveedor.ciudad in ('Bogota')
------------------------------------------------------------------------------------------------------------
----SELECT #7
select Piezas.codigo_Piezas,
	   Categoria.id_categoria,
	   Proveedor.ciudad

from   Piezas, Categoria, Proveedor
where  Piezas.id_Referencia > 1 and Piezas.id_Referencia < 4 and Proveedor.ciudad like ('B%') 

------------------------------------------------------------------------------------------------------------
--- BORRADO y UPDATE DE TABLAS DE TABLAS ---

--- UPDATE #1
select * from Categoria -- Se muestran todos los datos de la tabla categoria 
update Categoria set descripcion = 'Informatica y Electronica' where id_categoria = 3 -- se actualiza la descripcion del registro con id 3 
select * from Categoria -- Se muestran los datos de la tabla otra vez para evidenciar los cambios 

--- UPDATE #2
select * from Categoria
update Categoria set descripcion = 'Computacion y electronica' where id_categoria = 4
select * from Categoria

--- UPDATE #3
select * from Piezas
update Piezas set descripcion = 'Computacion Cuantica' where id_Referencia = 3
select * from Piezas

--- UPDATE #4
select * from Piezas
update Piezas set precio = 13200 where id_Referencia = 5
select * from Piezas

--- UPDATE #5
select * from Piezas
update Piezas set material = 'Metal cepillado' where id_Referencia = 2
select * from Piezas

--- UPDATE #6
select * from Proveedor
update Proveedor set telefono_Contacto = 3213156734 where id_proveedor = 3
select * from Proveedor

--- Delete #1
delete Proveedor where id_proveedor = 4

--------------------------------------------------------------------------------------------------------------------------------
--- JOINS ---

select * from Piezas
select * from Categoria
select * from Proveedor

delete from Piezas where codigo_categoria = 3425234 -- Se borra un registro para evidenciar el join

delete from Proveedor where id_proveedor = 4 -- Se borra un registro para evidenciar el join

delete from Categoria where id_categoria = 5-- No se puede borrar por que contiene una llave foranea activa

EXEC sp_msforeachtable "ALTER TABLE ? NOCHECK CONSTRAINT ALL";-- Se desactivan las llavez para poder borrar la informacion

EXEC sp_msforeachtable "ALTER TABLE ? WITH CHECK CHECK CONSTRAINT ALL"; -- Se activan las llavez nuevamente para evitar borrados accidentales 

----- #1 INNER JOIN
--------------------------------------------------------------------------------------------------------------------------------
select codigo_Piezas, precio, cantidad, Categoria.id_categoria
from Piezas inner join Categoria
on Piezas.codigo_categoria = Categoria.codigo_categoria
--------------------------------------------------------------------------------------------------------------------------------
----- #2 LEFT JOIN
select Piezas.descripcion, Piezas.color, Piezas.marca, cantidad, Categoria.id_categoria, Categoria.codigo_categoria
from Piezas left join Categoria
on Piezas.codigo_categoria = Categoria.codigo_categoria
--------------------------------------------------------------------------------------------------------------------------------
----- #3 RIGHT JOIN
select Piezas.descripcion, Piezas.precio, Categoria.id_categoria
from Piezas right join Categoria
on Piezas.codigo_categoria = Categoria.codigo_categoria
--------------------------------------------------------------------------------------------------------------------------------
---- #4  FULL OUTER JOIN
select codigo_Piezas, precio, cantidad, Categoria.id_categoria
from Piezas full outer join Categoria
on Piezas.codigo_categoria = Categoria.codigo_categoria
--------------------------------------------------------------------------------------------------------------------------------
---- #5 FULL OUTER JOIN 
select Piezas.descripcion, Piezas.codigo_Piezas, Piezas.cantidad, Categoria.id_categoria, Categoria.descripcion
from Piezas full outer join Categoria
on Piezas.codigo_categoria = Categoria.codigo_categoria
--------------------------------------------------------------------------------------------------------------------------------
----- #6 INNER JOIN
select descripcion, codigo_Piezas, cantidad, Proveedor.nombre_provedor, Proveedor.ciudad
from Piezas inner join Proveedor 
on Piezas.codigo_proveedor = Proveedor.codigo_proveedor
--------------------------------------------------------------------------------------------------------------------------------
----- #7 FULL OUTER JOIN
select descripcion, codigo_Piezas, cantidad, Proveedor.nombre_provedor, Proveedor.ciudad
from Piezas full outer join Proveedor 
on Piezas.codigo_proveedor = Proveedor.codigo_proveedor
--------------------------------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------------------------------
--- FUNCIONES MATEMATICAS ---
--------------------------------------------------------------------------------------------------------------------------------
----- #1 COUNT
select * from Piezas
select count (Piezas.codigo_categoria )as total_codigos
from Piezas -- Cuenta cuantos registros hay en base a la columna de codigo

--------------------------------------------------------------------------------------------------------------------------------
----- #2 SUM (suma todos los elementos de la columan seleccionada)
select * from Piezas
select sum(Piezas.cantidad) as total_articulos_registrados
from Piezas
where id_Referencia != 2 --- Suma la cantidad de cada articulo que hay de cada producto registrado menos el que tiene id = 2

--------------------------------------------------------------------------------------------------------------------------------
----- #3 SUM(suma todos los elementos de la columan seleccionada) 
select * from Piezas
select sum(Piezas.cantidad + Piezas.precio ) as total_articulos_registrados
from Piezas where id_Referencia = 2 -- Suma la cantidad y e precio de la tabla piezas si el id es igual a 2
--------------------------------------------------------------------------------------------------------------------------------
----- #4 AVG (AVERAGE, promedia un columna selecionada)
select * from Piezas
select AVG(precio) as promedio_precios -- Saca el PROMEDIO de la columna de los precios, es decir el promedio de todos los precios de la columna 
from Piezas
--------------------------------------------------------------------------------------------------------------------------------
----- #5 MAX (Haya el valor maximo de los capos seleccionados)
select * from Piezas
select max(cantidad) as mayor_existencia
from Piezas
--------------------------------------------------------------------------------------------------------------------------------
----- #6 MIN (Halla el valor miniom del campo seleccionado  )
select *  from Piezas
select min(precio) as precio_menor -- Halla el valor minimo del campo de precio
from Piezas
--------------------------------------------------------------------------------------------------------------------------------
----- #7 VAR (VRIANCE mediana de un campo )
SELECT * FROM Piezas
SELECT var(cantidad) as media_del_precio-- Halla la MEDIANA de los precios)
from Piezas where id_Referencia between 2 and 5