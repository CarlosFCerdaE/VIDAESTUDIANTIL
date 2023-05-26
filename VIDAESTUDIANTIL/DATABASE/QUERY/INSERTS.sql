






------------------------------------------------------------------------------------------------------------------------
/*Facultad*/
INSERT INTO [CURRICULO].[FACULTAD](Nombre) VALUES
(N'Facultad de Ciencias Jur�dicas, Humanidades y Relaciones Internacionales'),
(N'Facultad de Ciencias M�dicas'),
(N'Facultad de Odontolog�a'),
(N'Facultad de Marketing, Dise�o y Ciencias de la Comunicaci�n'),
(N'Facultad de Ciencias Administrativas y Econ�micas'),
(N'Facultad de Ingenier�a y Arquitectura'),
(N'UAM College')

SELECT * FROM [CURRICULO].[FACULTAD]
------------------------------------------------------------------------------------------------------------------------
/*Carrera*/

INSERT INTO [CURRICULO].[CARRERA] (Nombre,IdFacultad) VALUES
(N'Derecho',1),
(N'Diplomacia y Relaciones Internacionales',1),
(N'Legal Case',1),
(N'Medicina',2),
(N'Psicolog�a',2),
(N'Odontolog�a',3),
(N'Marketing y Publicidad',4),
(N'Dise�o y Comunicaci�n Visual',4),
(N'Comunicaci�n y Relaciones P�blicas',4),
(N'Revista Red Jaguars',4),
(N'Administraci�n de Empresas',5),
(N'Contabilidad y Finanzas',5),
(N'Econom�a Empresarial',5),
(N'Negocios Internacionales',5),
(N'Arquitectura',6),
(N'Ingenier�a Industrial',6),
(N'Ingenier�a Civil',6),
(N'Ingenier�a en Sistemas de Informaci�n',6),
(N'Strategic Marketing',7),
(N'Global Finance',7),
(N'Global Management',7)

------------------------------------------------------------------------------------------------------------------------
/*Rol*/
INSERT INTO [SISTEMA].[ROL](Nombre) VALUES
(N'Estudiante Estandar'),
(N'Empresa Estandar'),
(N'Empleado Estandar'),
(N'Empleado Admin')


------------------------------------------------------------------------------------------------------------------------
/*Usuario*/

