
CREATE DATABASE prelabsql; 
USE prelabsql; 
CREATE TABLE direccion ( 
 idDireccion INT PRIMARY KEY, 
 Direccion VARCHAR(45),
 Ciudad VARCHAR(45), 
 Pais VARCHAR(45) 
);
insert into direccion(idDireccion,Direccion,Ciudad,Pais) 
values
(1,"22av Zona 5 ","Capital","Guatemala"),
(2,"10av Zona 7 ","Bethania","Guatemala"),
(3,"20av Zona 16 ","Villa Nueva","Guatemala"),
(4,"18av Zona 4 ","Reformita","Guatemala"),
(5,"6av Zona 5 ","Mixco","Guatemala");
CREATE TABLE clientes1 ( 
idCliente INT PRIMARY KEY, 
 Nombre VARCHAR(45), 
 Apellido VARCHAR(45), 
 Edad VARCHAR(45),
 Direccion_idDireccion INT, 
 FOREIGN KEY (Direccion_idDireccion) REFERENCES direccion(idDireccion) 
);
insert into clientes1(idCliente,Nombre,Apellido,Edad,Direccion_idDireccion) 
values
(1,"Pedro ","Dominguez",21,1),
(2,"Diego ","Albizuris",18,2),
(3,"Juliana ","Perez",22,3),
(4,"Diego ","Zamudio",17,4),
(5,"Juliana ","Rodriguez",30,5);
CREATE TABLE categoria ( 
 idCategoria INT PRIMARY KEY, 
 Nombre VARCHAR(45) 
);
insert into categoria(idCategoria,Nombre) 
values
(1,"Suspenso "),
(2,"Amor"),
(3,"Ciencia ficcion "),
(4,"Terror"),
(5,"Comedia");
CREATE TABLE peliculas ( 
 idPeliculas INT PRIMARY KEY, 
 Nombre VARCHAR(45), 
 Duracion INT, 
 Descripcion TEXT,
 Año INT, 
 Categoria_idCategoria INT,
 FOREIGN KEY (Categoria_idCategoria) REFERENCES categoria(idCategoria) 
);
insert into
peliculas(idPeliculas,Nombre,Duracion,Descripcion,Año,Categoria_idCategoria) 
values
(1, 'Matilda Musical', 112, 'Una niña con habilidades inimaginables', 2024, 2),
(2, 'pokemon1', 120, 'La lucha por salir de su ciudad y ser libre', 1980, 3),
(3, 'Avengers', 182, 'Vengadores luchan por proteger su mundo', 2010, 3),
(4, 'EL conjuro', 133, 'Grupo de amigos sobrevive a una tragedia', 2007, 4),
(5, 'Toy story 2', 105, 'Juguetes cobran vida y hacen locuras', 2002, 3);
CREATE TABLE inventario ( 
 idCopiasPeliculas INT PRIMARY KEY, 
 Peliculas_idPeliculas INT, 
 Disponible TINYINT, 
 FOREIGN KEY (Peliculas_idPeliculas) REFERENCES peliculas(idPeliculas) 
);
insert into inventario(idCopiasPeliculas,Peliculas_idPeliculas,Disponible)
values
(1, 1, 1),
(2, 2, 1),
(3, 3, 0),
(4, 4, 1),
(5, 5, 1);
CREATE TABLE rentas ( 
 idRenta INT PRIMARY KEY, 
 Fecha_Renta DATE, 
 Fecha_Entrega DATE, 
 Inventario_idCopiasPeliculas INT, 
 Cliente_idCliente INT, 
 FOREIGN KEY (Inventario_idCopiasPeliculas) REFERENCES
inventario(idCopiasPeliculas), 
 FOREIGN KEY (Cliente_idCliente) REFERENCES clientes1(idCliente) 
);
insert into
rentas(idRenta,Fecha_Renta,Fecha_Entrega,Inventario_idCopiasPeliculas,Cliente_idCliente)
values
(1, '2025-05-02', '2025-05-05', 1, 1),
(2, '2025-05-03', '2025-05-06', 2, 2),
(3, '2025-07-05', '2025-07-07', 4, 3),
(4, '2025-03-07', '2025-03-10', 3, 4),
(5, '2025-02-09', '2025-02-12', 4, 5);
CREATE TABLE empleado ( 
 idEmpleado INT PRIMARY KEY, 
 Nombre VARCHAR(45), 
 Apellido VARCHAR(45), 
 Cargo VARCHAR(45),
 Fecha_Contratacion DATE,
 Telefono VARCHAR(20) 
);
insert into
empleado(idEmpleado,Nombre,Apellido,Cargo,Fecha_Contratacion,Telefono) 
values
(1, 'Pedro', 'Gonzalez', 'Cajero', '2022-02-12', '2812182'),
(2, 'Javier', 'Farfan', 'Cajero', '2021-03-02', '22123334'),
(3, 'Diego', 'Albizuris', 'Atención al Cliente', '2023-02-10', '15652374'),
(4, 'Mario', 'Urrutia', 'Administrador de Sistemas', '2020-12-22', '29048797'),
(5, 'Daniela', 'Alvarado', 'Auxiliar de Renta', '2021-05-02', '02011334');

CREATE TABLE reservas ( 
 idReserva INT PRIMARY KEY, 
 Fecha_Reserva DATE, 
 Cliente_idCliente INT, 
 Inventario_idCopiasPeliculas INT, 
 FOREIGN KEY (Cliente_idCliente) REFERENCES clientes1(idCliente), 
 FOREIGN KEY (Inventario_idCopiasPeliculas) REFERENCES
inventario(idCopiasPeliculas) );
insert into
reservas(idReserva,Fecha_Reserva,Cliente_idCliente,Inventario_idCopiasPeliculas) 
values
(1, '2025-02-12', 1, 3),
(2, '2025-05-15', 2, 1),
(3, '2025-05-22', 3, 4),
(4, '2025-06-13', 4, 2),
(5, '2025-06-25', 5, 5);

select * from direccion; 
select * from clientes1 ; 
select * from clientes1 where Nombre = "Juliana"; 
select * from peliculas where not Nombre = "pokemon1" order by Año desc; 
select * from categoria order by Nombre asc; 
select * from inventario; 
select * from rentas; 
select * from reservas; 