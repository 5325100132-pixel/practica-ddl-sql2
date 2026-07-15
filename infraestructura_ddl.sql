-- 1. CREACIÓN DE TABLAS MAESTRAS
CREATE TABLE Departamentos (
	id_departamento INT IDENTITY(1,1) PRIMARY KEY,
	nombre_departamento VARCHAR(50) NOT NULL
);
GO

-- 2. CREACIÓN DE TABLAS SECUNDARIAS CON LLAVE FORÁNEA
CREATE TABLE Empleados (
	id_empleado INT IDENTITY(1,1) PRIMARY KEY,
	nombre_completo VARCHAR(100) NOT NULL,
	id_departamento INT NOT NULL,
	-- Regla de integridad referencial:
	CONSTRAINT FK_Empleado_Departamento FOREIGN KEY (id_departamento)
	REFERENCES Departamentos(id_departamento)
);
GO
-- 3. MODIFICACIÓN DE ESTRUCTURAS EXISTENTES
ALTER TABLE Empleados
	ADD correo_electronico VARCHAR(100) UNIQUE;
GO

- 4. ELIMINACIÓN PERMANENTE DE OBJETOS

--creamos una tabla para eliminar
CREATE TABLE Tabla_Basura (
	id_prueba INT PRIMARY KEY,
	texto_temporal VARCHAR(20)
);
GO

-- Destruimos la tabla recién creada
DROP TABLE Tabla_Basura;
GO