INSERT INTO [SISTEMA].[USUARIO](NombreDeUsuario, Nombre, SegundoNombre, Apellido, SegundoApellido, Correo, Telefono, Contrasena, IdRol)VALUES
(N'LuisEGarciaF', N'Luis', N'Enrique', N'Garc�a', N'Fern�ndez', N'luisgarcia@gmail.com', N'85432109', N'Abc123xyz', 1),
(N'AnaMRamosP', N'Ana', N'Mar�a', N'Ramos', N'P�rez', N'anaramos@hotmail.com', N'86253479', N'Xyz456abc', 1),
(N'PedroALopezG', N'Pedro', N'Antonio', N'L�pez', N'G�mez', N'pedrolopez@yahoo.com', N'84651239', N'Pqr789lm', 1),
(N'MariaIMartinezH', N'Mar�a', N'Isabel', N'Mart�nez', N'Hern�ndez', N'mariaisabelm@gmail.com', N'82345678', N'Def456opq', 1),
(N'CarlosAGonzalezV', N'Carlos', N'Alberto', N'Gonz�lez', N'Vargas', N'cgonzalez@gmail.com', N'83456789', N'Ghi123rst', 1),
(N'SofiaCCastroS', N'Sof�a', N'Cristina', N'Castro', N'S�nchez', N'sofiacastro@gmail.com', N'82567432', N'Jkl567uvw', 1),
(N'JorgeLRamirezC', N'Jorge', N'Luis', N'Ram�rez', N'Ch�vez', N'jorgeluisr@hotmail.com', N'85562134', N'Mno456fgh', 1),
(N'MonicaRDiazL', N'M�nica', N'Raquel', N'D�az', N'Luna', N'monicadiaz@yahoo.com', N'88902345', N'Ijk123pqr', 1),
(N'JoseFMoralesP', N'Jos�', N'Francisco', N'Morales', N'P�rez', N'josemorales@gmail.com', N'84456789', N'Xyz123abc', 1),
(N'LauraISanchezG', N'Laura', N'Isabel', N'S�nchez', N'G�mez', N'lauraisabels@gmail.com', N'82564890', N'Pqr789lm', 1),
(N'MiguelAHernandezO', N'Miguel', N'�ngel', N'Hern�ndez', N'Ortiz', N'miguelangelh@hotmail.com', N'89765432', N'Abc456xyz', 1),
(N'CarmeMSuarezF', N'Carme', N'Mar�a', N'Su�rez', N'Fern�ndez', N'carmensuarez@yahoo.com', N'83657234', N'Def789opq', 1),
(N'JuanCRodriguezG', N'Jua', N'Carlos', N'Rodr�guez', N'Garc�a', N'juancarlosr@gmail.com', N'84567890', N'Ghi123rst', 1),
(N'FernandaBGomezL', N'Fernanda', N'Beatriz', N'G�mez', N'L�pez', N'fernandagomez@gmail.com', N'82234567', N'Jkl456uvw', 1),
(N'ArturoRP�rezV', N'Arturo', N'Roberto', N'P�rez', N'V�zquez', N'arturoperez@hotmail.com', N'89907654', N'Mno789fgh', 1),
(N'CarolinaISantosS', N'Carolina', N'Isabel', N'Santos', N'S�nchez', N'carolinasantos@yahoo.com', N'88890123', N'Ijk456pqr', 1),
(N'ManuelAJim�nezR', N'Manuel', N'Antonio', N'Jim�nez', N'Romero', N'manueljimenez@gmail.com', N'85793421', N'Xyz789abc', 1),
(N'SaraCL�pezRamos', N'Sara', N'Cristina', N'L�pez', N'Ramos', N'saralopez@gmail.com', N'84627908', N'Pqr123lm', 1),
(N'Andr�sFGarc�aL', N'Andr�s', N'Fernando', N'Garc�a', N'Luna', N'andresgarcia@hotmail.com', N'88881234', N'AbDef789opq', 1)


 ------------------------------------------------------------------------------------------------------------------------
/*Estado Estudiante*/

INSERT INTO [CURRICULO].[ESTADOESTUDIANTE](Estado) VALUES
(N'Activo'),
(N'Inactivo'),
(N'Suspendido')

 ------------------------------------------------------------------------------------------------------------------------
/*Estudiante*/

INSERT INTO [CURRICULO].[ESTUDIANTE](Cif,Semestre,FotoPerfil,IdEstadoEstudiante,IdUsuario) VALUES

 (12345678, 2, NULL, 1, 1),
 (23456789, 3, NULL, 1, 2),
 (34567890, 4, NULL, 1, 3),
 (45678901, 5, NULL, 1, 4),
 (56789012, 6, NULL, 1, 5),
 (67890123, 7, NULL, 1, 6),
 (78901234, 8, NULL, 1, 7),
 (89012345, 9, NULL, 1, 8),
 (90123456, 10, NULL,1,9),
 (12347890, 1, NULL, 1, 10),
 (23458901, 2, NULL, 1, 11),
 (34569012, 3, NULL, 1, 12),
 (45670123, 4, NULL, 1, 13),
 (56781234, 5, NULL, 1, 14),
 (67892345, 6, NULL, 1, 15),
 (78903456, 7, NULL, 1, 16),
 (89014567, 8, NULL, 1, 17),
 (90125678, 9, NULL, 1, 18),
 (12346789, 10, NULL, 1, 19)

 ------------------------------------------------------------------------------------------------------------------------
/*Estudiante Carrera*/

INSERT INTO [CURRICULO].[ESTUDIANTECARRERA](IdEstudiante,IdCarrera) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(1, 10),
(2, 16),
(3, 12),
(4, 6),
(5, 1)

 ------------------------------------------------------------------------------------------------------------------------
/*Educacion*/

