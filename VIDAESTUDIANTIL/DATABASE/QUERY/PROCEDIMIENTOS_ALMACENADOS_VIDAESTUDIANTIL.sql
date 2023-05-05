/*----------------------------------------------------------------------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------------------------------------------------------------------*/
/*SCHEMA OFERTA LABORAL*/



/*----------------------------------------------------------------------------*/
/*Carrera*/
CREATE PROCEDURE CURRICULO.GetAllCarrera
@IDFACULTAD INT
AS
BEGIN
	SELECT * FROM [CURRICULO].[CARRERA]
	WHERE Estado=1 AND IdFacultad=@IDFACULTAD
END
GO

CREATE PROCEDURE CURRICULO.SaveCarrera

@NOMBRE VARCHAR(100),
@IDFACULTAD INT
AS
BEGIN
	INSERT INTO [CURRICULO].[CARRERA] VALUES(DEFAULT,@NOMBRE,DEFAULT,@IDFACULTAD)
	SELECT 1 AS ESTADO,'Carrera Guardada Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE CURRICULO.UpdateCarrera

@IDCARRERA INT,
@NOMBRE VARCHAR(100),
@ESTADO BIT,
@IDFACULTAD INT

AS
BEGIN
	UPDATE [CURRICULO].[CARRERA]
	SET Nombre = @NOMBRE,Estado=@ESTADO,IdFacultad=@IDFACULTAD
	WHERE IdCarrera=@IDCARRERA
	SELECT 1 AS ESTADO,'Carrera Actualizada Satisfactoriamente' as MENSAJE

END

/*----------------------------------------------------------------------------*/
/*Certificacion*/

GO
CREATE PROCEDURE CURRICULO.GetCertificacionByEstudiante
@IDESTUDIANTE INT
AS
BEGIN
	SELECT * FROM [CURRICULO].[Certificacion]
	WHERE IdEstudiante=@IDESTUDIANTE
END
GO

CREATE PROCEDURE CURRICULO.SaveCertificacion

@NOMBRE VARCHAR(100),
@FECHAOBTENCION DATE,
@INSTITUCIONEMISORA VARCHAR(100),
@IDESTUDIANTE INT
AS
BEGIN
	INSERT INTO [CURRICULO].[Certificacion] VALUES(DEFAULT,@NOMBRE,@FECHAOBTENCION,@INSTITUCIONEMISORA,@IDESTUDIANTE)
	SELECT 1 AS ESTADO,'Certificacion Guardada Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE CURRICULO.DeleteCertificacion

@IDCERTIFICACION INT

AS
BEGIN
	DELETE FROM [CURRICULO].[Certificacion]
	WHERE IdCertificacion=@IDCERTIFICACION
	SELECT 1 AS ESTADO,'Certificacion Eliminada Satisfactoriamente' as MENSAJE

END

/*----------------------------------------------------------------------------*/
/*Educacion*/

GO
CREATE PROCEDURE CURRICULO.GetEducacionByEstudiante
@IDESTUDIANTE INT
AS
BEGIN
	SELECT * FROM [CURRICULO].[Educacion]
	WHERE IdEstudiante=@IDESTUDIANTE
END
GO

CREATE PROCEDURE CURRICULO.SaveEducacion

@INSTITUCIONEDUCATIVA VARCHAR(100),
@TITULO VARCHAR(100),
@FECHAINICIO DATE,
@FECHAFINALIZACION DATE,
@PROMEDIOCALIFICACIONES DECIMAL(3,1),
@AREAESTUDIO VARCHAR(100),
@IDESTUDIANTE INT
AS
BEGIN
	INSERT INTO [CURRICULO].[Educacion] VALUES(DEFAULT,@INSTITUCIONEDUCATIVA,@TITULO,@FECHAINICIO,@FECHAFINALIZACION,@PROMEDIOCALIFICACIONES,@AREAESTUDIO,@IDESTUDIANTE)
	SELECT 1 AS ESTADO,'Educacion Guardada Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE CURRICULO.DeleteEducacion

@IDEDUCACION INT

AS
BEGIN
	DELETE FROM [CURRICULO].[Educacion]
	WHERE IdEducacion=@IDEDUCACION
	SELECT 1 AS ESTADO,'Educacion Eliminada Satisfactoriamente' as MENSAJE

END
GO

/*----------------------------------------------------------------------------*/
/*EstadoEstudiante*/

