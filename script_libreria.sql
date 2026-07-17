-- 1. Creación de la tabla maestra
CREATE TABLE Editoriales (
	id_editorial INT IDENTITY(1,1) PRIMARY KEY,
	nombre_editorial VARCHAR(50) NOT NULL,
	pais_origen VARCHAR(50) NULL
);
GO

-- 2. Creación de tabla con llave foránea
CREATE TABLE Libros (
	id_libro INT IDENTITY(1,1) PRIMARY KEY,
	titulo VARCHAR(100) NOT NULL,
	precio DECIMAL(10,2) NOT NULL,
	id_editorial INT NOT NULL,
	CONSTRAINT FK_Libro_Editorial FOREIGN KEY (id_editorial)
	REFERENCES Editoriales(id_editorial)
);
GO

-- 3. Modificando una tabla existente
ALTER TABLE Libros
ADD anio_publicacion INT NULL;
GO

-- 4. Destrucción de objetos
CREATE TABLE Tabla_Basura (
	id_basura INT PRIMARY KEY,
	texto VARCHAR(20)
);
GO

DROP TABLE Tabla_Basura;
GO
