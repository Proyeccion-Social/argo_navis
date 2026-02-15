INSERT INTO TipoArchivo VALUES ('1A2B3C4D', 'Imagen');
INSERT INTO TipoArchivo VALUES ('2B3C4D5E', 'Documento PDF');

INSERT INTO Archivo VALUES ('A1B2C3D4', 'foto1.jpg', 204800, decode('FFD8FFE0', 'hex'), '2025-09-08 14:35:00', 'Foto de muestra', '1A2B3C4D');
INSERT INTO Archivo VALUES ('B2C3D4E5', 'tesis.pdf', 1048576, decode('25504446', 'hex'), '2025-09-08 15:00:00', 'Tesis en PDF', '2B3C4D5E');

INSERT INTO Categoria VALUES ('C1D2E3F4', 'Universidad');
INSERT INTO Categoria VALUES ('D2E3F4A5', 'Personal');

INSERT INTO ArchivoCategoria VALUES ('A1B2C3D4', 'C1D2E3F4');
INSERT INTO ArchivoCategoria VALUES ('B2C3D4E5', 'C1D2E3F4');
INSERT INTO ArchivoCategoria VALUES ('B2C3D4E5', 'D2E3F4A5');