GO
CREATE PROCEDURE CURRICULO.GetEstadoEstudianteById
@IDESTADOESTUDIANTE INT
AS
BEGIN
	SELECT * FROM [CURRICULO].[ESTADOESTUDIANTE]
	WHERE IdEstadoEstudiante=@IDESTADOESTUDIANTE
END
GO

CREATE PROCEDURE CURRICULO.SaveEstadoEstudiante

@ESTADO VARCHAR(20)
AS
BEGIN
	INSERT INTO [CURRICULO].[ESTADOESTUDIANTE] VALUES(DEFAULT,@ESTADO)
	SELECT 1 AS ESTADO,'Estado de Estudiante Guardado Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE CURRICULO.DeleteEstadoEstudiante

@IDESTADOESTUDIANTE INT

AS
BEGIN
	DELETE FROM [CURRICULO].[ESTADOESTUDIANTE]
	WHERE IdEstadoEstudiante=@IDESTADOESTUDIANTE
	SELECT 1 AS ESTADO,'Estado de Estudiante Eliminado Satisfactoriamente' as MENSAJE

END

/*----------------------------------------------------------------------------*/
/*Estudiante*/

GO
CREATE PROCEDURE CURRICULO.GetEstudianteById
@IDESTUDIANTE INT
AS
BEGIN
	SELECT * FROM [CURRICULO].[ESTUDIANTE]
	WHERE IdEstudiante=@IDESTUDIANTE
END
GO

GO
CREATE PROCEDURE CURRICULO.GetAllEstudiante
AS
BEGIN
	SELECT * FROM [CURRICULO].[ESTUDIANTE]
	WHERE Estado = 1
END
GO

CREATE PROCEDURE CURRICULO.SaveEstudiante

@CIF INT,
@SEMESTRE INT,
@FOTOPERFIL VARBINARY(MAX),
@IDESTADOESTUDIANTE INT

AS
BEGIN
	INSERT INTO [CURRICULO].[ESTUDIANTE] VALUES(DEFAULT,@CIF,@SEMESTRE,@FOTOPERFIL,DEFAULT,DEFAULT,@IDESTADOESTUDIANTE)
	SELECT 1 AS ESTADO,'Estudiante Guardado Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE CURRICULO.UpdateEstudiante

@IDESTUDIANTE INT,
@CIF INT,
@SEMESTRE INT,
@FOTOPERFIL VARBINARY(MAX),
@ESTADO BIT,
@IDESTADOESTUDIANTE INT

AS
BEGIN
	UPDATE [CURRICULO].[ESTUDIANTE]
	SET Cif=@CIF,Semestre=@SEMESTRE,FotoPerfil=@FOTOPERFIL,UltimaModificacion= DEFAULT, Estado=@ESTADO,IdEstadoEstudiante=@IDESTADOESTUDIANTE
	WHERE IdEstudiante=@IDESTUDIANTE
	SELECT 1 AS ESTADO,'Estudiante Actualizado Satisfactoriamente' as MENSAJE

END


/*----------------------------------------------------------------------------*/
/*EstudianteCarrera*/

GO
CREATE PROCEDURE CURRICULO.GetEstudianteCarreraById
@IDESTUDIANTE INT,
@IDCARRERA INT
AS
BEGIN
	SELECT * FROM [CURRICULO].[ESTUDIANTECARRERA]
	WHERE IdEstudiante=@IDESTUDIANTE AND IdCarrera=@IDCARRERA
END
GO

CREATE PROCEDURE CURRICULO.SaveEstudianteCarrera

@IDESTUDIANTE INT,
@IDCARRERA INT

AS
BEGIN
	INSERT INTO [CURRICULO].[ESTUDIANTECARRERA] VALUES(@IDESTUDIANTE,@IDCARRERA)
	SELECT 1 AS ESTADO,'Estudiante X Carrera Guardado Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE CURRICULO.DeleteEstudianteCarrera

@IDESTUDIANTE INT,
@IDCARRERA INT

AS
BEGIN
	DELETE FROM [CURRICULO].[ESTUDIANTECARRERA]
	WHERE IdEstudiante=@IDESTUDIANTE AND IdCarrera=@IDCARRERA
	SELECT 1 AS ESTADO,'Estudiante X Carrera Eliminado Satisfactoriamente' as MENSAJE

END


/*----------------------------------------------------------------------------*/
/*Experiencia Laboral*/

