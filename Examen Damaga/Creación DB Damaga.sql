drop database if exists Hostelera;
create database Hostelera;
use Hostelera;

create table categoriaHotel(
idCategoria int primary key,
nombreCategoria varchar(50),
ivaAplicable double,
descripcion varchar(100)
);

create table hotel(
idHotel int primary key,
nombreHotel varchar(50),
direccion varchar(50),
telefonoContacto varchar(50),
anioConstruccion int,
idCategoria int,
foreign key(idCategoria) references categoriaHotel(idCategoria)
);

create table habitacion(
	idHabitacion int primary key,
    codigoHabitacion int,
    planta int,
    tipoHabitacion varchar(50),
    idHotel int,
    foreign key(idHotel) references hotel(idHotel)
);

create table clienteParticular(
idCliente int primary key,
nombreCompleto varchar(50),
direccion varchar(50),
telefono varchar(50)
);
create table agenciaViaje(
idAgencia int primary key,
nombreAgencia varchar(50),
direccion varchar(50),
telefono varchar(50)
);
create table reserva(
idReserva int primary key,
fechainicio date,
fechaFin date,
precioReserva double,
idHabitacion int,
foreign key (idHabitacion) references habitacion(idHabitacion),
idCliente int,
foreign key (idCliente) references clienteParticular(idCliente),
idAgencia int,
foreign key (idAgencia) references agenciaViaje(idAgencia),
nombreHuesped varchar(60)
);


SELECT * FROM hostelera.categoriahotel;
INSERT INTO `hostelera`.`categoriahotel` (`idCategoria`, `nombreCategoria`, `ivaAplicable`, `descripcion`) VALUES ('1', 'Dos estrellas', '10', 'Hoteles básicos con servicios esenciales');
INSERT INTO `hostelera`.`categoriahotel` (`idCategoria`, `nombreCategoria`, `ivaAplicable`, `descripcion`) VALUES ('2', 'Tres estrellas', '10', 'Hoteles cómodos con servicios estándar');
INSERT INTO `hostelera`.`categoriahotel` (`idCategoria`, `nombreCategoria`, `ivaAplicable`, `descripcion`) VALUES ('3', 'Cuatro estrellas', '21', 'Hoteles de alta calidad con múltiples servicios.');
INSERT INTO `hostelera`.`categoriahotel` (`idCategoria`, `nombreCategoria`, `ivaAplicable`, `descripcion`) VALUES ('4', 'Cinco estrellas', '21', 'Hoteles de lujo con servicios premium');


SELECT * FROM hostelera.hotel;
INSERT INTO `hostelera`.`hotel` (`idHotel`, `nombreHotel`, `direccion`, `telefonoContacto`, `anioConstruccion`, `idCategoria`) VALUES ('1', 'GlobalStay Madrid Centro', 'Calle Gran Via 10, Madrid, España', '+34 910000001 ', '1998', '3');
INSERT INTO `hostelera`.`hotel` (`idHotel`, `nombreHotel`, `direccion`, `telefonoContacto`, `anioConstruccion`, `idCategoria`) VALUES ('2', 'GlobalStay Barcelona Mar', 'Passeig Maritim 25, Barcelona, España', '+34 930000002 ', '2005', '4');
INSERT INTO `hostelera`.`hotel` (`idHotel`, `nombreHotel`, `direccion`, `telefonoContacto`, `anioConstruccion`, `idCategoria`) VALUES ('3', 'GlobalStay Sevilla Historic', 'Calle de las Flores 3, Sevilla, España', '+34 930000003 ', '1985', '2');
INSERT INTO `hostelera`.`hotel` (`idHotel`, `nombreHotel`, `direccion`, `telefonoContacto`, `anioConstruccion`, `idCategoria`) VALUES ('4', 'GlobalStay Paris Louvre', 'Rue du Louvre 12, París, Francia', '+34 930000004 ', '2010', '4');
INSERT INTO `hostelera`.`hotel` (`idHotel`, `nombreHotel`, `direccion`, `telefonoContacto`, `anioConstruccion`, `idCategoria`) VALUES ('5', 'GlobalStay Lisboa River', 'Avenida do Tejo 18, Lisboa, Portugal', '+34 930000005 ', '2000', '3');


