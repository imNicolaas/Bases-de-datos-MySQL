--Creacion de la base de datos

create database Institucion_Educativa
use Institucion_Educativa; --Nos ubicamos en la base de datos correspondiente al ejercicio que acabamos de crear 

create table Departamento(id_departamento int identity(1,1),
					      codigo_departamento int primary key,--Se crean las tablas que no tienen atributos foraneos
						  nombre varchar(30)not null,
						  director varchar(30)not null,
						  subdirector varchar(30)not null,
						  ubicacion varchar(30)not null)

create table Centro(id_centro int identity(1,1),
                    codigo_centro int primary key,
					nombre_centro varchar(60) not null,
					direccion varchar (50))

create table Cargo(id_cargo int identity(1,1),
				   codigo_cargo int primary key,
				   decripcion varchar(80),
				   salario int not null)

create table Profesor(id_profesor int identity(1,1), 
                      codigo_profesor int primary key, -- se crean las tablas que contienen atributos foraneos los cuales dependen de las entidad anteriormente creadas 
					  nombre varchar(50) not null,
					  direccion varchar(80) not null,
					  telefono int not null,
					  email varchar(80) not null,
					  cedula int not null,
					  modulo int not null,
					  categoria varchar(75),
					  dedicacion varchar(80) not null,
					  salario int, 
					  genero varchar(30),
					  fecha_nacimiento date not null,
					  lugar_nacimiento varchar(80) not null,
					  estrato int,
					  estado_civil varchar(20)not null,
					  comorbilidades varchar(100)not null,
					  idiomas varchar(80) not null,
					  EPS varchar(80) not null,
					  fecha_ingreso date not null,
					  RH varchar(10)not null,
					  codigo_departamento int,
foreign key(codigo_departamento) references Departamento(codigo_departamento),
					  codigo_centro int,
foreign key(codigo_centro) references Centro(codigo_centro))

create table Personal(id_personal int identity(1,1), 
                      codigo_personal int primary key,
					  nombre_personal varchar(60)not null,
					  direccion varchar(100)not null,
					  telefono int,
					  email varchar(40)not null,
					  unidad_administrativa varchar(100)not null,
					  categoria_profesional varchar(60)not null,
					  cedula int not null,
					  modulo int not null,
					  genero varchar(70),
					  profesion varchar(75)not null,
					  dedicacion varchar(75)not null,
					  fecha_nacimiento date not null,
					  lugar_nacimiento varchar(75)not null,
					  estrato varchar(20) not null,
					  estado_civil varchar(75)not null,
					  comorbilidades varchar(75)not null,
					  idiomas varchar(80) not null,
					  EPS varchar(80) not null,
					  fecha_ingreso date not null,
					  RH varchar(10)not null,
						codigo_cargo int,
					  foreign key(codigo_cargo) references Cargo(codigo_cargo),
						codigo_departamento int,
                      foreign key(codigo_departamento) references	Departamento(codigo_departamento))

create table Alumno(id_alumno int identity(1,1),
                    Numero_de_expediente int primary key,
					nombre_alumno varchar(50) not null,
					direccion varchar(75)not null,
					telefono int not null,
					email varchar(75)not null,
					titulacion varchar(75)not null,
					cedula varchar(75)not null,
					genero varchar(40),
					jornada varchar(75)not null,
					fecha_nacimiento date not null,
					lugar_nacimiento varchar(75)not null,
					estrato varchar(20) not null,
					estado_civil varchar(75)not null,
					comorbilidades varchar(75)not null,
					idiomas varchar(80) not null,
					EPS varchar(80) not null,
					fecha_ingreso date not null,
					RH varchar(10)not null,
					codigo_centro int,
foreign key(codigo_centro) references Centro(codigo_centro))