GO
CREATE PROCEDURE CURRICULO.GetExperienciaLaboralByEstudiante
@IDESTUDIANTE INT
AS
BEGIN
	SELECT * FROM [CURRICULO].[EXPERIENCIALABORAL]
	WHERE IdEstudiante=@IDESTUDIANTE
END
GO

CREATE PROCEDURE CURRICULO.SaveExperienciaLaboral

@NOMBRETRABAJO VARCHAR(50),
@FECHAINICIO DATE,
@FECHAFINALIZACION DATE,
@TELEFONO VARCHAR(20),
@IDESTUDIANTE INT
AS
BEGIN
	INSERT INTO [CURRICULO].[EXPERIENCIALABORAL] VALUES(DEFAULT,@NOMBRETRABAJO,@FECHAINICIO,@FECHAFINALIZACION,@TELEFONO,@IDESTUDIANTE)
	SELECT 1 AS ESTADO,'Experiencia Laboral Guardada Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE CURRICULO.DeleteExperienciaLaboral

@IDEXPERIENCIALABORAL INT

AS
BEGIN
	DELETE FROM [CURRICULO].[EXPERIENCIALABORAL]
	WHERE IdExperienciaLaboral=@IDEXPERIENCIALABORAL
	SELECT 1 AS ESTADO,'Experiencia Laboral Eliminada Satisfactoriamente' as MENSAJE

END
GO

/*----------------------------------------------------------------------------*/
/*Facultad*/
CREATE PROCEDURE CURRICULO.GetAllFacultad
AS
BEGIN
	SELECT * FROM [CURRICULO].[FACULTAD]
	WHERE Estado=1
END
GO

CREATE PROCEDURE CURRICULO.SaveFacultad

@NOMBRE VARCHAR(100)
AS
BEGIN
	INSERT INTO [CURRICULO].[FACULTAD] VALUES(DEFAULT,@NOMBRE)
	SELECT 1 AS ESTADO,'Facultad Guardada Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE CURRICULO.UpdateFacultad

@IDFACULTAD INT,
@NOMBRE VARCHAR(100),
@ESTADO BIT

AS
BEGIN
	UPDATE [CURRICULO].[FACULTAD]
	SET Nombre = @NOMBRE,Estado=@ESTADO
	WHERE IdFacultad=@IDFACULTAD
	SELECT 1 AS ESTADO,'Facultad Actualizada Satisfactoriamente' as MENSAJE

END


/*----------------------------------------------------------------------------*/
/*Habilidad*/

GO
CREATE PROCEDURE CURRICULO.GetHabilidadByEstudiante
@IDESTUDIANTE INT
AS
BEGIN
	SELECT * FROM [CURRICULO].[HABILIDAD]
	WHERE IdEstudiante=@IDESTUDIANTE
END
GO

CREATE PROCEDURE CURRICULO.SaveHabilidad

@NOMBRE VARCHAR(100),
@IDNIVELEXPERIENCIA INT,
@IDESTUDIANTE INT
AS
BEGIN
	INSERT INTO [CURRICULO].[HABILIDAD] VALUES(DEFAULT,@NOMBRE,@IDNIVELEXPERIENCIA, @IDESTUDIANTE)
	SELECT 1 AS ESTADO,'Habilidad Guardada Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE CURRICULO.DeleteHabilidad

@IDHABILIDAD INT

AS
BEGIN
	DELETE FROM [CURRICULO].[HABILIDAD]
	WHERE IdHabilidad=@IDHABILIDAD
	SELECT 1 AS ESTADO,'Habilidad Eliminada Satisfactoriamente' as MENSAJE

END
GO


/*----------------------------------------------------------------------------*/
/*Referencia*/

GO
CREATE PROCEDURE CURRICULO.GetReferenciaByEstudiante
@IDESTUDIANTE INT
AS
BEGIN
	SELECT * FROM [CURRICULO].[REFERENCIA]
	WHERE IdEstudiante=@IDESTUDIANTE
END
GO

CREATE PROCEDURE CURRICULO.SaveReferencia

@NOMBRE VARCHAR(50),
@APELLIDO VARCHAR(50),
@CORREO VARCHAR(100),
@TELEFONO VARCHAR(20),
@RELACION VARCHAR(50),
@IDESTUDIANTE INT
AS
BEGIN
	INSERT INTO [CURRICULO].[REFERENCIA] VALUES(DEFAULT,@NOMBRE,@APELLIDO,@CORREO,@TELEFONO,@RELACION, @IDESTUDIANTE)
	SELECT 1 AS ESTADO,'Referencia Guardada Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE CURRICULO.DeleteReferencia