INSERT INTO [CURRICULO].[EDUCACION] (InstitucionEducativa, Titulo, FechaInicio, FechaFinalizacion, PromedioCalificaciones, AreaEstudio, IdEstudiante) 
VALUES
(N'Instituto Nacional Aut�nomo de Nicaragua', N'Bachiller en Ciencias y Letras', CAST('2015-02-15' AS Date), CAST('2020-11-20' AS Date), CAST(85.0 AS Decimal(3, 1)), N'Managua', 1),
(N'Instituto Maestro Gabriel', N'Bachiller en Ciencias y Letras', CAST('2015-03-01' AS Date), CAST('2020-12-05' AS Date), CAST(92.0 AS Decimal(3, 1)), N'Managua', 2),
(N'Instituto de Secundaria San Francisco', N'Bachiller en Ciencias y Letras', CAST('2015-02-20' AS Date), CAST('2020-11-25' AS Date), CAST(88.0 AS Decimal(3, 1)), N'Managua', 3),
(N'Colegio Internacional de Nicaragua', N'Bachiller en Ciencias y Letras', CAST('2015-03-15' AS Date), CAST('2020-12-10' AS Date), CAST(91.0 AS Decimal(3, 1)), N'Managua', 4),
(N'Instituto Bautista de Nicaragua', N'Bachiller en Ciencias y Letras', CAST('2015-03-10' AS Date), CAST('2020-12-15' AS Date), CAST(89.0 AS Decimal(3, 1)), N'Managua', 5),
(N'Instituto de Secundaria San Jos�', N'Bachiller en Ciencias y Letras', CAST('2015-02-25' AS Date), CAST('2020-11-30' AS Date), CAST(86.0 AS Decimal(3, 1)), N'Managua', 6),
(N'Instituto de Secundaria Am�rica', N'Bachiller en Ciencias y Letras', CAST('2015-03-05' AS Date), CAST('2020-12-01' AS Date), CAST(93.0 AS Decimal(3, 1)), N'Managua', 7),
(N'Instituto de Secundaria Julio Cort�zar', N'Bachiller en Ciencias y Letras', CAST('2015-03-10' AS Date), CAST('2020-12-05' AS Date), CAST(87.0 AS Decimal(3, 1)), N'Managua', 8),
(N'Instituto de Secundaria Monte Tabor', N'Bachiller en Ciencias y Letras', CAST('2015-02-28' AS Date), CAST('2020-11-25' AS Date), CAST(90.0 AS Decimal(3, 1)), N'Managua', 9),
(N'Instituto de Secundaria San Agust�', N'Bachiller en Ciencias y Letras', CAST('2015-03-01' AS Date), CAST('2020-12-01' AS Date), CAST(89.0 AS Decimal(3, 1)), N'Managua', 10),
(N'Instituto Pedag�gico La Salle', N'Bachiller en Ciencias y Letras', CAST('2015-02-20' AS Date), CAST('2020-11-20' AS Date), CAST(84.0 AS Decimal(3, 1)), N'Managua', 11),
(N'Instituto de Secundaria San Judas Tadeo', N'Bachiller en Ciencias y Letras', CAST('2015-03-05' AS Date), CAST('2020-12-05' AS Date), CAST(91.0 AS Decimal(3, 1)), N'Managua', 12),
(N'Instituto de Secundaria Salesiano San Juan Bosco', N'Bachiller en Ciencias y Letras', CAST('2015-03-10' AS Date), CAST('2020-12-10' AS Date), CAST(92.0 AS Decimal(3, 1)), N'Managua', 13),
(N'Instituto de Secundaria Maestro Rigoberto L�pez P�rez', N'Bachiller en Ciencias y Letras', CAST('2015-02-15' AS Date), CAST('2020-11-15' AS Date), CAST(83.0 AS Decimal(3, 1)), N'Managua', 14)


  ------------------------------------------------------------------------------------------------------------------------
/*Nivel Experiencia*/


INSERT INTO [SISTEMA].[NIVELEXPERIENCIA] (Nombre)
VALUES 
  (N'Principiante'),
  (N'Intermedio'),
  (N'Avanzado'),
  (N'Experto'),
  (N'Referente'),
  (N'Lider');


------------------------------------------------------------------------------------------------------------------------
/*Habilidad*/

