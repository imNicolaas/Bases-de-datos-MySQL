-- Creacion bases de datos ejercicio 3
-- Creacion

create database proveedor_piezas;
use proveedor_piezas;--Nos ubicamos en la base de datos creada

create table Proveedor(id_proveedor int identity(1,1),
                      codigo_proveedor int primary key, --Creamos la primera tabla llamada Proveedor, ya que no tiene llaves foraneas
					  nombre_provedor varchar(36) not null,
					  nit int not null,
					  telefono_Contacto int not null,
					  correo_Electronico varchar(30)not null, 
					  direccion varchar(60)not null,
					  ciudad varchar(20) not null,
					  provincia varchar(20) not null,
					  pais varchar(20) not null)

create table Categoria(id_categoria int identity(1,1),
					  codigo_categoria int primary key, --Se crea la tabla de categoria con sus atributos
					  descripcion varchar(40))

create table Piezas(id_Referencia int identity(1,1),
					codigo_Piezas int primary key, --Por ultimo se crea la tabla de piezas ya que es la unica que contiene atributos foraneos
					descripcion varchar(100) not null,
					color varchar(20) not null,
					precio int not null,
					cantidad int not null,
					tamaño varchar(20) not null,
					material varchar(20) not null,
					marca varchar(20) not null,
						codigo_proveedor int,
					foreign key(codigo_proveedor) references Proveedor(codigo_proveedor),
						codigo_categoria int, 
					foreign key(codigo_categoria) references Categoria(codigo_categoria))


					