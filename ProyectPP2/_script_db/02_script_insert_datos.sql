USE PROJECT_PP2_DB
GO

INSERT INTO Empleado
VALUES ('Monica', '11-5858-6666','Bogota 456','1001','monica.nieto@gmail.com','mnnieto','1234','Tecnico','01/01/2000'),
('Gustavo', '11-5656-8888','Lima 654','1010','gustavo.zammataro@gmail.com','gzammataro','1234','Tecnico','01/01/2001'),
('Lucas', '11-4747-2222','Quito 546','1011','lucas.marques.paiva@gmail.com','lmpaiva','1234','Tecnico','01/02/2002'),
('Federico', '11-2424-5555','Asuncion 645','1100','federico.balbuena@gmail.com','fbalbuena','1234','Tecnico','01/03/2003')
GO
--SELECT * FROM EMPLEADO

INSERT INTO Cliente (nombre, telefono, direccion, codigoPostal, email, condicionAfip, razonSocial) VALUES ('Noell', '550 356 0475', '21319 Debs Crossing', '52396', 'fcrichley0@craigslist.org', 'Monotributista', 'Crichley SH');
INSERT INTO Cliente (nombre, telefono, direccion, codigoPostal, email, condicionAfip, razonSocial) VALUES ('Maia', '336 207 1410', '142 Superior Point', '607910', 'agronauer1@twitter.com', 'Iva Excento', 'Gronauer SRL');
INSERT INTO Cliente (nombre, telefono, direccion, codigoPostal, email, condicionAfip, razonSocial) VALUES ('Donica', '574 270 8803', '688 Anniversary Center', '45887', 'whornung2@php.net', 'Responsable Inscripto', 'Hornung SA');
INSERT INTO Cliente (nombre, telefono, direccion, codigoPostal, email, condicionAfip, razonSocial) VALUES ('Sabine', '478 614 1253', '1229 Westerfield Avenue', NULL, 'ahammond3@hubpages.com', 'Iva Excento', 'Hammond SA');
INSERT INTO Cliente (nombre, telefono, direccion, codigoPostal, email, condicionAfip, razonSocial) VALUES ('Banky', '195 377 8387', '188 Union Road', '24370', 'efitch4@51.la', 'Monotributista', 'Fitch SH');
INSERT INTO Cliente (nombre, telefono, direccion, codigoPostal, email, condicionAfip, razonSocial) VALUES ('Jimmy', '620 825 4983', '3259 Mccormick Way', '37833', 'slivingstone5@mayoclinic.com', 'Responsable Inscripto', 'Livingstone SRL');
INSERT INTO Cliente (nombre, telefono, direccion, codigoPostal, email, condicionAfip, razonSocial) VALUES ('Bentlee', '591 707 4769', '34138 Garrison Point', '14912', 'tpellamonuten6@boston.com', 'Iva Excento', 'Pellamonuten SAS');
INSERT INTO Cliente (nombre, telefono, direccion, codigoPostal, email, condicionAfip, razonSocial) VALUES ('Evyn', '842 455 2329', '0001 Old Gate Point', NULL, 'htressler7@microsoft.com', 'Iva Excento', 'Tressler SAS');
INSERT INTO Cliente (nombre, telefono, direccion, codigoPostal, email, condicionAfip, razonSocial) VALUES ('Nickolai', '453 650 7394', '1707 Kropf Parkway', '68220', 'cclearley8@nifty.com', 'Monotributista', 'Clearley SH');
INSERT INTO Cliente (nombre, telefono, direccion, codigoPostal, email, condicionAfip, razonSocial) VALUES ('Maddie', '172 647 9672', '41836 Tennessee Circle', '38833', 'pnoquet9@1688.com', 'Responsable Inscripto', 'Noquet SA');
GO
--SELECT * FROM cliente

