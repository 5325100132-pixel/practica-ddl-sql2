CREATE TABLE Departamentos (
	id_departamento INT IDENTITY(1,1) PRIMARY KEY,
	nombre_departamento VARCHAR(50) NOT NULL
);
GO

CREATE TABLE Empleados (
	id_empleado INT IDENTITY(1,1) PRIMARY KEY,
	nombre_completo VARCHAR(100) NOT NULL,
	id_departamento INT NOT NULL,
	CONSTRAINT FK_Empleado_Departamento FOREIGN KEY (id_departamento)
	REFERENCES Departamentos(id_departamento)
);
GO

ALTER TABLE Empleados
	ADD correo_electronico VARCHAR(100) UNIQUE;
GO

CREATE TABLE Tabla_Basura (
	id_prueba INT PRIMARY KEY,
	texto_temporal VARCHAR(20)
);
GO

TABLE Tabla_Basura;
GO
