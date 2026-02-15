CREATE TABLE TipoArchivo (
    idTipo CHAR(8) PRIMARY KEY,
    nombre_tipo VARCHAR(100) NOT NULL
);

CREATE TABLE Archivo (
    idArchivo CHAR(8) PRIMARY KEY,
    nombre_archivo VARCHAR(100) NOT NULL,
    tamaño INTEGER NOT NULL,
    contenido BYTEA NOT NULL,
    fecha_subida TIMESTAMP NOT NULL,
    descripcion TEXT,
    tipo_id CHAR(8) NOT NULL,
    FOREIGN KEY (tipo_id) REFERENCES TipoArchivo(idTipo)
);

CREATE TABLE Categoria (
    idCategoria CHAR(8) PRIMARY KEY,
    nombre_categoria VARCHAR(100) NOT NULL
);

CREATE TABLE ArchivoCategoria (
    archivo_id CHAR(8) NOT NULL,
    categoria_id CHAR(8) NOT NULL,
    PRIMARY KEY (archivo_id, categoria_id),
    FOREIGN KEY (archivo_id) REFERENCES Archivo(idArchivo),
    FOREIGN KEY (categoria_id) REFERENCES Categoria(idCategoria)
);
