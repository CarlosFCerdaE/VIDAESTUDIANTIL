USE [VidaEstudiantil2023]
GO
/****** Object:  Table [dbo].[CARRERA]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARRERA](
	[IdCarrera] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Estado] [bit] NULL,
	[IdFacultad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CERTIFICACION]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CERTIFICACION](
	[IdCertificacion] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[FechaObtencion] [date] NOT NULL,
	[InstitucionEmisora] [varchar](100) NOT NULL,
	[IdEstudiante] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCertificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DIRECCION]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DIRECCION](
	[IdDireccion] [int] IDENTITY(1,1) NOT NULL,
	[Departamento] [varchar](50) NOT NULL,
	[Municipio] [varchar](50) NOT NULL,
	[Notas] [varchar](300) NULL,
	[Telefono] [varchar](20) NOT NULL,
	[IdEmpresa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDireccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EDUCACION]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EDUCACION](
	[IdEducacion] [int] IDENTITY(1,1) NOT NULL,
	[InstitucionEducativa] [varchar](100) NOT NULL,
	[Titulo] [varchar](100) NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFinalizacion] [date] NOT NULL,
	[PromedioCalificaciones] [decimal](3, 1) NULL,
	[AreaEstudio] [varchar](100) NULL,
	[IdEstudiante] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEducacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[IdEmpleado] [int] NOT NULL,
	[Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPRESA]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPRESA](
	[IdEmpresa] [int] NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[AreaDeTrabajo] [varchar](50) NOT NULL,
	[PaginaWeb] [varchar](100) NULL,
	[Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTADOESTUDIANTE]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTADOESTUDIANTE](
	[IdEstadoEstudiante] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstadoEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTUDIANTE]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTUDIANTE](
	[IdEstudiante] [int] NOT NULL,
	[Cif] [int] NOT NULL,
	[Semestre] [int] NULL,
	[FotoPerfil] [varbinary](max) NULL,
	[UltimaModificacion] [date] NULL,
	[Estado] [bit] NULL,
	[IdEstadoEstudiante] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTUDIANTECARRERA]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTUDIANTECARRERA](
	[IdEstudiante] [int] NOT NULL,
	[IdCarrera] [int] NOT NULL,
 CONSTRAINT [PK_ESTUDIANTECARRERA] PRIMARY KEY CLUSTERED 
(
	[IdEstudiante] ASC,
	[IdCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXPERIENCIALABORAL]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EXPERIENCIALABORAL](
	[IdExperienciaLaboral] [int] IDENTITY(1,1) NOT NULL,
	[NombreTrabajo] [varchar](50) NOT NULL,
	[FechaInicio] [date] NOT NULL,
	[FechaFinalizacion] [date] NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[IdEstudiante] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdExperienciaLaboral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACULTAD]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACULTAD](
	[IdFacultad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFacultad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HABILIDAD]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HABILIDAD](
	[IdHabilidad] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[IdNivelExperiencia] [int] NULL,
	[IdEstudiante] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdHabilidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NIVELEXPERIENCIA]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NIVELEXPERIENCIA](
	[IdNivelExperiencia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdNivelExperiencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OFERTALABORAL]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OFERTALABORAL](
	[IdOfertaLaboral] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](100) NOT NULL,
	[Descripcion] [varchar](300) NOT NULL,
	[IdNivelExperiencia] [int] NULL,
	[Horario] [varchar](50) NOT NULL,
	[Salario] [decimal](10, 2) NOT NULL,
	[TipoTrabajo] [varchar](20) NOT NULL,
	[FechaVigencia] [date] NOT NULL,
	[Cargo] [varchar](100) NOT NULL,
	[AreaDeTrabajo] [varchar](50) NOT NULL,
	[IdEmpresa] [int] NULL,
	[Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdOfertaLaboral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OFERTALABORALCARRERA]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OFERTALABORALCARRERA](
	[IdOfertaLaboral] [int] NOT NULL,
	[IdCarrera] [int] NOT NULL,
 CONSTRAINT [PK_OFERTALABORALCARRERA] PRIMARY KEY CLUSTERED 
(
	[IdOfertaLaboral] ASC,
	[IdCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[POSTULACION]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POSTULACION](
	[IdEstudiante] [int] NOT NULL,
	[IdOfertaLaboral] [int] NOT NULL,
	[Aprobado] [bit] NULL,
 CONSTRAINT [PK_POSTULACION] PRIMARY KEY CLUSTERED 
(
	[IdEstudiante] ASC,
	[IdOfertaLaboral] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[REFERENCIA]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[REFERENCIA](
	[IdReferencia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Relacion] [varchar](50) NOT NULL,
	[IdEstudiante] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdReferencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[SegundoNombre] [varchar](50) NULL,
	[Apellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NULL,
	[Correo] [varchar](50) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Contrasena] [varchar](20) NOT NULL,
	[Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VISTASEMPRESAESTUDIANTE]    Script Date: 5/5/2023 3:29:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VISTASEMPRESAESTUDIANTE](
	[IdEmpresa] [int] NOT NULL,
	[IdEstudiante] [int] NOT NULL,
	[Cantidad] [int] NULL,
	[UltimaVista] [date] NULL,
 CONSTRAINT [PK_VISTASEMPRESAESTUDIANTE] PRIMARY KEY CLUSTERED 
(
	[IdEmpresa] ASC,
	[IdEstudiante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CARRERA] ON 
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (2, N'Ingeniería en Sistemas', 1, 1)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (3, N'Ingeniería en Computación', 0, 1)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (4, N'Licenciatura en Administración de Empresas', 1, 2)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (5, N'Licenciatura en Contaduría Pública y Finanzas', 1, 2)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (6, N'Licenciatura en Diseño Gráfico', 0, 3)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (7, N'Licenciatura en Diseño de Interiores', 1, 3)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (8, N'Licenciatura en Periodismo', 1, 3)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (9, N'Licenciatura en Derecho', 0, 4)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (10, N'Licenciatura en Relaciones Internacionales', 1, 4)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (11, N'Licenciatura en Psicología', 0, 5)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (12, N'Licenciatura en Pedagogía', 1, 5)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (13, N'Ingeniería Civil', 1, 6)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (14, N'Licenciatura en Medicina', 0, 7)
GO
INSERT [dbo].[CARRERA] ([IdCarrera], [Nombre], [Estado], [IdFacultad]) VALUES (15, N'Licenciatura en Odontología', 1, 8)
GO
SET IDENTITY_INSERT [dbo].[CARRERA] OFF
GO
SET IDENTITY_INSERT [dbo].[CERTIFICACION] ON 
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (1, N'Certificación en Marketing Digital', CAST(N'2022-06-15' AS Date), N'Google', 5)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (2, N'Certificación en Diseño Gráfico', CAST(N'2023-02-22' AS Date), N'Adobe', 14)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (3, N'Certificación en Administración de Redes', CAST(N'2023-01-08' AS Date), N'Cisco', 9)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (4, N'Certificación en Seguridad Informática', CAST(N'2022-09-12' AS Date), N'CompTIA', 1)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (5, N'Certificación en Finanzas Personales', CAST(N'2022-11-30' AS Date), N'Banco Central de Nicaragua', 11)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (6, N'Certificación en Gestión de Proyectos', CAST(N'2023-04-18' AS Date), N'Project Management Institute', 3)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (7, N'Certificación en Inglés Avanzado', CAST(N'2022-08-10' AS Date), N'Cambridge English', 7)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (8, N'Certificación en Desarrollo Web', CAST(N'2023-03-07' AS Date), N'Udemy', 17)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (9, N'Certificación en Marketing Digital', CAST(N'2022-10-02' AS Date), N'HubSpot', 4)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (10, N'Certificación en Desarrollo de Aplicaciones Móviles', CAST(N'2022-12-27' AS Date), N'Apple', 8)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (11, N'Certificación en Administración de Servidores Linux', CAST(N'2023-01-22' AS Date), N'Red Hat', 12)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (12, N'Certificación en Contabilidad Avanzada', CAST(N'2023-04-03' AS Date), N'Colegio de Contadores Públicos de Nicaragua', 19)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (13, N'Certificación en Recursos Humanos', CAST(N'2022-07-16' AS Date), N'Society for Human Resource Management', 6)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (14, N'Certificación en Gestión de Proyectos', CAST(N'2023-02-12' AS Date), N'Microsoft', 2)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (15, N'Certificación en Marketing Digital', CAST(N'2022-11-10' AS Date), N'Facebook', 16)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (16, N'Certificación en Seguridad Cibernética', CAST(N'2023-03-25' AS Date), N'International Association of Computer Science and Information Technology', 10)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (17, N'Certificación en Desarrollo de Videojuegos', CAST(N'2023-04-30' AS Date), N'Unity', 15)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (18, N'Certificación en Inglés Comercial', CAST(N'2022-09-01' AS Date), N'TOEFL', 13)
GO
INSERT [dbo].[CERTIFICACION] ([IdCertificacion], [Nombre], [FechaObtencion], [InstitucionEmisora], [IdEstudiante]) VALUES (19, N'Certificación en Gestión de la Cadena de Suministro', CAST(N'2022-08-25' AS Date), N'Council of Supply Chain Management Professionals', 18)
GO
SET IDENTITY_INSERT [dbo].[CERTIFICACION] OFF
GO
SET IDENTITY_INSERT [dbo].[DIRECCION] ON 
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (1, N'Managua', N'Managua', NULL, N'2222-3333', 1)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (2, N'León', N'León', NULL, N'2333-4444', 2)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (3, N'Chinandega', N'Chinandega', NULL, N'2222-3333', 3)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (4, N'Granada', N'Granada', NULL, N'2333-4444', 4)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (5, N'Masaya', N'Masaya', NULL, N'2222-3333', 5)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (6, N'Rivas', N'Rivas', NULL, N'2333-4444', 6)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (7, N'Carazo', N'Jinotepe', NULL, N'2222-3333', 7)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (8, N'Estelí', N'Estelí', NULL, N'2333-4444', 8)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (9, N'Matagalpa', N'Matagalpa', NULL, N'2222-3333', 9)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (10, N'Boaco', N'Boaco', NULL, N'2333-4444', 10)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (11, N'Chontales', N'Juigalpa', NULL, N'2222-3333', 11)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (12, N'Jinotega', N'Jinotega', NULL, N'2333-4444', 12)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (13, N'Atlántico Norte', N'Puerto Cabezas', NULL, N'2222-3333', 13)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (14, N'Atlántico Sur', N'Bluefields', NULL, N'2333-4444', 14)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (15, N'Nueva Segovia', N'Ocotal', NULL, N'2222-3333', 15)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (16, N'Madriz', N'Somoto', NULL, N'2333-4444', 16)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (17, N'Río San Juan', N'San Carlos', NULL, N'2222-3333', 17)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (18, N'RACCN', N'Puerto Lempira', NULL, N'2333-4444', 18)
GO
INSERT [dbo].[DIRECCION] ([IdDireccion], [Departamento], [Municipio], [Notas], [Telefono], [IdEmpresa]) VALUES (19, N'RACCS', N'Bluefields', NULL, N'2222-3333', 19)
GO
SET IDENTITY_INSERT [dbo].[DIRECCION] OFF
GO
SET IDENTITY_INSERT [dbo].[EDUCACION] ON 
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (1, N'Instituto Nacional Autónomo de Nicaragua', N'Bachiller en Ciencias y Letras', CAST(N'2015-02-15' AS Date), CAST(N'2020-11-20' AS Date), CAST(85.0 AS Decimal(3, 1)), N'Managua', 1)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (2, N'Instituto Maestro Gabriel', N'Bachiller en Ciencias y Letras', CAST(N'2015-03-01' AS Date), CAST(N'2020-12-05' AS Date), CAST(92.0 AS Decimal(3, 1)), N'Managua', 2)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (3, N'Instituto de Secundaria San Francisco', N'Bachiller en Ciencias y Letras', CAST(N'2015-02-20' AS Date), CAST(N'2020-11-25' AS Date), CAST(88.0 AS Decimal(3, 1)), N'Managua', 3)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (4, N'Colegio Internacional de Nicaragua', N'Bachiller en Ciencias y Letras', CAST(N'2015-03-15' AS Date), CAST(N'2020-12-10' AS Date), CAST(91.0 AS Decimal(3, 1)), N'Managua', 4)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (5, N'Instituto Bautista de Nicaragua', N'Bachiller en Ciencias y Letras', CAST(N'2015-03-10' AS Date), CAST(N'2020-12-15' AS Date), CAST(89.0 AS Decimal(3, 1)), N'Managua', 5)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (6, N'Instituto de Secundaria San José', N'Bachiller en Ciencias y Letras', CAST(N'2015-02-25' AS Date), CAST(N'2020-11-30' AS Date), CAST(86.0 AS Decimal(3, 1)), N'Managua', 6)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (7, N'Instituto de Secundaria América', N'Bachiller en Ciencias y Letras', CAST(N'2015-03-05' AS Date), CAST(N'2020-12-01' AS Date), CAST(93.0 AS Decimal(3, 1)), N'Managua', 7)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (8, N'Instituto de Secundaria Julio Cortázar', N'Bachiller en Ciencias y Letras', CAST(N'2015-03-10' AS Date), CAST(N'2020-12-05' AS Date), CAST(87.0 AS Decimal(3, 1)), N'Managua', 8)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (9, N'Instituto de Secundaria Monte Tabor', N'Bachiller en Ciencias y Letras', CAST(N'2015-02-28' AS Date), CAST(N'2020-11-25' AS Date), CAST(90.0 AS Decimal(3, 1)), N'Managua', 9)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (10, N'Instituto de Secundaria San Agustín', N'Bachiller en Ciencias y Letras', CAST(N'2015-03-01' AS Date), CAST(N'2020-12-01' AS Date), CAST(89.0 AS Decimal(3, 1)), N'Managua', 10)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (11, N'Instituto Pedagógico La Salle', N'Bachiller en Ciencias y Letras', CAST(N'2015-02-20' AS Date), CAST(N'2020-11-20' AS Date), CAST(84.0 AS Decimal(3, 1)), N'Managua', 11)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (12, N'Instituto de Secundaria San Judas Tadeo', N'Bachiller en Ciencias y Letras', CAST(N'2015-03-05' AS Date), CAST(N'2020-12-05' AS Date), CAST(91.0 AS Decimal(3, 1)), N'Managua', 12)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (13, N'Instituto de Secundaria Salesiano San Juan Bosco', N'Bachiller en Ciencias y Letras', CAST(N'2015-03-10' AS Date), CAST(N'2020-12-10' AS Date), CAST(92.0 AS Decimal(3, 1)), N'Managua', 13)
GO
INSERT [dbo].[EDUCACION] ([IdEducacion], [InstitucionEducativa], [Titulo], [FechaInicio], [FechaFinalizacion], [PromedioCalificaciones], [AreaEstudio], [IdEstudiante]) VALUES (14, N'Instituto de Secundaria Maestro Rigoberto López Pérez', N'Bachiller en Ciencias y Letras', CAST(N'2015-02-15' AS Date), CAST(N'2020-11-15' AS Date), CAST(83.0 AS Decimal(3, 1)), N'Managua', 14)
GO
SET IDENTITY_INSERT [dbo].[EDUCACION] OFF
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (1, 1)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (2, 1)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (3, 0)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (4, 1)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (5, 0)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (6, 1)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (7, 0)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (8, 1)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (9, 0)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (10, 1)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (11, 0)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (12, 1)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (13, 0)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (14, 1)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (15, 0)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (16, 1)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (17, 0)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (18, 1)
GO
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [Estado]) VALUES (19, 0)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (1, N'Supermercados La Colonia', N'Venta al por menor', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (2, N'Banco de América Central', N'Servicios financieros', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (3, N'Distribuidora Santo Domingo', N'Distribución de productos', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (4, N'Hotel Crowne Plaza', N'Hospitalidad y turismo', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (5, N'Industrias La Constancia', N'Producción y fabricación', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (6, N'LAFISE Banco', N'Servicios financieros', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (7, N'Gasolinera Uno', N'Venta de combustibles', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (8, N'Telefónica Movistar', N'Telecomunicaciones', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (9, N'Súper Selectos', N'Venta al por menor', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (10, N'BAC Credomatic', N'Servicios financieros', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (11, N'Hotel Intercontinental Managua', N'Hospitalidad y turismo', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (12, N'Coca-Cola FEMSA', N'Producción y fabricación', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (13, N'Banco Popular', N'Servicios financieros', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (14, N'Distribuidora González', N'Distribución de productos', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (15, N'Puma Energy', N'Venta de combustibles', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (16, N'Banco ProCredit', N'Servicios financieros', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (17, N'McDonald''s', N'Hospitalidad y turismo', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (18, N'Claro Nicaragua', N'Telecomunicaciones', NULL, 1)
GO
INSERT [dbo].[EMPRESA] ([IdEmpresa], [Nombre], [AreaDeTrabajo], [PaginaWeb], [Estado]) VALUES (19, N'Tiendas Extra', N'Venta al por menor', NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[ESTADOESTUDIANTE] ON 
GO
INSERT [dbo].[ESTADOESTUDIANTE] ([IdEstadoEstudiante], [Estado]) VALUES (1, N'Activo')
GO
INSERT [dbo].[ESTADOESTUDIANTE] ([IdEstadoEstudiante], [Estado]) VALUES (2, N'Inactivo')
GO
INSERT [dbo].[ESTADOESTUDIANTE] ([IdEstadoEstudiante], [Estado]) VALUES (3, N'Suspendido')
GO
SET IDENTITY_INSERT [dbo].[ESTADOESTUDIANTE] OFF
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (1, 12345678, 2, NULL, CAST(N'2023-01-01' AS Date), 0, 1)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (2, 23456789, 3, NULL, CAST(N'2023-01-02' AS Date), 1, 2)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (3, 34567890, 4, NULL, CAST(N'2023-01-03' AS Date), 0, 3)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (4, 45678901, 5, NULL, CAST(N'2023-01-04' AS Date), 1, 1)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (5, 56789012, 6, NULL, CAST(N'2023-01-05' AS Date), 0, 2)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (6, 67890123, 7, NULL, CAST(N'2023-01-06' AS Date), 1, 3)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (7, 78901234, 8, NULL, CAST(N'2023-01-07' AS Date), 0, 1)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (8, 89012345, 9, NULL, CAST(N'2023-01-08' AS Date), 1, 2)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (9, 90123456, 10, NULL, CAST(N'2023-01-09' AS Date), 0, 3)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (10, 12347890, 1, NULL, CAST(N'2023-01-10' AS Date), 1, 1)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (11, 23458901, 2, NULL, CAST(N'2023-01-11' AS Date), 0, 2)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (12, 34569012, 3, NULL, CAST(N'2023-01-12' AS Date), 1, 3)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (13, 45670123, 4, NULL, CAST(N'2023-01-13' AS Date), 0, 1)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (14, 56781234, 5, NULL, CAST(N'2023-01-14' AS Date), 1, 2)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (15, 67892345, 6, NULL, CAST(N'2023-01-15' AS Date), 0, 3)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (16, 78903456, 7, NULL, CAST(N'2023-01-16' AS Date), 1, 1)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (17, 89014567, 8, NULL, CAST(N'2023-01-17' AS Date), 0, 2)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (18, 90125678, 9, NULL, CAST(N'2023-01-18' AS Date), 1, 3)
GO
INSERT [dbo].[ESTUDIANTE] ([IdEstudiante], [Cif], [Semestre], [FotoPerfil], [UltimaModificacion], [Estado], [IdEstadoEstudiante]) VALUES (19, 12346789, 10, NULL, CAST(N'2023-01-19' AS Date), 0, 1)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (1, 2)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (2, 3)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (3, 4)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (4, 5)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (5, 6)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (6, 7)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (7, 8)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (8, 9)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (9, 10)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (10, 11)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (11, 12)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (12, 13)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (13, 14)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (14, 15)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (15, 2)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (16, 3)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (17, 4)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (18, 5)
GO
INSERT [dbo].[ESTUDIANTECARRERA] ([IdEstudiante], [IdCarrera]) VALUES (19, 6)
GO
SET IDENTITY_INSERT [dbo].[EXPERIENCIALABORAL] ON 
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (1, N'Gerente de ventas', CAST(N'2020-06-20' AS Date), CAST(N'2021-12-31' AS Date), N'22755678', 1)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (2, N'Asistente administrativo', CAST(N'2020-08-10' AS Date), CAST(N'2022-01-15' AS Date), N'22098763', 2)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (3, N'Contador', CAST(N'2020-05-15' AS Date), CAST(N'2021-11-30' AS Date), N'23321897', 3)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (4, N'Ingeniero de sistemas', CAST(N'2020-02-25' AS Date), CAST(N'2022-02-28' AS Date), N'26309005', 4)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (5, N'Recepcionista', CAST(N'2020-11-12' AS Date), CAST(N'2022-03-31' AS Date), N'21445577', 5)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (6, N'Analista financiero', CAST(N'2020-07-03' AS Date), CAST(N'2021-09-30' AS Date), N'21123467', 6)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (7, N'Diseñador gráfico', CAST(N'2020-03-28' AS Date), CAST(N'2022-04-15' AS Date), N'27765412', 7)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (8, N'Jefe de recursos humanos', CAST(N'2020-09-18' AS Date), CAST(N'2022-05-31' AS Date), N'22897755', 8)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (9, N'Ejecutivo de ventas', CAST(N'2020-04-21' AS Date), CAST(N'2021-12-31' AS Date), N'21557893', 9)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (10, N'Asesor comercial', CAST(N'2020-01-10' AS Date), CAST(N'2022-06-30' AS Date), N'26678912', 10)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (11, N'Asistente de contabilidad', CAST(N'2020-10-05' AS Date), CAST(N'2022-07-15' AS Date), N'23765432', 11)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (12, N'Supervisor de producción', CAST(N'2020-06-15' AS Date), CAST(N'2022-08-31' AS Date), N'22234567', 12)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (13, N'Asesor de servicios', CAST(N'2020-02-20' AS Date), CAST(N'2022-09-30' AS Date), N'25578901', 13)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (14, N'Analista de sistemas', CAST(N'2020-12-05' AS Date), CAST(N'2022-10-15' AS Date), N'22345678', 14)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (15, N'Asistente de recursos humanos', CAST(N'2020-09-01' AS Date), CAST(N'2022-11-30' AS Date), N'24456789', 15)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (16, N'Jefe de logística', CAST(N'2020-05-10' AS Date), CAST(N'2022-12-31' AS Date), N'28876543', 16)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (17, N'Asesor de ventas', CAST(N'2020-01-15' AS Date), CAST(N'2022-01-31' AS Date), N'24567890', 17)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (18, N'Gerente de finanzas', CAST(N'2020-08-25' AS Date), CAST(N'2022-02-28' AS Date), N'29987654', 18)
GO
INSERT [dbo].[EXPERIENCIALABORAL] ([IdExperienciaLaboral], [NombreTrabajo], [FechaInicio], [FechaFinalizacion], [Telefono], [IdEstudiante]) VALUES (19, N'Asistente de producción', CAST(N'2020-04-30' AS Date), CAST(N'2022-03-15' AS Date), N'21122334', 19)
GO
SET IDENTITY_INSERT [dbo].[EXPERIENCIALABORAL] OFF
GO
SET IDENTITY_INSERT [dbo].[FACULTAD] ON 
GO
INSERT [dbo].[FACULTAD] ([IdFacultad], [Nombre], [Estado]) VALUES (1, N'Facultad de Ciencias y Tecnología', 1)
GO
INSERT [dbo].[FACULTAD] ([IdFacultad], [Nombre], [Estado]) VALUES (2, N'Facultad de Ciencias Económicas y Empresariales', 0)
GO
INSERT [dbo].[FACULTAD] ([IdFacultad], [Nombre], [Estado]) VALUES (3, N'Facultad de Comunicación, Arte y Diseño', 1)
GO
INSERT [dbo].[FACULTAD] ([IdFacultad], [Nombre], [Estado]) VALUES (4, N'Facultad de Derecho y Ciencias Políticas', 1)
GO
INSERT [dbo].[FACULTAD] ([IdFacultad], [Nombre], [Estado]) VALUES (5, N'Facultad de Humanidades y Educación', 0)
GO
INSERT [dbo].[FACULTAD] ([IdFacultad], [Nombre], [Estado]) VALUES (6, N'Facultad de Ingeniería Civil', 1)
GO
INSERT [dbo].[FACULTAD] ([IdFacultad], [Nombre], [Estado]) VALUES (7, N'Facultad de Medicina', 0)
GO
INSERT [dbo].[FACULTAD] ([IdFacultad], [Nombre], [Estado]) VALUES (8, N'Facultad de Odontología', 1)
GO
SET IDENTITY_INSERT [dbo].[FACULTAD] OFF
GO
SET IDENTITY_INSERT [dbo].[HABILIDAD] ON 
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (1, N'Liderazgo', 5, 7)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (2, N'Programación', 6, 12)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (3, N'Comunicación efectiva', 4, 3)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (4, N'Marketing digital', 2, 17)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (5, N'Gestión de proyectos', 3, 8)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (6, N'Creatividad', 4, 1)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (7, N'Resolución de problemas', 5, 14)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (8, N'Inglés', 6, 19)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (9, N'Diseño gráfico', 2, 10)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (10, N'Trabajo en equipo', 4, 6)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (11, N'Adaptabilidad', 5, 2)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (12, N'Investigación', 3, 9)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (13, N'Negociación', 4, 15)
GO
INSERT [dbo].[HABILIDAD] ([IdHabilidad], [Nombre], [IdNivelExperiencia], [IdEstudiante]) VALUES (14, N'Análisis de datos', 6, 4)
GO
SET IDENTITY_INSERT [dbo].[HABILIDAD] OFF
GO
SET IDENTITY_INSERT [dbo].[NIVELEXPERIENCIA] ON 
GO
INSERT [dbo].[NIVELEXPERIENCIA] ([IdNivelExperiencia], [Nombre]) VALUES (1, N'Principiante')
GO
INSERT [dbo].[NIVELEXPERIENCIA] ([IdNivelExperiencia], [Nombre]) VALUES (2, N'Intermedio')
GO
INSERT [dbo].[NIVELEXPERIENCIA] ([IdNivelExperiencia], [Nombre]) VALUES (3, N'Avanzado')
GO
INSERT [dbo].[NIVELEXPERIENCIA] ([IdNivelExperiencia], [Nombre]) VALUES (4, N'Experto')
GO
INSERT [dbo].[NIVELEXPERIENCIA] ([IdNivelExperiencia], [Nombre]) VALUES (5, N'Referente')
GO
INSERT [dbo].[NIVELEXPERIENCIA] ([IdNivelExperiencia], [Nombre]) VALUES (6, N'Lider')
GO
SET IDENTITY_INSERT [dbo].[NIVELEXPERIENCIA] OFF
GO
SET IDENTITY_INSERT [dbo].[OFERTALABORAL] ON 
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (11, N'Ingeniero', N'Se busca ingeniero para proyecto de construcción', 3, N'Lunes - Viernes de 9 am a 5 pm', CAST(700.00 AS Decimal(10, 2)), N'Plaza Fijo', CAST(N'2023-07-15' AS Date), N'Ingeniero de Construcción', N'Ingeniería', 5, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (12, N'Licenciado', N'Se busca licenciado para departamento de ventas', 4, N'Lunes - Viernes de 9 am a 5 pm', CAST(600.00 AS Decimal(10, 2)), N'Pasantia', CAST(N'2023-09-01' AS Date), N'Asistente de Ventas', N'Ventas', 12, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (13, N'Ingeniero', N'Se busca ingeniero para proyecto de automatización', 5, N'Lunes - Viernes de 9 am a 5 pm', CAST(800.00 AS Decimal(10, 2)), N'Plaza Fijo', CAST(N'2023-08-10' AS Date), N'Ingeniero de Automatización', N'Ingeniería', 8, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (14, N'Licenciado', N'Se busca licenciado para departamento de recursos humanos', 2, N'Lunes - Viernes de 9 am a 5 pm', CAST(500.00 AS Decimal(10, 2)), N'Pasantia', CAST(N'2023-06-30' AS Date), N'Asistente de Recursos Humanos', N'Recursos Humanos', 2, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (15, N'Ingeniero', N'Se busca ingeniero para proyecto de desarrollo de software', 6, N'Lunes - Viernes de 9 am a 5 pm', CAST(750.00 AS Decimal(10, 2)), N'Plaza Fijo', CAST(N'2023-07-28' AS Date), N'Ingeniero de Desarrollo de Software', N'Tecnología', 14, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (16, N'Licenciado', N'Se busca licenciado para departamento de finanzas', 3, N'Lunes - Viernes de 9 am a 5 pm', CAST(700.00 AS Decimal(10, 2)), N'Plaza Fijo', CAST(N'2023-08-15' AS Date), N'Analista Financiero', N'Finanzas', 19, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (17, N'Ingeniero', N'Se busca ingeniero para proyecto de telecomunicaciones', 4, N'Lunes - Viernes de 9 am a 5 pm', CAST(600.00 AS Decimal(10, 2)), N'Pasantia', CAST(N'2023-09-10' AS Date), N'Ingeniero de Telecomunicaciones', N'Telecomunicaciones', 9, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (18, N'Licenciado', N'Se busca licenciado para departamento de marketing', 5, N'Lunes - Viernes de 9 am a 5 pm', CAST(800.00 AS Decimal(10, 2)), N'Plaza Fijo', CAST(N'2023-07-20' AS Date), N'Especialista en Marketing Digital', N'Marketing', 6, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (19, N'Ingeniero', N'Se busca ingeniero para proyecto de construcción', 2, N'Lunes - Viernes de 9 am a 5 pm', CAST(500.00 AS Decimal(10, 2)), N'Pasantia', CAST(N'2023-08-25' AS Date), N'Asistente de Ingeniería Civil', N'Ingeniería', 3, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (20, N'Ingeniero', N'Se busca ingeniero para el diseño de estructuras metálicas', 4, N'Lunes - Viernes de 9 am a 5 pm', CAST(700.00 AS Decimal(10, 2)), N'Plaza Fijo', CAST(N'2024-09-15' AS Date), N'Diseñador de Estructuras', N'Ingeniería Civil', 7, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (21, N'Licenciado', N'Se busca licenciado para el área de marketing y publicidad', 2, N'Lunes - Viernes de 9 am a 5 pm', CAST(550.00 AS Decimal(10, 2)), N'Plaza Fijo', CAST(N'2024-09-01' AS Date), N'Especialista en Marketing', N'Marketing y Publicidad', 12, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (22, N'Ingeniero', N'Se busca ingeniero para el desarrollo de software', 5, N'Lunes - Viernes de 9 am a 5 pm', CAST(750.00 AS Decimal(10, 2)), N'Plaza Fijo', CAST(N'2024-08-20' AS Date), N'Desarrollador de Software', N'Ingeniería de Sistemas', 15, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (23, N'Licenciado', N'Se busca licenciado para el departamento de recursos humanos', 3, N'Lunes - Viernes de 9 am a 5 pm', CAST(600.00 AS Decimal(10, 2)), N'Plaza Fijo', CAST(N'2024-08-30' AS Date), N'Especialista en Recursos Humanos', N'Recursos Humanos', 3, 1)
GO
INSERT [dbo].[OFERTALABORAL] ([IdOfertaLaboral], [Titulo], [Descripcion], [IdNivelExperiencia], [Horario], [Salario], [TipoTrabajo], [FechaVigencia], [Cargo], [AreaDeTrabajo], [IdEmpresa], [Estado]) VALUES (24, N'Ingeniero', N'Se busca ingeniero para el área de control de calidad', 6, N'Lunes - Viernes de 9 am a 5 pm', CAST(800.00 AS Decimal(10, 2)), N'Plaza Fijo', CAST(N'2024-09-10' AS Date), N'Inspector de Calidad', N'Ingeniería Industrial', 18, 1)
GO
SET IDENTITY_INSERT [dbo].[OFERTALABORAL] OFF
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (11, 2)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (12, 3)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (13, 4)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (14, 5)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (15, 6)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (16, 7)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (17, 8)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (18, 9)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (19, 10)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (20, 11)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (21, 12)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (22, 13)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (23, 14)
GO
INSERT [dbo].[OFERTALABORALCARRERA] ([IdOfertaLaboral], [IdCarrera]) VALUES (24, 15)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (1, 11, 0)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (2, 12, 1)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (3, 13, 0)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (4, 14, 1)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (5, 15, 0)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (6, 16, 1)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (7, 17, 0)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (8, 18, 1)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (9, 19, 0)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (10, 20, 1)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (11, 21, 0)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (12, 22, 1)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (13, 23, 0)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (14, 24, 1)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (15, 11, 0)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (16, 12, 1)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (17, 13, 0)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (18, 14, 1)
GO
INSERT [dbo].[POSTULACION] ([IdEstudiante], [IdOfertaLaboral], [Aprobado]) VALUES (19, 15, 0)
GO
SET IDENTITY_INSERT [dbo].[REFERENCIA] ON 
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (1, N'Juan', N'Pérez', N'juanperez@gmail.com', N'8675309', N'Amigo', 1)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (2, N'María', N'González', N'mariagonzalez@yahoo.com', N'8123456', N'Familiar', 2)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (3, N'Alejandro', N'Hernández', N'ahernandez@hotmail.com', N'8554321', N'Colega', 3)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (4, N'Sofía', N'Gutiérrez', N'sofiagutierrez@gmail.com', N'8000123', N'Profesor', 4)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (5, N'Pedro', N'Martínez', N'pmartinez@yahoo.com', N'8888888', N'Jefe', 5)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (6, N'Carmen', N'López', N'carmenlopez@gmail.com', N'8765432', N'Mentor', 6)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (7, N'Luis', N'Ramírez', N'lramirez@hotmail.com', N'8222222', N'Compañero', 7)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (8, N'Ana', N'Sánchez', N'anasanchez@yahoo.com', N'8333333', N'Amigo', 8)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (9, N'Jorge', N'García', N'jorgegarcia@gmail.com', N'8999999', N'Familiar', 9)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (10, N'Marta', N'Vásquez', N'martavasquez@hotmail.com', N'8111111', N'Colega', 10)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (11, N'Roberto', N'Reyes', N'rreyes@yahoo.com', N'8444444', N'Profesor', 11)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (12, N'Elena', N'Díaz', N'elenadiaz@gmail.com', N'8888123', N'Jefe', 12)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (13, N'Diego', N'Gómez', N'diegogomez@yahoo.com', N'8999231', N'Mentor', 13)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (14, N'Isabel', N'Torres', N'isabeltorres@gmail.com', N'8222233', N'Compañero', 14)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (15, N'Raúl', N'Fernández', N'raulfernandez@yahoo.com', N'8000567', N'Amigo', 15)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (16, N'Lucía', N'Navarro', N'lucianavarro@hotmail.com', N'8111112', N'Familiar', 16)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (17, N'Pablo', N'Rojas', N'projas@gmail.com', N'8333332', N'Colega', 17)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (18, N'Sara', N'Sosa', N'sarasosa@yahoo.com', N'8555555', N'Profesor', 18)
GO
INSERT [dbo].[REFERENCIA] ([IdReferencia], [Nombre], [Apellido], [Correo], [Telefono], [Relacion], [IdEstudiante]) VALUES (19, N'Eduardo', N'Gallardo', N'egallardo@hotmail.com', N'8888666', N'Jefe', 19)
GO
SET IDENTITY_INSERT [dbo].[REFERENCIA] OFF
GO
SET IDENTITY_INSERT [dbo].[USUARIO] ON 
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (1, N'Luis', N'Enrique', N'García', N'Fernández', N'luisgarcia@gmail.com', N'85432109', N'Abc123xyz', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (2, N'Ana', N'María', N'Ramos', N'Pérez', N'anaramos@hotmail.com', N'86253479', N'Xyz456abc', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (3, N'Pedro', N'Antonio', N'López', N'Gómez', N'pedrolopez@yahoo.com', N'84651239', N'Pqr789lmn', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (4, N'María', N'Isabel', N'Martínez', N'Hernández', N'mariaisabelm@gmail.com', N'82345678', N'Def456opq', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (5, N'Carlos', N'Alberto', N'González', N'Vargas', N'cgonzalez@gmail.com', N'83456789', N'Ghi123rst', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (6, N'Sofía', N'Cristina', N'Castro', N'Sánchez', N'sofiacastro@gmail.com', N'82567432', N'Jkl567uvw', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (7, N'Jorge', N'Luis', N'Ramírez', N'Chávez', N'jorgeluisr@hotmail.com', N'85562134', N'Mno456fgh', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (8, N'Mónica', N'Raquel', N'Díaz', N'Luna', N'monicadiaz@yahoo.com', N'88902345', N'Ijk123pqr', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (9, N'José', N'Francisco', N'Morales', N'Pérez', N'josemorales@gmail.com', N'84456789', N'Xyz123abc', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (10, N'Laura', N'Isabel', N'Sánchez', N'Gómez', N'lauraisabels@gmail.com', N'82564890', N'Pqr789lmn', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (11, N'Miguel', N'Ángel', N'Hernández', N'Ortiz', N'miguelangelh@hotmail.com', N'89765432', N'Abc456xyz', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (12, N'Carmen', N'María', N'Suárez', N'Fernández', N'carmensuarez@yahoo.com', N'83657234', N'Def789opq', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (13, N'Juan', N'Carlos', N'Rodríguez', N'García', N'juancarlosr@gmail.com', N'84567890', N'Ghi123rst', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (14, N'Fernanda', N'Beatriz', N'Gómez', N'López', N'fernandagomez@gmail.com', N'82234567', N'Jkl456uvw', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (15, N'Arturo', N'Roberto', N'Pérez', N'Vázquez', N'arturoperez@hotmail.com', N'89907654', N'Mno789fgh', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (16, N'Carolina', N'Isabel', N'Santos', N'Sánchez', N'carolinasantos@yahoo.com', N'88890123', N'Ijk456pqr', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (17, N'Manuel', N'Antonio', N'Jiménez', N'Romero', N'manueljimenez@gmail.com', N'85793421', N'Xyz789abc', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (18, N'Sara', N'Cristina', N'López', N'Ramos', N'saralopez@gmail.com', N'84627908', N'Pqr123lmn', 1)
GO
INSERT [dbo].[USUARIO] ([IdUsuario], [Nombre], [SegundoNombre], [Apellido], [SegundoApellido], [Correo], [Telefono], [Contrasena], [Estado]) VALUES (19, N'Andrés', N'Fernando', N'García', N'Luna', N'andresgarcia@hotmail.com', N'88881234', N'AbDef789opq', 1)
GO
SET IDENTITY_INSERT [dbo].[USUARIO] OFF
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (1, 15, 650, CAST(N'2023-03-18' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (2, 2, 350, CAST(N'2023-02-10' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (3, 11, 550, CAST(N'2023-03-26' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (4, 18, 700, CAST(N'2023-02-25' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (5, 1, 500, CAST(N'2023-01-15' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (6, 10, 400, CAST(N'2023-02-15' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (7, 12, 150, CAST(N'2023-04-02' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (8, 16, 1000, CAST(N'2023-04-10' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (9, 6, 450, CAST(N'2023-02-20' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (10, 4, 250, CAST(N'2023-04-05' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (11, 5, 600, CAST(N'2023-01-28' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (12, 14, 300, CAST(N'2023-02-28' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (13, 8, 200, CAST(N'2023-04-01' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (14, 9, 700, CAST(N'2023-01-23' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (15, 19, 200, CAST(N'2023-04-15' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (16, 7, 900, CAST(N'2023-03-12' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (17, 13, 950, CAST(N'2023-01-20' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (18, 3, 800, CAST(N'2023-03-22' AS Date))
GO
INSERT [dbo].[VISTASEMPRESAESTUDIANTE] ([IdEmpresa], [IdEstudiante], [Cantidad], [UltimaVista]) VALUES (19, 17, 400, CAST(N'2023-01-30' AS Date))
GO
ALTER TABLE [dbo].[CARRERA] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[EMPLEADO] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[EMPRESA] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[ESTUDIANTE] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[FACULTAD] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[OFERTALABORAL] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[POSTULACION] ADD  DEFAULT ((0)) FOR [Aprobado]
GO
ALTER TABLE [dbo].[USUARIO] ADD  DEFAULT ((1)) FOR [Estado]
GO
ALTER TABLE [dbo].[VISTASEMPRESAESTUDIANTE] ADD  DEFAULT ((0)) FOR [Cantidad]
GO
ALTER TABLE [dbo].[CARRERA]  WITH CHECK ADD  CONSTRAINT [FK_FACULTAD_CARRERA] FOREIGN KEY([IdFacultad])
REFERENCES [dbo].[FACULTAD] ([IdFacultad])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CARRERA] CHECK CONSTRAINT [FK_FACULTAD_CARRERA]
GO
ALTER TABLE [dbo].[CERTIFICACION]  WITH CHECK ADD  CONSTRAINT [FK_ESTUDIANTE_CERTIFICACION] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[ESTUDIANTE] ([IdEstudiante])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CERTIFICACION] CHECK CONSTRAINT [FK_ESTUDIANTE_CERTIFICACION]
GO
ALTER TABLE [dbo].[DIRECCION]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESA_DIRECCION] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[EMPRESA] ([IdEmpresa])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DIRECCION] CHECK CONSTRAINT [FK_EMPRESA_DIRECCION]
GO
ALTER TABLE [dbo].[EDUCACION]  WITH CHECK ADD  CONSTRAINT [FK_ESTUDIANTE_EDUCACION] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[ESTUDIANTE] ([IdEstudiante])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EDUCACION] CHECK CONSTRAINT [FK_ESTUDIANTE_EDUCACION]
GO
ALTER TABLE [dbo].[EMPLEADO]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_EMPLEADO] FOREIGN KEY([IdEmpleado])
REFERENCES [dbo].[USUARIO] ([IdUsuario])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EMPLEADO] CHECK CONSTRAINT [FK_USUARIO_EMPLEADO]
GO
ALTER TABLE [dbo].[EMPRESA]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_EMPRESA] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[USUARIO] ([IdUsuario])
GO
ALTER TABLE [dbo].[EMPRESA] CHECK CONSTRAINT [FK_USUARIO_EMPRESA]
GO
ALTER TABLE [dbo].[ESTUDIANTE]  WITH CHECK ADD  CONSTRAINT [FK_ESTADOESTUDIANTE_ESTUDIANTE] FOREIGN KEY([IdEstadoEstudiante])
REFERENCES [dbo].[ESTADOESTUDIANTE] ([IdEstadoEstudiante])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ESTUDIANTE] CHECK CONSTRAINT [FK_ESTADOESTUDIANTE_ESTUDIANTE]
GO
ALTER TABLE [dbo].[ESTUDIANTE]  WITH CHECK ADD  CONSTRAINT [FK_USUARIO_ESTUDIANTE] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[USUARIO] ([IdUsuario])
GO
ALTER TABLE [dbo].[ESTUDIANTE] CHECK CONSTRAINT [FK_USUARIO_ESTUDIANTE]
GO
ALTER TABLE [dbo].[ESTUDIANTECARRERA]  WITH CHECK ADD  CONSTRAINT [FK_CARRERA_ESTUDIANTECARRERA] FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[CARRERA] ([IdCarrera])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ESTUDIANTECARRERA] CHECK CONSTRAINT [FK_CARRERA_ESTUDIANTECARRERA]
GO
ALTER TABLE [dbo].[ESTUDIANTECARRERA]  WITH CHECK ADD  CONSTRAINT [FK_ESTUDIANTE_ESTUDIANTECARRERA] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[ESTUDIANTE] ([IdEstudiante])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ESTUDIANTECARRERA] CHECK CONSTRAINT [FK_ESTUDIANTE_ESTUDIANTECARRERA]
GO
ALTER TABLE [dbo].[EXPERIENCIALABORAL]  WITH CHECK ADD  CONSTRAINT [FK_ESTUDIANTE_EXPERIENCIALABORAL] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[ESTUDIANTE] ([IdEstudiante])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EXPERIENCIALABORAL] CHECK CONSTRAINT [FK_ESTUDIANTE_EXPERIENCIALABORAL]
GO
ALTER TABLE [dbo].[HABILIDAD]  WITH CHECK ADD  CONSTRAINT [FK_ESTUDIANTE_HABILIDAD] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[ESTUDIANTE] ([IdEstudiante])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HABILIDAD] CHECK CONSTRAINT [FK_ESTUDIANTE_HABILIDAD]
GO
ALTER TABLE [dbo].[HABILIDAD]  WITH CHECK ADD  CONSTRAINT [FK_NIVELEXPERIENCIA_HABILIDAD] FOREIGN KEY([IdNivelExperiencia])
REFERENCES [dbo].[NIVELEXPERIENCIA] ([IdNivelExperiencia])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HABILIDAD] CHECK CONSTRAINT [FK_NIVELEXPERIENCIA_HABILIDAD]
GO
ALTER TABLE [dbo].[OFERTALABORAL]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESA_OFERTALABORAL] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[EMPRESA] ([IdEmpresa])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OFERTALABORAL] CHECK CONSTRAINT [FK_EMPRESA_OFERTALABORAL]
GO
ALTER TABLE [dbo].[OFERTALABORAL]  WITH CHECK ADD  CONSTRAINT [FK_NIVELEXPERIENCIA_OFERTALABORAL] FOREIGN KEY([IdNivelExperiencia])
REFERENCES [dbo].[NIVELEXPERIENCIA] ([IdNivelExperiencia])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OFERTALABORAL] CHECK CONSTRAINT [FK_NIVELEXPERIENCIA_OFERTALABORAL]
GO
ALTER TABLE [dbo].[OFERTALABORALCARRERA]  WITH CHECK ADD  CONSTRAINT [FK_CARRERA_OFERTALABORALCARRERA] FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[CARRERA] ([IdCarrera])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OFERTALABORALCARRERA] CHECK CONSTRAINT [FK_CARRERA_OFERTALABORALCARRERA]
GO
ALTER TABLE [dbo].[OFERTALABORALCARRERA]  WITH CHECK ADD  CONSTRAINT [FK_OFERTALABORAL_OFERTALABORALCARRERA] FOREIGN KEY([IdOfertaLaboral])
REFERENCES [dbo].[OFERTALABORAL] ([IdOfertaLaboral])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OFERTALABORALCARRERA] CHECK CONSTRAINT [FK_OFERTALABORAL_OFERTALABORALCARRERA]
GO
ALTER TABLE [dbo].[POSTULACION]  WITH CHECK ADD  CONSTRAINT [FK_ESTUDIANTE_POSTULACION] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[ESTUDIANTE] ([IdEstudiante])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[POSTULACION] CHECK CONSTRAINT [FK_ESTUDIANTE_POSTULACION]
GO
ALTER TABLE [dbo].[POSTULACION]  WITH CHECK ADD  CONSTRAINT [FK_OFERTALABORAL_POSTULACION] FOREIGN KEY([IdOfertaLaboral])
REFERENCES [dbo].[OFERTALABORAL] ([IdOfertaLaboral])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[POSTULACION] CHECK CONSTRAINT [FK_OFERTALABORAL_POSTULACION]
GO
ALTER TABLE [dbo].[REFERENCIA]  WITH CHECK ADD  CONSTRAINT [FK_ESTUDIANTE_REFERENCIA] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[ESTUDIANTE] ([IdEstudiante])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[REFERENCIA] CHECK CONSTRAINT [FK_ESTUDIANTE_REFERENCIA]
GO
ALTER TABLE [dbo].[VISTASEMPRESAESTUDIANTE]  WITH CHECK ADD  CONSTRAINT [FK_EMPRESA_VISTASEMPRESAESTUDIANTE] FOREIGN KEY([IdEmpresa])
REFERENCES [dbo].[EMPRESA] ([IdEmpresa])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VISTASEMPRESAESTUDIANTE] CHECK CONSTRAINT [FK_EMPRESA_VISTASEMPRESAESTUDIANTE]
GO
ALTER TABLE [dbo].[VISTASEMPRESAESTUDIANTE]  WITH CHECK ADD  CONSTRAINT [FK_ESTUDIANTE_VISTASEMPRESAESTUDIANTE] FOREIGN KEY([IdEstudiante])
REFERENCES [dbo].[ESTUDIANTE] ([IdEstudiante])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VISTASEMPRESAESTUDIANTE] CHECK CONSTRAINT [FK_ESTUDIANTE_VISTASEMPRESAESTUDIANTE]
GO
ALTER TABLE [dbo].[EDUCACION]  WITH CHECK ADD CHECK  (([PromedioCalificaciones]>=(0) AND [PromedioCalificaciones]<=(100)))
GO