INSERT INTO TipoEquipo (nombre) VALUES ('ECG');
INSERT INTO TipoEquipo (nombre) VALUES ('Cardioversor');
INSERT INTO TipoEquipo (nombre) VALUES ('Aspirador');
INSERT INTO TipoEquipo (nombre) VALUES ('Respirador');
INSERT INTO TipoEquipo (nombre) VALUES ('Presurometro');
INSERT INTO TipoEquipo (nombre) VALUES ('Monitor multiparametrico');
INSERT INTO TipoEquipo (nombre) VALUES ('Bomba de infusion');
INSERT INTO TipoEquipo (nombre) VALUES ('Incubadora de transporte');
INSERT INTO TipoEquipo (nombre) VALUES ('Electroestimulador');
INSERT INTO TipoEquipo (nombre) VALUES ('Oximetro');
INSERT INTO TipoEquipo (nombre) VALUES ('Cable paciente 10D');
INSERT INTO TipoEquipo (nombre) VALUES ('Sensor de dedo');
INSERT INTO TipoEquipo (nombre) VALUES ('Paletas externas');
GO
--SELECT * FROM TipoEquipo

INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (1, '9607855949', 'Mecamed', '2001C', '29896', 1001);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (1, '6093468232', 'Mecamed', 'D-151-A', '59792', 1002);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (1, '9845954162', 'Mecamed', 'MSC2000', '89688', 1003);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (1, '0678173974', 'Cardiotecnica', 'RG-401', '119584', 1004);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (1, '2118735995', 'JotaTec', 'Taurus touch', '149480', 1005);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (1, '7226322781', 'Dongjiang', 'ECG-11D', '179377', 1006);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (1, '3752018119', 'Fukuda', 'FJ-2111', '209273', 1007);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (2, '0488542987', 'Eym', 'C-12B, C-12R', '239169', 1008);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (2, '7974222069', 'instramed', 'Cardiomax', '269065', 1009);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (2, '9093260707', 'Nihon Kohden', 'TEC-5531E', '298961', 1010);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (2, '5232898299', 'Dyne', 'UCP210', '328857', 1001);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (3, '8799732920', 'Suction Unit', '7E-D', '358754', 1008);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (3, '9697598723', 'DevillBiss', '7305P-D', '388650', 1003);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (4, '0820111489', 'Mecamed', 'Mastervent', '418546', 1008);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (4, '0078588888', 'Mecamed', 'BSC-TS', '448442', 1005);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (5, '9607778522', 'And', 'TM-2430', '29896', 1001);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (6, '6093464782', 'Dongjiang', 'PM-100A, PM-200A', '59792', 1002);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (6, '9845112589', 'Contec', 'CMS-7000, CMS-8000', '89688', 1003);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (6, '0678176849', 'Mindray', 'MEC-1000', '119584', 1004);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (7, '2118447852', 'Terumo', 'TE-331, TE-171', '149480', 1005);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (8, '7226329245', 'Rosch', 'ITR-2S', '179377', 1006);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (9, '3752018172', 'Compex', 'Performance, Energy', '209273', 1007);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (10, '0488542487', 'Choicemmed', 'MD300K1', '239169', 1008);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (11, '7974458934', 'Mecamed', '2001C', '269065', 1009);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (11, '9093269872', 'Cardiotecnica', 'RG-401', '298961', 1010);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (12, '5232898299', 'Choicemmed', 'MD-300K1', '328857', 1007);
INSERT INTO Equipo (idTipoEquipo, nroSerie, marca, modelo, codigoInterno, idCliente) VALUES (13, '5232898234', 'Eym', 'C-12', '328857', 1003);
GO
--SELECT * FROM Equipo

INSERT INTO Estado VALUES ('Pendiente de resupuesto');
INSERT INTO Estado VALUES ('Presupuestado');
INSERT INTO Estado VALUES ('Presupuesto aprobado');
INSERT INTO Estado VALUES ('Reparado');
INSERT INTO Estado VALUES ('Entregado');
INSERT INTO Estado VALUES ('Devolucion (sin reparar)');
GO
--SELECT * FROM Estado