INSERT INTO [CURRICULO].[HABILIDAD] (Nombre, IdNivelExperiencia, IdEstudiante)
VALUES
    (N'Liderazgo', 5, 7),
    (N'Programaci�n', 6, 12),
    (N'Comunicaci�n efectiva', 4, 3),
    (N'Marketing digital', 2, 17),
    (N'Gesti�n de proyectos', 3, 8),
    (N'Creatividad', 4, 1),
    (N'Resoluci�n de problemas', 5, 14),
    (N'Ingl�s', 6, 19),
    (N'Dise�o gr�fico', 2, 10),
    (N'Trabajo en equipo', 4, 6),
    (N'Adaptabilidad', 5, 2),
    (N'Investigaci�n', 3, 9),
    (N'Negociaci�n', 4, 15),
    (N'An�lisis de datos', 6, 4);

------------------------------------------------------------------------------------------------------------------------
/*Certificacion*/

INSERT INTO [CURRICULO]	.[CERTIFICACION] ([Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante])
VALUES
    (N'Certificaci�n en Marketing Digital', CAST(N'2022-06-15' AS Date), N'Google', 5),
    (N'Certificaci�n en Dise�o Gr�fico', CAST(N'2023-02-22' AS Date), N'Adobe', 14),
    (N'Certificaci�n en Administraci�n de Redes', CAST(N'2023-01-08' AS Date), N'Cisco', 9),
    (N'Certificaci�n en Seguridad Inform�tica', CAST(N'2022-09-12' AS Date), N'CompTIA', 1),
    (N'Certificaci�n en Finanzas Personales', CAST(N'2022-11-30' AS Date), N'Banco Central de Nicaragua', 11),
    (N'Certificaci�n en Gesti�n de Proyectos', CAST(N'2023-04-18' AS Date), N'Project Management Institute', 3),
    (N'Certificaci�n en Ingl�s Avanzado', CAST(N'2022-08-10' AS Date), N'Cambridge English', 7),
    (N'Certificaci�n en Desarrollo Web', CAST(N'2023-03-07' AS Date), N'Udemy', 17),
    (N'Certificaci�n en Marketing Digital', CAST(N'2022-10-02' AS Date), N'HubSpot', 4),
    (N'Certificaci�n en Desarrollo de Aplicaciones M�viles', CAST(N'2022-12-27' AS Date), N'Apple', 8),
    (N'Certificaci�n en Administraci�n de Servidores Linux', CAST(N'2023-01-22' AS Date), N'Red Hat', 12),
    (N'Certificaci�n en Contabilidad Avanzada', CAST(N'2023-04-03' AS Date), N'Colegio de Contadores P�blicos de Nicaragua', 19),
    (N'Certificaci�n en Recursos Humanos', CAST(N'2022-07-16' AS Date), N'Society for Human Resource Management', 6),
    (N'Certificaci�n en Gesti�n de Proyectos', CAST(N'2023-02-12' AS Date), N'Microsoft', 2),
    (N'Certificaci�n en Marketing Digital', CAST(N'2022-11-10' AS Date), N'Facebook', 16),
    (N'Certificaci�n en Seguridad Cibern�tica', CAST(N'2023-03-25' AS Date), N'International Association of Computer Science and Information Technology', 10),
    (N'Certificaci�n en Desarrollo de Videojuegos', CAST(N'2023-04-30' AS Date), N'Unity', 15),
    (N'Certificaci�n en Ingl�s Comercial', CAST(N'2022-09-01' AS Date), N'TOEFL', 13),
    (N'Certificaci�n en Gesti�n de la Cadena de Suministro', CAST(N'2022-08-25' AS Date), N'Council of Supply Chain Management Professionals', 18);


------------------------------------------------------------------------------------------------------------------------
/*Referencia*/

