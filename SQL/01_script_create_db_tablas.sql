USE master
GO

CREATE DATABASE PROJECT_PP2_DB
GO

USE PROJECT_PP2_DB
GO

CREATE TABLE Empleado (
nroLegajo INT NOT NULL IDENTITY (100,1) PRIMARY KEY,
nombre VARCHAR (50) NOT NULL,
telefono VARCHAR (20),
direccion VARCHAR (50),
codigoPostal VARCHAR (6),
email VARCHAR(50),
usuario VARCHAR(50) UNIQUE NOT NULL,
contrasenia VARCHAR(50),
cargo VARCHAR(50) NOT NULL,
fechaIngreso DATE
)
GO

CREATE TABLE ServicioAsignado (
idServiceAsignado INT NOT NULL PRIMARY KEY,
fechaAsignado DATE NOT NULL,
nroLegajo INT NOT NULL,
idService INT NOT NULL
)
GO

CREATE TABLE Servicio (
idService INT NOT NULL IDENTITY (5000,1) PRIMARY KEY,
nroService VARCHAR(10) NOT NULL,
tipoService VARCHAR(10) NOT NULL,
cantidadEquipos INT,
fechaInicio DATE,
fechaFin DATE,
fechaPresupuestado DATE,
fechaPresupAprobado DATE,
tecnicoACargo INT NOT NULL,
idCliente INT NOT NULL,
idEquipo INT NOT NULL,
idEstado INT NOT NULL
)
GO

CREATE TABLE Cliente (
idCliente INT NOT NULL IDENTITY (1001,1) PRIMARY KEY,
nombre VARCHAR(50) NOT NULL,
telefono VARCHAR(20),
direccion VARCHAR(50),
codigoPostal VARCHAR(6),
email VARCHAR(50),
condicionAfip VARCHAR(30) NOT NULL,
razonSocial VARCHAR(50)
)
GO

CREATE TABLE Equipo (
idEquipo INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
idTipoEquipo INT NOT NULL,
nroSerie VARCHAR(20) NOT NULL,
marca VARCHAR(50),
modelo VARCHAR(20),
fechaIngreso DATE DEFAULT (GETDATE()),
fechaEgreso DATE,
codigoInterno VARCHAR(20),
Anexos VARCHAR(200),
--idEquipoIngresado INT NOT NULL,
idCLiente INT NOT NULL
)
GO

CREATE TABLE TipoEquipo (
idTipoEquipo INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
nombre VARCHAR(50),
)
GO

CREATE TABLE Estado (
idEstado INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
nombre VARCHAR(50)
)
GO

ALTER TABLE ServicioAsignado
ADD CONSTRAINT FK_ServicioAsignado_Empleado
FOREIGN KEY (nroLegajo) REFERENCES Empleado(nroLegajo)

ALTER TABLE ServicioAsignado
ADD CONSTRAINT FK_ServicioAsignado_Service
FOREIGN KEY (idService) REFERENCES Servicio(idService)

ALTER TABLE Servicio
ADD CONSTRAINT FK_Servicio_Empleado
FOREIGN KEY (tecnicoACargo) REFERENCES Empleado(nroLegajo)

ALTER TABLE Servicio
ADD CONSTRAINT FK_Servicio_Cliente
FOREIGN KEY (idCliente) REFERENCES Cliente(idCLiente)

ALTER TABLE Servicio
ADD CONSTRAINT FK_Servicio_Equipo
FOREIGN KEY (idEquipo) REFERENCES Equipo(idEquipo)

ALTER TABLE Servicio
ADD CONSTRAINT FK_Servicio_Estado
FOREIGN KEY (idEstado) REFERENCES Estado(idEstado)

ALTER TABLE Equipo
ADD CONSTRAINT FK_Equipo_TipoEquipo
FOREIGN KEY (idTipoEquipo) REFERENCES TipoEquipo(idTipoEquipo)

ALTER TABLE Equipo
ADD CONSTRAINT FK_Equipo_Cliente
FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)