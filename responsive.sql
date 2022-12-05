-- Creado en: 2022-04-30 14:28:25 COT

use responsive;

CREATE TABLE USUARIOS 
    (
     ID NUMERIC (8) NOT NULL , 
     Nombre_usuario VARCHAR (200) , 
     clave VARCHAR (200) 
    )


ALTER TABLE USUARIOS ADD CONSTRAINT USUARIOS_PK PRIMARY KEY CLUSTERED (ID)
     WITH (
     ALLOW_PAGE_LOCKS = ON , 
     ALLOW_ROW_LOCKS = ON )

	 select * from USUARIOS;