@IDREFERENCIA INT

AS
BEGIN
	DELETE FROM [CURRICULO].[REFERENCIA]
	WHERE IdReferencia=@IDREFERENCIA
	SELECT 1 AS ESTADO,'Referencia Eliminada Satisfactoriamente' as MENSAJE

END
GO




/*----------------------------------------------------------------------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------------------------------------------------------------------*/
/*----------------------------------------------------------------------------------------------------------------------------------------------------*/
/*SCHEMA OFERTA LABORAL*/

/*----------------------------------------------------------------------------*/
/*Direccion*/

GO
CREATE PROCEDURE OFERTALABORAL.GetDireccionByEmpresa
@IDEMPRESA INT
AS
BEGIN
	SELECT * FROM [OFERTALABORAL].[DIRECCION]
	WHERE IdEmpresa=@IDEMPRESA
END
GO
CREATE PROCEDURE OFERTALABORAL.SaveDireccion

@DEPARTAMENTO VARCHAR(50),
@MUNICIPIO VARCHAR(50),
@NOTAS VARCHAR(300),
@TELEFONO VARCHAR(20),
@IDEMPRESA INT

AS
BEGIN
	INSERT INTO [OFERTALABORAL].[DIRECCION] VALUES(DEFAULT,@DEPARTAMENTO,@MUNICIPIO,@NOTAS,@TELEFONO,@IDEMPRESA)
	SELECT 1 AS ESTADO,'Direccion Guardada Satisfactoriamente' as MENSAJE
END
GO
CREATE PROCEDURE OFERTALABORAL.UpdateDireccion

@IDDIRECCION INT,
@DEPARTAMENTO VARCHAR(50),
@MUNICIPIO VARCHAR(50),
@NOTAS VARCHAR(300),
@TELEFONO VARCHAR(20)

AS
BEGIN
	UPDATE [OFERTALABORAL].[DIRECCION]
	SET Departamento=@DEPARTAMENTO,Municipio=@MUNICIPIO,Notas=@NOTAS,Telefono=@TELEFONO
	WHERE IdDireccion=@IDDIRECCION
	SELECT 1 AS ESTADO,'Direccion Actualizada Satisfactoriamente' as MENSAJE

END

GO
CREATE PROCEDURE OFERTALABORAL.DeleteDireccion

@IDDIRECCION INT

AS
BEGIN
	DELETE FROM [OFERTALABORAL].[DIRECCION]
	WHERE IdDireccion=@IDDIRECCION
	SELECT 1 AS ESTADO,'Direccion Eliminada Satisfactoriamente' as MENSAJE

END

GO

/*----------------------------------------------------------------------------*/
/*Empresa*/

GO
CREATE PROCEDURE OFERTALABORAL.GetEmpresaById
@IDEMPRESA INT
AS
BEGIN
	SELECT * FROM [OFERTALABORAL].[EMPRESA]
	WHERE IdEmpresa=@IDEMPRESA
END
GO

CREATE PROCEDURE OFERTALABORAL.GetAllEmpresa
AS
BEGIN
	SELECT * FROM [OFERTALABORAL].[EMPRESA]
	WHERE Estado=1
END
GO

CREATE PROCEDURE OFERTALABORAL.SaveEmpresa

@IDEMPRESA INT,
@NOMBRE VARCHAR(100),
@AREADETRABAJO VARCHAR(50),
@PAGINAWEB VARCHAR(100),
@ESTADO BIT

AS
BEGIN
	INSERT INTO [OFERTALABORAL].[EMPRESA] VALUES(@IDEMPRESA,@NOMBRE,@AREADETRABAJO,@PAGINAWEB,@ESTADO)
	SELECT 1 AS ESTADO,'Empresa Guardada Satisfactoriamente' as MENSAJE
END
GO
CREATE PROCEDURE OFERTALABORAL.UpdateEmpresa

@IDEMPRESA INT,
@NOMBRE VARCHAR(100),
@AREADETRABAJO VARCHAR(50),
@PAGINAWEB VARCHAR(100),
@ESTADO BIT