INSERT [CURRICULO].[REFERENCIA] ([Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante])
VALUES
    (N'Juan', N'P�rez', N'juanperez@gmail.com', N'8675309', N'Amigo', 1),
    (N'Mar�a', N'Gonz�lez', N'mariagonzalez@yahoo.com', N'8123456', N'Familiar', 2),
    (N'Alejandro', N'Hern�ndez', N'ahernandez@hotmail.com', N'8554321', N'Colega', 3),
    (N'Sof�a', N'Guti�rrez', N'sofiagutierrez@gmail.com', N'8000123', N'Profesor', 4),
    (N'Pedro', N'Mart�nez', N'pmartinez@yahoo.com', N'8888888', N'Jefe', 5),
    (N'Carmen', N'L�pez', N'carmenlopez@gmail.com', N'8765432', N'Mentor', 6),
    (N'Luis', N'Ram�rez', N'lramirez@hotmail.com', N'8222222', N'Compa�ero', 7),
    (N'Ana', N'S�nchez', N'anasanchez@yahoo.com', N'8333333', N'Amigo', 8),
    (N'Jorge', N'Garc�a', N'jorgegarcia@gmail.com', N'8999999', N'Familiar', 9),
    (N'Marta', N'V�squez', N'martavasquez@hotmail.com', N'8111111', N'Colega', 10),
    (N'Roberto', N'Reyes', N'rreyes@yahoo.com', N'8444444', N'Profesor', 11),
    (N'Elena', N'D�az', N'elenadiaz@gmail.com', N'8888123', N'Jefe', 12),
    (N'Diego', N'G�mez', N'diegogomez@yahoo.com', N'8999231', N'Mentor', 13),
    (N'Isabel', N'Torres', N'isabeltorres@gmail.com', N'8222233', N'Compa�ero', 14),
    (N'Ra�l', N'Fern�ndez', N'raulfernandez@yahoo.com', N'8000567', N'Amigo', 15),
    (N'Luc�a', N'Navarro', N'lucianavarro@hotmail.com', N'8111112', N'Familiar', 16),
    (N'Pablo', N'Rojas', N'projas@gmail.com', N'8333332', N'Colega', 17),
    (N'Sara', N'Sosa', N'sarasosa@yahoo.com', N'8555555', N'Profesor', 18),
    (N'Eduardo', N'Gallardo', N'egallardo@hotmail.com', N'8888666', N'Jefe', 19);

------------------------------------------------------------------------------------------------------------------------
/*Experiencia Laboral*/

INSERT [CURRICULO].[EXPERIENCIALABORAL] ([NombreEmpresa], [Cargo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante])
VALUES
    (N'ABC Company', N'Gerente de ventas', CAST(N'2020-06-20' AS Date), CAST(N'2021-12-31' AS Date), N'22755678', 1),
    (N'XYZ Corporation', N'Asistente administrativo', CAST(N'2020-08-10' AS Date), CAST(N'2022-01-15' AS Date), N'22098763', 2),
    (N'123 Industries', N'Contador', CAST(N'2020-05-15' AS Date), CAST(N'2021-11-30' AS Date), N'23321897', 3),
    (N'Acme Solutions', N'Ingeniero de sistemas', CAST(N'2020-02-25' AS Date), CAST(N'2022-02-28' AS Date), N'26309005', 4),
    (N'Global Services', N'Recepcionista', CAST(N'2020-11-12' AS Date), CAST(N'2022-03-31' AS Date), N'21445577', 5),
    (N'Financial Experts', N'Analista financiero', CAST(N'2020-07-03' AS Date), CAST(N'2021-09-30' AS Date), N'21123467', 6),
    (N'Design Innovators', N'Dise�ador gr�fico', CAST(N'2020-03-28' AS Date), CAST(N'2022-04-15' AS Date), N'27765412', 7),
    (N'Talent Management', N'Jefe de recursos humanos', CAST(N'2020-09-18' AS Date), CAST(N'2022-05-31' AS Date), N'22897755', 8),
    (N'Sales Pro', N'Ejecutivo de ventas', CAST(N'2020-04-21' AS Date), CAST(N'2021-12-31' AS Date), N'21557893', 9),
    (N'Business Solutions', N'Asesor comercial', CAST(N'2020-01-10' AS Date), CAST(N'2022-06-30' AS Date), N'26678912', 10),
    (N'Accounting Experts', N'Asistente de contabilidad', CAST(N'2020-10-05' AS Date), CAST(N'2022-07-15' AS Date), N'23765432', 11),
    (N'Production Masters', N'Supervisor de producci�n', CAST(N'2020-06-15' AS Date), CAST(N'2022-08-31' AS Date), N'22234567', 12),
    (N'Service Solutions', N'Asesor de servicios', CAST(N'2020-02-20' AS Date), CAST(N'2022-09-30' AS Date), N'25578901', 13),
    (N'Tech Innovations', N'Analista de sistemas', CAST(N'2020-12-05' AS Date), CAST(N'2022-10-15' AS Date), N'22345678', 14),
    (N'Talent Management', N'Asistente de recursos humanos', CAST(N'2020-09-01' AS Date), CAST(N'2022-11-30' AS Date), N'24456789', 15),
    (N'Logistics Solutions', N'Jefe de log�stica', CAST(N'2020-05-10' AS Date), CAST(N'2022-12-31' AS Date), N'28876543', 16),
    (N'Sales Pro', N'Asesor de ventas', CAST(N'2020-01-15' AS Date), CAST(N'2022-01-31' AS Date), N'24567890', 17),
    (N'Financial Experts', N'Gerente de finanzas', CAST(N'2020-08-25' AS Date), CAST(N'2022-02-28' AS Date), N'29987654', 18),
    (N'Production Masters', N'Asistente de producci�n', CAST(N'2020-04-30' AS Date), CAST(N'2022-03-15' AS Date), N'21122334', 19);