--SELECT idEquipo, idTipoEquipo, nroSerie, c.nombre AS Cliente, c.direccion, c.razonSocial FROM Equipo e
--INNER JOIN Cliente c
--ON c.idCliente = e.idCliente
--WHERE c.idCliente = 1005

USE PROJECT_PP2_DB
GO
INSERT INTO Servicio (nroService, tipoService, cantidadEquipos, fechaInicio, fechaFin,
fechaPresupuestado, fechaPresupAprobado, tecnicoACargo, idCliente, idEquipo, idEstado)
VALUES (1, 'reparacion', 1, '2022-11-14', '2022-11-17', '2022-11-15', '2022-11-16', 103, 1005, 25, 4);
INSERT INTO Servicio (nroService, tipoService, cantidadEquipos, fechaInicio, fechaFin,
fechaPresupuestado, fechaPresupAprobado, tecnicoACargo, idCliente, idEquipo, idEstado)
VALUES (2, 'reparacion', 1, '2022-11-14', '2022-11-17', '2022-11-15', '2022-11-16', 102, 1004, 12, 5);
INSERT INTO Servicio (nroService, tipoService, cantidadEquipos, fechaInicio, fechaFin,
fechaPresupuestado, fechaPresupAprobado, tecnicoACargo, idCliente, idEquipo, idEstado)
VALUES (3, 'reparacion', 1, '2022-11-7', '2022-11-10', '2022-11-7','', 101, 1010, 6, 6);
INSERT INTO Servicio (nroService, tipoService, cantidadEquipos, fechaInicio, fechaFin,
fechaPresupuestado, fechaPresupAprobado, tecnicoACargo, idCliente, idEquipo, idEstado)
VALUES (4, 'reparacion', 1, '2022-11-7', '2022-11-8', '2022-11-7', '2022-11-7', 100, 1008, 10, 5);
INSERT INTO Servicio (nroService, tipoService, cantidadEquipos, fechaInicio, fechaFin,
fechaPresupuestado, fechaPresupAprobado, tecnicoACargo, idCliente, idEquipo, idEstado)
VALUES (5, 'reparacion', 1, '2022-10-9', '2022-10-17', '2022-10-10', '2022-10-16', 101, 1009, 20, 4);
INSERT INTO Servicio (nroService, tipoService, cantidadEquipos, fechaInicio, fechaFin,
fechaPresupuestado, fechaPresupAprobado, tecnicoACargo, idCliente, idEquipo, idEstado)
VALUES (6, 'reparacion', 1, '2022-9-14', '', '2022-9-14', '', 103, 1007, 11, 2);
INSERT INTO Servicio (nroService, tipoService, cantidadEquipos, fechaInicio, fechaFin,
fechaPresupuestado, fechaPresupAprobado, tecnicoACargo, idCliente, idEquipo, idEstado)
VALUES (7, 'reparacion', 1, '2022-9-11', '2022-9-14', '2022-9-11', '', 102, 1004, 3, 6);
INSERT INTO Servicio (nroService, tipoService, cantidadEquipos, fechaInicio, fechaFin,
fechaPresupuestado, fechaPresupAprobado, tecnicoACargo, idCliente, idEquipo, idEstado)
VALUES (8, 'reparacion', 1, '2022-9-1', '2022-9-17', '2022-9-15', '2022-9-16', 103, 1005, 25, 4);
INSERT INTO Servicio (nroService, tipoService, cantidadEquipos, fechaInicio, fechaFin,
fechaPresupuestado, fechaPresupAprobado, tecnicoACargo, idCliente, idEquipo, idEstado)
VALUES (9, 'reparacion', 1, '2022-8-14', '2022-8-17', '2022-8-15', '2022-8-16', 101, 1001, 11, 4);
INSERT INTO Servicio (nroService, tipoService, cantidadEquipos, fechaInicio, fechaFin,
fechaPresupuestado, fechaPresupAprobado, tecnicoACargo, idCliente, idEquipo, idEstado)
VALUES (10, 'reparacion', 1, '2022-8-13', '2022-8-13', '2022-8-13', '2022-8-13', 100, 1006, 15, 5);