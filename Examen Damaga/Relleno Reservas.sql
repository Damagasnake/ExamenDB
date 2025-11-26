SELECT * FROM hostelera.reserva;

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
(8, '2025-02-10', '2025-02-12', 180.00, 5, 2, NULL, 'Carlos Rodríguez Díaz'),
-- Reservas gestionadas por agencias
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