------------------------------------------------------------------------------------------------------------------------
/*Empresa*/

INSERT [OFERTALABORAL].[EMPRESA] ([Nombre], [AreaDeTrabajo], [PaginaWeb]) 
VALUES 
    (N'Supermercados La Colonia', N'Venta al por menor', NULL),
    (N'Banco de Am�rica Central', N'Servicios financieros', NULL),
    (N'Distribuidora Santo Domingo', N'Distribuci�n de productos', NULL),
    (N'Hotel Crowne Plaza', N'Hospitalidad y turismo', NULL),
    (N'Industrias La Constancia', N'Producci�n y fabricaci�n', NULL),
    (N'LAFISE Banco', N'Servicios financieros', NULL),
    (N'Gasolinera Uno', N'Venta de combustibles', NULL),
    (N'Telef�nica Movistar', N'Telecomunicaciones', NULL),
    (N'S�per Selectos', N'Venta al por menor', NULL),
    (N'BAC Credomatic', N'Servicios financieros', NULL),
    (N'Hotel Intercontinental Managua', N'Hospitalidad y turismo', NULL),
    (N'Coca-Cola FEMSA', N'Producci�n y fabricaci�n', NULL),
    (N'Banco Popular', N'Servicios financieros', NULL),
    (N'Distribuidora Gonz�lez', N'Distribuci�n de productos', NULL),
    (N'Puma Energy', N'Venta de combustibles', NULL),
    (N'Banco ProCredit', N'Servicios financieros', NULL),
    (N'McDonald''s', N'Hospitalidad y turismo', NULL),
    (N'Claro Nicaragua', N'Telecomunicaciones', NULL),
    (N'Tiendas Extra', N'Venta al por menor', NULL);