AS
BEGIN
	UPDATE [OFERTALABORAL].[EMPRESA]
	SET Nombre=@NOMBRE,AreaDeTrabajo=@AREADETRABAJO,PaginaWeb=@PAGINAWEB,Estado=@ESTADO
	WHERE IdEmpresa=@IDEMPRESA
	SELECT 1 AS ESTADO,'Empresa Actualizada Satisfactoriamente' as MENSAJE

END

GO

/*----------------------------------------------------------------------------*/
/*Oferta Laboral*/

/*GO
CREATE PROCEDURE OFERTALABORAL.GetOfertaLaboralByEmpresa
@IDEMPRESA INT
AS
BEGIN
	SELECT * FROM [OFERTALABORAL].[OFERTALABORAL]
	WHERE IdEmpresa=@IDEMPRESA
END
GO

CREATE PROCEDURE OFERTALABORAL.GetAllOfertaLaboral
AS
BEGIN
	SELECT * FROM [OFERTALABORAL].[OFERTALABORAL]
	WHERE Estado=1
END
GO

CREATE PROCEDURE OFERTALABORAL.GetOfertaLaboralById
@IDOFERTALABORAL INT
AS
BEGIN
	SELECT * FROM [OFERTALABORAL].[OFERTALABORAL]
	WHERE IdOfertaLaboral=@IDOFERTALABORAL
END
GO*/

GO
CREATE PROCEDURE OFERTALABORAL.GetOfertasLaborales
@IDOFERTALABORAL INT = NULL,
@IDEMPRESA INT = NULL,
@ORDENAR_POR VARCHAR(50) = NULL
AS
BEGIN
	SELECT *
	FROM [OFERTALABORAL].[OFERTALABORAL]
	WHERE (@IDOFERTALABORAL IS NULL OR IDOFERTALABORAL = @IDOFERTALABORAL)
		AND (@IDEMPRESA IS NULL OR IDEMPRESA = @IDEMPRESA)
	ORDER BY 
		CASE WHEN @ORDENAR_POR = 'SALARIO' THEN SALARIO END DESC,
		CASE WHEN @ORDENAR_POR = 'IDNIVELEXPERIENCIA' THEN IDNIVELEXPERIENCIA END DESC,
		CASE WHEN @ORDENAR_POR = 'HORARIO' THEN HORARIO END DESC,
		CASE WHEN @ORDENAR_POR = 'FECHAVIGENCIA' THEN FECHAVIGENCIA END DESC
END
GO


CREATE PROCEDURE OFERTALABORAL.SaveOfertaLaboral

@TITULO VARCHAR(100),
@DESCRIPCION VARCHAR(300),
@IDNIVELEXPERIENCIA INT,
@HORARIO VARCHAR(50),
@SALARIO DECIMAL(10,2),
@TIPOTRABAJO VARCHAR(20),
@FECHAVIGENCIA DATE,
@CARGO VARCHAR(100),
@AREADETRABAJO VARCHAR(50),
@IDEMPRESA INT,
@ESTADO BIT

AS
BEGIN
	INSERT INTO [OFERTALABORAL].[OFERTALABORAL] VALUES(DEFAULT,@TITULO,@DESCRIPCION,@IDNIVELEXPERIENCIA,@HORARIO,@SALARIO,@TIPOTRABAJO,
	@FECHAVIGENCIA,@CARGO,@AREADETRABAJO,@IDEMPRESA,@ESTADO)
	SELECT 1 AS ESTADO,'Oferta Laboral Guardada Satisfactoriamente' as MENSAJE
END
GO
CREATE PROCEDURE OFERTALABORAL.UpdateOfertaLaboral

@IDOFERTALABORAL INT,
@TITULO VARCHAR(100),
@DESCRIPCION VARCHAR(300),
@IDNIVELEXPERIENCIA INT,
@HORARIO VARCHAR(50),
@SALARIO DECIMAL(10,2),
@TIPOTRABAJO VARCHAR(20),
@FECHAVIGENCIA DATE,
@CARGO VARCHAR(100),
@AREADETRABAJO VARCHAR(50),
@IDEMPRESA INT,
@ESTADO BIT