INSERT INTO `hostelera`.`clienteparticular` (`idCliente`, `nombreCompleto`, `direccion`, `telefono`) VALUES ('1', 'Laura Gómez Pérez', 'Calle Alcalá 15, Madrid, España ', '+34 600000001 ');
INSERT INTO `hostelera`.`clienteparticular` (`idCliente`, `nombreCompleto`, `direccion`, `telefono`) VALUES ('2', 'Carlos Rodríguez Díaz', 'Avenida Diagonal 120, Barcelona, España', '+34 600000002');
INSERT INTO `hostelera`.`clienteparticular` (`idCliente`, `nombreCompleto`, `direccion`, `telefono`) VALUES ('3', 'María López Sánchez', 'Calle San Fernando 8, Sevilla, España', '+34 600000003');
INSERT INTO `hostelera`.`clienteparticular` (`idCliente`, `nombreCompleto`, `direccion`, `telefono`) VALUES ('4', 'Javier Martín Ruiz ', 'Rua Augusta 30, Lisboa, Portugal ', '+351 600000004');
INSERT INTO `hostelera`.`clienteparticular` (`idCliente`, `nombreCompleto`, `direccion`, `telefono`) VALUES ('5', 'Ana Fernández Torres', 'Calle Mayor 5, Zaragoza, España', '+34 600000005');
INSERT INTO `hostelera`.`clienteparticular` (`idCliente`, `nombreCompleto`, `direccion`, `telefono`) VALUES ('6', 'Diego Navarro Ortiz', 'Rue Rivoli 21, París, Francia ', '+33 600000006');


SELECT * FROM hostelera.habitacion;
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('1', '101', '1', "Individual", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('2', '102', '1', "Doble", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('3', '102', '1', "Doble", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('4', '301', '3', "Suite", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('5', '101', '1', "Individual", '2');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('6', '102', '1', "Doble", '2');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('7', '201', '2', "Familiar", '2');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('8', '301', '1', "Suite", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('9', '001', '1', "Individual", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('10', '101', '1', "Doble", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('11', '201', '1', "Doble", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('12', '301', '1', "Suite", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('13', '101', '1', "Doble", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('14', '201', '1', "Suite", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('15', '301', '1', "Suite", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('16', '101', '1', "Individual", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('17', '201', '1', "Doble", '1');
INSERT INTO `hostelera`.`habitacion` (`idHabitacion`, `codigoHabitacion`, `planta`, `tipoHabitacion`, `idHotel` ) VALUES ('18', '301', '1', "Familiar", '1');



INSERT INTO reserva (idReserva, fechaInicio, fechaFin, precioReserva, 
idHabitacion, idCliente, idAgencia, nombreHuesped) VALUES
-- Reservas de clientes particulares
(1, '2025-03-10', '2025-03-15', 450.00, 1, 1, NULL, 'Laura Gómez Pérez'),
(2, '2025-04-15', '2025-04-18', 360.00, 2, 2, NULL, 'Carlos Rodríguez Díaz'),
(3, '2025-06-01', '2025-06-10', 900.00, 7, 3, NULL, 'María López Sánchez'),
(4, '2025-11-20', '2025-11-25', 500.00, 3, 4, NULL, 'Javier Martín Ruiz'),
(5, '2025-11-24', '2025-11-28', 320.00, 16, 5, NULL, 'Ana Fernández Torres'),
(6, '2025-12-24', '2025-12-27', 600.00, 4, 1, NULL, 'Laura Gómez Pérez'),
(7, '2025-01-05', '2025-01-08', 270.00, 9, 6, NULL, 'Diego Navarro Ortiz'),
(8, '2025-02-10', '2025-02-12', 180.00, 5, 2, NULL, 'Carlos Rodríguez Díaz');
-- Reservas gestionadas por agencias
INSERT INTO reserva (idReserva, fechaInicio, fechaFin, precioReserva, 
idHabitacion, idCliente, idAgencia, nombreHuesped) VALUES
(9, '2025-04-01', '2025-04-05', 600.00, 5, NULL, 901, 'Mario Ruiz Morales'),
(10, '2025-05-20', '2025-05-25', 750.00, 10, NULL, 902, 'Beatriz Herrera'),
(11, '2025-07-10', '2025-07-12', 820.00, 13, NULL, 901, 'Alberto Sánchez'),
(12, '2025-08-01', '2025-08-07', 1500.00,14, NULL, 903, 'Sofía Castro'),
(13, '2025-09-15', '2025-09-18', 420.00, 11, NULL, 902, 'Raúl Domínguez'),
(14, '2025-10-05', '2025-10-10', 980.00, 8, NULL, 904, 'Isabel Romero'),
(15, '2025-12-29', '2026-01-02', 1800.00,14, NULL, 903, 'Claudia Pérez'),
(16, '2025-03-22', '2025-03-25', 400.00, 17, NULL, 904, 'Fernando Iglesias'),
(17, '2025-11-10', '2025-11-12', 260.00, 6, NULL, 901, 'Paula Medina'),
(18, '2025-11-30', '2025-12-03', 720.00, 15, NULL, 902, 'Sergio Molina');