------------------------------------------------------------------------------------------------------------------------
/*Direccion*/
INSERT [OFERTALABORAL].[DIRECCION] ([Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) 
VALUES 
    (N'Managua', N'Managua', NULL, N'2222-3333', 1),
    (N'Le�n', N'Le�n', NULL, N'2333-4444', 2),
    (N'Chinandega', N'Chinandega', NULL, N'2222-3333', 3),
    (N'Granada', N'Granada', NULL, N'2333-4444', 4),
    (N'Masaya', N'Masaya', NULL, N'2222-3333', 5),
    (N'Rivas', N'Rivas', NULL, N'2333-4444', 6),
    (N'Carazo', N'Jinotepe', NULL, N'2222-3333', 7),
    (N'Estel�', N'Estel�', NULL, N'2333-4444', 8),
    (N'Matagalpa', N'Matagalpa', NULL, N'2222-3333', 9),
    (N'Boaco', N'Boaco', NULL, N'2333-4444', 10),
    (N'Chontales', N'Juigalpa', NULL, N'2222-3333', 11),
    (N'Jinotega', N'Jinotega', NULL, N'2333-4444', 12),
    (N'Atl�ntico Norte', N'Puerto Cabezas', NULL, N'2222-3333', 13),
    (N'Atl�ntico Sur', N'Bluefields', NULL, N'2333-4444', 14),
    (N'Nueva Segovia', N'Ocotal', NULL, N'2222-3333', 15),
    (N'Madriz', N'Somoto', NULL, N'2333-4444', 16),
    (N'R�o San Juan', N'San Carlos', NULL, N'2222-3333', 17),
    (N'RACCN', N'Puerto Lempira', NULL, N'2333-4444', 18),
    (N'RACCS', N'Bluefields', NULL, N'2222-3333', 19);


------------------------------------------------------------------------------------------------------------------------
/*Oferta Laboral*/

INSERT [OFERTALABORAL].[OFERTALABORAL] ([Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [Moneda],[TipoTrabajo],[Cargo], [AreaDeTrabajo], [IdEmpresa])
VALUES 
    (N'Ingeniero', N'Se busca ingeniero para proyecto de construcci�n', 3, N'Lunes - Viernes de 9 am a 5 pm', CAST(700.00 AS Decimal(10, 2)),N'Dolares', N'Plazo Fijo', N'Ingeniero de Construcci�n', N'Ingenier�a', 5),
    (N'Licenciado', N'Se busca licenciado para departamento de ventas', 4, N'Lunes - Viernes de 9 am a 5 pm', CAST(600.00 AS Decimal(10, 2)),N'Dolares', N'Pasantia', N'Asistente de Ventas', N'Ventas', 12),
    (N'Ingeniero', N'Se busca ingeniero para proyecto de automatizaci�n', 5, N'Lunes - Viernes de 9 am a 5 pm', CAST(800.00 AS Decimal(10, 2)),N'Dolares', N'Plazo Fijo', N'Ingeniero de Automatizaci�n', N'Ingenier�a', 8),
    (N'Licenciado', N'Se busca licenciado para departamento de recursos humanos', 2, N'Lunes - Viernes de 9 am a 5 pm', CAST(500.00 AS Decimal(10, 2)),N'Dolares', N'Pasantia', N'Asistente de Recursos Humanos', N'Recursos Humanos', 2),
    (N'Ingeniero', N'Se busca ingeniero para proyecto de desarrollo de software', 6, N'Lunes - Viernes de 9 am a 5 pm', CAST(750.00 AS Decimal(10, 2)),N'Dolares', N'Plazo Fijo', N'Ingeniero de Desarrollo de Software', N'Tecnolog�a', 14),
    (N'Licenciado', N'Se busca licenciado para departamento de finanzas', 3, N'Lunes - Viernes de 9 am a 5 pm', CAST(700.00 AS Decimal(10, 2)),N'Dolares', N'Plazo Fijo', N'Analista Financiero', N'Finanzas', 19),
    (N'Ingeniero', N'Se busca ingeniero para proyecto de telecomunicaciones', 4, N'Lunes - Viernes de 9 am a 5 pm', CAST(600.00 AS Decimal(10, 2)),N'Dolares', N'Pasantia', N'Ingeniero de Telecomunicaciones', N'Telecomunicaciones', 9),
    (N'Licenciado', N'Se busca licenciado para departamento de marketing', 5, N'Lunes - Viernes de 9 am a 5 pm', CAST(800.00 AS Decimal(10, 2)),N'Dolares', N'Plazo Fijo', N'Especialista en Marketing Digital', N'Marketing', 6),
    (N'Ingeniero', N'Se busca ingeniero para proyecto de construcci�n', 2, N'Lunes - Viernes de 9 am a 5 pm', CAST(500.00 AS Decimal(10, 2)),N'Dolares', N'Pasantia', N'Asistente de Ingenier�a Civil', N'Ingenier�a', 3),
    (N'Ingeniero', N'Se busca ingeniero para el dise�o de estructuras met�licas', 4, N'Lunes - Viernes de 9 am a 5 pm', CAST(700.00 AS Decimal(10, 2)),N'Dolares', N'Plazo Fijo', N'Dise�ador de Estructuras', N'Ingenier�a Civil', 7),
    (N'Licenciado', N'Se busca licenciado para el �rea de marketing y publicidad', 2, N'Lunes - Viernes de 9 am a 5 pm', CAST(550.00 AS Decimal(10, 2)),N'Dolares', N'Plazo Fijo', N'Especialista en Marketing', N'Marketing y Publicidad', 12),
    (N'Ingeniero', N'Se busca ingeniero para el desarrollo de software', 5, N'Lunes - Viernes de 9 am a 5 pm', CAST(750.00 AS Decimal(10, 2)),N'Dolares', N'Plazo Fijo', N'Desarrollador de Software', N'Ingenier�a de Sistemas', 15),
    (N'Licenciado', N'Se busca licenciado para el departamento de recursos humanos', 3, N'Lunes - Viernes de 9 am a 5 pm', CAST(600.00 AS Decimal(10, 2)),N'Dolares', N'Plazo Fijo', N'Especialista en Recursos Humanos', N'Recursos Humanos', 3),
    (N'Ingeniero', N'Se busca ingeniero para el �rea de control de calidad', 6, N'Lunes - Viernes de 9 am a 5 pm', CAST(800.00 AS Decimal(10, 2)),N'Dolares', N'Plazo Fijo', N'Inspector de Calidad', N'Ingenier�a Industrial', 18)

------------------------------------------------------------------------------------------------------------------------
/*Oferta Laboral Carrera*/

INSERT INTO [OFERTALABORAL].[OFERTALABORALCARRERA](IdOfertaLaboral,IdCarrera) VALUES
(1,17),
(1,15),
(2,7),
(2,11),
(3,16),
(3,18),
(4,11),
(5,18),
(6,12),
(7,16),
(8,7),
(8,19),
(9,17),
(9,15),
(10,15),
(10,17),
(11,7),
(11,19),
(12,18),
(13,11),
(14,16),
(14,11)


------------------------------------------------------------------------------------------------------------------------
/*Vistas Empresa Estudiante*/

INSERT [OFERTALABORAL].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) 
VALUES 
    (1, 15, 65, CAST(N'2023-03-18' AS Date)),
    (2, 2, 35, CAST(N'2023-02-10' AS Date)),
    (3, 11, 55, CAST(N'2023-03-26' AS Date)),
    (4, 18, 70, CAST(N'2023-02-25' AS Date)),
    (5, 1, 50, CAST(N'2023-01-15' AS Date)),
    (6, 10, 40, CAST(N'2023-02-15' AS Date)),
    (7, 12, 15, CAST(N'2023-04-02' AS Date)),
    (8, 16, 10, CAST(N'2023-04-10' AS Date)),
    (9, 6, 45, CAST(N'2023-02-20' AS Date)),
    (10, 4, 25, CAST(N'2023-04-05' AS Date)),
    (11, 5, 60, CAST(N'2023-01-28' AS Date)),
    (12, 14, 30, CAST(N'2023-02-28' AS Date)),
    (13, 8, 20, CAST(N'2023-04-01' AS Date)),
    (14, 9, 70, CAST(N'2023-01-23' AS Date)),
    (15, 19, 20, CAST(N'2023-04-15' AS Date)),
    (16, 7, 90, CAST(N'2023-03-12' AS Date)),
    (17, 13, 95, CAST(N'2023-01-20' AS Date)),
    (18, 3, 80, CAST(N'2023-03-22' AS Date)),
    (19, 17, 40, CAST(N'2023-01-30' AS Date))


------------------------------------------------------------------------------------------------------------------------
/*Postulacion*/

SELECT * FROM [OFERTALABORAL].[OFERTALABORAL]

INSERT [OFERTALABORAL].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) 
VALUES 
    (1, 2, 0),
    (2, 3, 1),
    (3, 4, 0),
    (4, 5, 1),
    (5, 6, 0),
    (6, 7, 1),
    (7, 8, 0),
    (8, 9, 1),
    (9, 10, 0),
    (10, 11, 1),
    (11, 12, 0),
    (12, 13, 1),
    (13, 14, 0),
    (14, 3, 1),
    (15, 4, 0),
    (16, 6, 1),
    (17, 9, 0),
    (18, 12, 1),
    (19, 13, 0)