AS
BEGIN
	UPDATE [OFERTALABORAL].[OFERTALABORAL]
	SET Titulo=@TITULO,Descripcion=@DESCRIPCION,IdNivelExperiencia=@IDNIVELEXPERIENCIA,Horario=@HORARIO,Salario=@SALARIO,TipoTrabajo=@TIPOTRABAJO,FechaVigencia=@FECHAVIGENCIA,
	Cargo=@CARGO,AreaDeTrabajo=@AREADETRABAJO,IdEmpresa=@IDEMPRESA,Estado=@ESTADO
	WHERE IdOfertaLaboral=@IDOFERTALABORAL
	SELECT 1 AS ESTADO,'Oferta Laboral Actualizada Satisfactoriamente' as MENSAJE

END

GO


/*----------------------------------------------------------------------------*/
/*Oferta Laboral por Carrera*/

GO
CREATE PROCEDURE OFERTALABORAL.SaveOfertaLaboralCarrera

@IDOFERTALABORAL INT,
@IDCARRERA INT

AS
BEGIN
	INSERT INTO [OFERTALABORAL].[OFERTALABORALCARRERA] VALUES(@IDOFERTALABORAL,@IDCARRERA)
	SELECT 1 AS ESTADO,'Oferta Laboral X Carrera Guardado Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE OFERTALABORAL.DeleteOfertaLaboralCarrera

@IDOFERTALABORAL INT,
@IDCARRERA INT

AS
BEGIN
	DELETE FROM [OFERTALABORAL].[OFERTALABORALCARRERA]
	WHERE IdOfertaLaboral= @IDOFERTALABORAL AND IdCarrera=@IDCARRERA
	SELECT 1 AS ESTADO,'Oferta Laboral X Carrera Eliminado Satisfactoriamente' as MENSAJE

END

/*----------------------------------------------------------------------------*/
/*Postulacion*/

GO CREATE PROCEDURE OFERTALABORAL.GetPostulaciones
@IDESTUDIANTE INT = NULL,
@IDOFERTALABORAL INT = NULL,
@APROBADO BIT = NULL

AS
BEGIN
	SELECT * FROM [OFERTALABORAL].[POSTULACION]
	WHERE (@IDESTUDIANTE IS NULL OR IdEstudiante= @IDESTUDIANTE) AND
	(@IDOFERTALABORAL IS NULL OR IdOfertaLaboral=@IDOFERTALABORAL)AND
	(@APROBADO IS NULL OR Aprobado=@APROBADO)
END

GO
CREATE PROCEDURE OFERTALABORAL.SavePostulacion

@IDESTUDIANTE INT,
@IDOFERTALABORAL INT


AS
BEGIN
	INSERT INTO [OFERTALABORAL].[POSTULACION] VALUES(@IDESTUDIANTE,@IDOFERTALABORAL,DEFAULT)
	SELECT 1 AS ESTADO,'Postulacion Guardada Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE OFERTALABORAL.UpdatePostulacion
@IDESTUDIANTE INT,
@IDOFERTALABORAL INT,
@APROBADO BIT
AS
BEGIN
	UPDATE [OFERTALABORAL].[POSTULACION]
	SET Aprobado= Aprobado
	WHERE IdEstudiante=@IDESTUDIANTE AND IdOfertaLaboral=@IDOFERTALABORAL

END
GO

/*----------------------------------------------------------------------------*/
/*Vistas Empersas*/

GO CREATE PROCEDURE OFERTALABORAL.GetVistasEmpresaEstudiante
@IDESTUDIANTE INT = NULL,
@IDEMPRESA INT = NULL

AS
BEGIN
	SELECT * FROM [OFERTALABORAL].[VISTASEMPRESAESTUDIANTE]
	WHERE (@IDESTUDIANTE IS NULL OR IdEstudiante= @IDESTUDIANTE) AND
	(@IDEMPRESA IS NULL OR IdEmpresa=@IDEMPRESA)
END

GO
CREATE PROCEDURE OFERTALABORAL.SaveVistaEmpresaEstudiante

@IDESTUDIANTE INT,
@IDEMPRESA INT


AS
BEGIN
	INSERT INTO [OFERTALABORAL].[POSTULACION] VALUES(@IDEMPRESA,@IDESTUDIANTE,1,GETDATE())
	SELECT 1 AS ESTADO,'Vista de Empresa a Estudiante Guardada Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE OFERTALABORAL.UpdateVistaEmpresaEstudiante
@IDESTUDIANTE INT,
@IDEMPRESA INT
AS
BEGIN
	UPDATE [OFERTALABORAL].[VISTASEMPRESAESTUDIANTE]
	SET Cantidad=Cantidad+1 , UltimaVista = GETDATE()
	WHERE IdEstudiante=@IDESTUDIANTE AND IdEmpresa=@IDEMPRESA

END
GO

/*----------------------------------------------------------------------------*/
/*Empleado*/

GO CREATE PROCEDURE SISTEMA.GetEmpleados
@IDEMPLEADO INT = NULL,
@ESTADO BIT = NULL

AS
BEGIN
	SELECT * FROM [SISTEMA].[EMPLEADO]
	WHERE (@IDEMPLEADO IS NULL OR IdEmpleado= @IDEMPLEADO)AND
	(@ESTADO IS NULL OR Estado=@ESTADO)
END

GO
CREATE PROCEDURE SISTEMA.SaveEmpleado

@IDEMPLEADO INT


AS
BEGIN
	INSERT INTO [SISTEMA].[EMPLEADO] VALUES(@IDEMPLEADO,DEFAULT)
	SELECT 1 AS ESTADO,'Empleado Guardado Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE SISTEMA.UpdateEmpleado
@IDEMPLEADO INT,
@ESTADO BIT
AS
BEGIN
	UPDATE [SISTEMA].[EMPLEADO]
	SET Estado= @ESTADO
	WHERE IdEmpleado = @IDEMPLEADO

END
GO


/*----------------------------------------------------------------------------*/
/*Nivel Experiencia*/

GO CREATE PROCEDURE SISTEMA.GetNivelExperiencia
@IDNIVELEXPERIENCIA INT = NULL,
@NOMBRE VARCHAR(20)

AS
BEGIN
	SELECT * FROM [SISTEMA].[NIVELEXPERIENCIA]
	WHERE (@IDNIVELEXPERIENCIA IS NULL OR IdNivelExperiencia= @IDNIVELEXPERIENCIA)
END

GO
CREATE PROCEDURE SISTEMA.SaveNivelExperiencia

@NOMBRE VARCHAR(20)
AS
BEGIN
	INSERT INTO [SISTEMA].[NIVELEXPERIENCIA] VALUES(DEFAULT,@NOMBRE)
	SELECT 1 AS ESTADO,'Nivel de Experiencia Guardado Satisfactoriamente' as MENSAJE
END

/*----------------------------------------------------------------------------*/
/*Usuario*/

GO CREATE PROCEDURE SISTEMA.GetUsuarios
@IDUSUARIO INT = NULL,
@ESTADO BIT = NULL

AS
BEGIN
	SELECT * FROM [SISTEMA].[USUARIO]
	WHERE (@IDUSUARIO IS NULL OR IdUsuario= @IDUSUARIO)AND
	(@ESTADO IS NULL OR Estado=@ESTADO)
END

GO
CREATE PROCEDURE SISTEMA.SaveUsuario

@NOMBRE VARCHAR(50),
@SEGUNDONOMBRE VARCHAR(50),
@APELLIDO VARCHAR(50),
@SEGUNDOAPELLIDO VARCHAR(50),
@CORREO VARCHAR(50),
@TELEFONO VARCHAR(20),
@CONTRASENA VARCHAR(20)


AS
BEGIN
	INSERT INTO [SISTEMA].[USUARIO] VALUES(DEFAULT,@NOMBRE,@SEGUNDONOMBRE,@APELLIDO,@SEGUNDOAPELLIDO,@CORREO,@TELEFONO,@CONTRASENA,DEFAULT)
	SELECT 1 AS ESTADO,'Usuario Guardado Satisfactoriamente' as MENSAJE
END

GO
CREATE PROCEDURE SISTEMA.UpdateUsuario
@IDUSUARIO INT,
@NOMBRE VARCHAR(50),
@SEGUNDONOMBRE VARCHAR(50),
@APELLIDO VARCHAR(50),
@SEGUNDOAPELLIDO VARCHAR(50),
@CORREO VARCHAR(50),
@TELEFONO VARCHAR(20),
@CONTRASENA VARCHAR(20),
@ESTADO BIT
AS
BEGIN
	UPDATE [SISTEMA].[USUARIO]
	SET Nombre=@NOMBRE,SegundoNombre=@SEGUNDONOMBRE,Apellido=@APELLIDO,SegundoApellido=@SEGUNDOAPELLIDO,
	Correo=@CORREO,Telefono=@TELEFONO,Contrasena=@CONTRASENA,Estado=@ESTADO
	WHERE IdUsuario = @IDUSUARIO

END
GO