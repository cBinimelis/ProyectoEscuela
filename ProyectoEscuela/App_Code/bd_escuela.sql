USE [master]
GO
/****** Object:  Database [bd_educacion]    Script Date: 05/01/2017 13:35:31 ******/
CREATE DATABASE [bd_educacion]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bd_educacion', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\bd_educacion.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bd_educacion_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\bd_educacion_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bd_educacion].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bd_educacion] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bd_educacion] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bd_educacion] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bd_educacion] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bd_educacion] SET ARITHABORT OFF 
GO
ALTER DATABASE [bd_educacion] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bd_educacion] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bd_educacion] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bd_educacion] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bd_educacion] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bd_educacion] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bd_educacion] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bd_educacion] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bd_educacion] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bd_educacion] SET  ENABLE_BROKER 
GO
ALTER DATABASE [bd_educacion] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bd_educacion] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bd_educacion] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bd_educacion] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bd_educacion] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bd_educacion] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bd_educacion] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bd_educacion] SET RECOVERY FULL 
GO
ALTER DATABASE [bd_educacion] SET  MULTI_USER 
GO
ALTER DATABASE [bd_educacion] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bd_educacion] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bd_educacion] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bd_educacion] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'bd_educacion', N'ON'
GO
USE [bd_educacion]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [bd_educacion]
GO
/****** Object:  Table [dbo].[Alumnos]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alumnos](
	[id_Alumno] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[Resumen] [text] NOT NULL,
	[id_curso] [int] NOT NULL,
	[id_tipoAlumno] [int] NULL,
	[Fecha_ingreso] [date] NOT NULL,
	[Fecha_egreso] [date] NOT NULL,
 CONSTRAINT [PK_Alumnos] PRIMARY KEY CLUSTERED 
(
	[id_Alumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Apoderados]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Apoderados](
	[id_Apoderado] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[id_Alumno] [int] NOT NULL,
 CONSTRAINT [PK_Apoderados_1] PRIMARY KEY CLUSTERED 
(
	[id_Apoderado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AsignaturaAlumno]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AsignaturaAlumno](
	[id_Alumno] [int] NOT NULL,
	[id_Asignatura] [int] NOT NULL,
 CONSTRAINT [PK_AsignaturaAlumno] PRIMARY KEY CLUSTERED 
(
	[id_Alumno] ASC,
	[id_Asignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Asignaturas]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Asignaturas](
	[id_Asignatura] [int] IDENTITY(1,1) NOT NULL,
	[descripcion_asignatura] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Asignaturas] PRIMARY KEY CLUSTERED 
(
	[id_Asignatura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comentario_Comunicados]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentario_Comunicados](
	[id_Comentario] [int] IDENTITY(1,1) NOT NULL,
	[id_Autor] [int] NOT NULL,
	[Contenido] [text] NOT NULL,
	[Fecha_Comentario] [date] NOT NULL,
	[id_Comunicado] [int] NOT NULL,
 CONSTRAINT [PK_Comentario_Comunicados] PRIMARY KEY CLUSTERED 
(
	[id_Comentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comentarios_SubForo]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentarios_SubForo](
	[id_Comentario] [int] IDENTITY(1,1) NOT NULL,
	[id_Almno] [int] NOT NULL,
	[Contenido] [text] NOT NULL,
	[Fecha_Comentario] [date] NOT NULL,
	[id_Publicacion] [int] NOT NULL,
 CONSTRAINT [PK_Comentarios_SubForo] PRIMARY KEY CLUSTERED 
(
	[id_Comentario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comunicado]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comunicado](
	[id_Comunicado] [int] IDENTITY(1,1) NOT NULL,
	[id_Profesor] [int] NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Contenido] [text] NOT NULL,
	[Fecha_Comunicado] [date] NOT NULL,
	[id_EstadoPublicacion] [int] NOT NULL,
	[id_Importancia] [int] NOT NULL,
 CONSTRAINT [PK_Comunicados] PRIMARY KEY CLUSTERED 
(
	[id_Comunicado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Conexiones]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conexiones](
	[id_usuario] [int] NOT NULL,
	[Primera_Conexion] [date] NOT NULL,
	[Ultima_Conexion] [date] NOT NULL,
	[Ultima_Edicion] [date] NOT NULL,
 CONSTRAINT [PK_Conexiones] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cursos]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cursos](
	[id_curso] [int] IDENTITY(1,1) NOT NULL,
	[descripcion_curso] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Cursos] PRIMARY KEY CLUSTERED 
(
	[id_curso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estado]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[id_estado] [int] NOT NULL,
	[descripcion_estado] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[id_estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estado_Foto]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_Foto](
	[id_estadoFoto] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estado_Foto] PRIMARY KEY CLUSTERED 
(
	[id_estadoFoto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estado_Publicacion]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_Publicacion](
	[id_EstadoPublicacion] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estado_Publicacion] PRIMARY KEY CLUSTERED 
(
	[id_EstadoPublicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Evaluaciones]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluaciones](
	[id_Evaluacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[id_Asignatura] [int] NOT NULL,
	[id_Curso] [int] NOT NULL,
	[Fecha_Evaluacion] [date] NOT NULL,
 CONSTRAINT [PK_Evaluaciones] PRIMARY KEY CLUSTERED 
(
	[id_Evaluacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EvaluacionesAlumno]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EvaluacionesAlumno](
	[id_Evaluacion] [int] NOT NULL,
	[id_Alumno] [int] NOT NULL,
	[Nota_Evaluacion] [varchar](4) NOT NULL,
 CONSTRAINT [PK_EvaluacionesAlumno] PRIMARY KEY CLUSTERED 
(
	[id_Evaluacion] ASC,
	[id_Alumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Foto_Galeria]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foto_Galeria](
	[id_Foto] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[id_Profesor] [int] NOT NULL,
	[Direccion_Foto] [varchar](50) NOT NULL,
	[Extension] [varchar](5) NOT NULL,
	[Fecha_Publicacion] [date] NOT NULL,
 CONSTRAINT [PK_Foto_Galeria] PRIMARY KEY CLUSTERED 
(
	[id_Foto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Foto_Perfil]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foto_Perfil](
	[id_fotoPerfil] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Extension] [varchar](5) NOT NULL,
	[Fecha_Creacion] [date] NOT NULL,
	[id_estadoFoto] [int] NOT NULL,
 CONSTRAINT [PK_Foto_Perfil] PRIMARY KEY CLUSTERED 
(
	[id_fotoPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genero]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genero](
	[id_genero] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Genero] PRIMARY KEY CLUSTERED 
(
	[id_genero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Importancia]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Importancia](
	[id_Importancia] [int] NOT NULL,
	[descripcion_importancia] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Importancia] PRIMARY KEY CLUSTERED 
(
	[id_Importancia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Profesores]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesores](
	[id_Profesor] [int] NOT NULL,
	[id_usuario] [int] NOT NULL,
	[Fecha_ingreso] [date] NOT NULL,
	[Fecha_egreso] [date] NOT NULL,
 CONSTRAINT [PK_Profesores] PRIMARY KEY CLUSTERED 
(
	[id_Profesor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publicacion_SubForo]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publicacion_SubForo](
	[id_Publicacion] [int] IDENTITY(1,1) NOT NULL,
	[id_Alumno] [int] NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Contenido] [text] NOT NULL,
	[Fecha_Publicacion] [date] NOT NULL,
	[id_EstadoPublicacion] [int] NOT NULL,
 CONSTRAINT [PK_Publicacion_SubForo] PRIMARY KEY CLUSTERED 
(
	[id_Publicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[id_tipo] [int] NOT NULL,
	[descripcion_tipo] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Tipo] PRIMARY KEY CLUSTERED 
(
	[id_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Alumno]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Alumno](
	[id_tipoAlumno] [int] NOT NULL,
	[descripcion_tipoAlumno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo_Alumno] PRIMARY KEY CLUSTERED 
(
	[id_tipoAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[id_usuario] [int] NOT NULL,
	[Run] [varchar](11) NOT NULL,
	[Primer_Nombre] [varchar](50) NOT NULL,
	[Segundo_Nombre] [varchar](100) NOT NULL,
	[Apellido_paterno] [varchar](100) NOT NULL,
	[Apellido_materno] [varchar](100) NOT NULL,
	[Correo] [varchar](100) NOT NULL,
	[Password] [varchar](max) NOT NULL,
	[Direccion] [varchar](150) NOT NULL,
	[Fecha_Nacimiento] [date] NOT NULL,
	[id_genero] [int] NOT NULL,
	[id_fotoPerfil] [int] NOT NULL,
	[id_Tipo] [int] NOT NULL,
	[id_Estado] [int] NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  View [dbo].[v_usuario]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[v_usuario] as
	select id_usuario, Run as 'RUN', u.Primer_Nombre, u.Segundo_Nombre, u.Apellido_paterno, u.Apellido_materno,
	u.Primer_Nombre +' '+ u.Segundo_Nombre +' '+ u.Apellido_paterno +' '+ u.Apellido_materno as 'Nombre Completo',
	u.Correo as 'Correo', u.Password as 'Contraseña', u.Direccion as 'Dirección', CONVERT(varchar(11),u.Fecha_Nacimiento,106) as 'Nacimiento',
	g.id_genero, g.Descripcion as 'Genero', t.id_tipo, t.descripcion_tipo as 'Tipo', e.id_estado, e.descripcion_estado as 'Estado', f.id_fotoPerfil 
	from Usuarios u
	inner join Genero g on u.id_genero = g.id_genero
	inner join Tipo t on u.id_Tipo = t.id_tipo
	inner join Estado e on u.id_Estado = e.id_estado
	inner join Foto_Perfil f on u.id_fotoPerfil = f.id_fotoPerfil

GO
/****** Object:  View [dbo].[vAlumnos]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vAlumnos]
AS
SELECT        a.id_Alumno, a.id_usuario, u.Primer_Nombre + ' ' + u.Apellido_paterno + ' ' + u.Apellido_materno AS Nombre_Completo, u.Run, c.id_curso, c.descripcion_curso AS Curso, ta.id_tipoAlumno, 
                         ta.descripcion_tipoAlumno AS Tipo_de_Alumno, a.Resumen AS Perfil_de_Alumno, CONVERT(varchar(11), a.Fecha_ingreso, 106) AS Fecha_de_Ingreso, CONVERT(varchar(11), a.Fecha_egreso, 106) 
                         AS Fecha_de_Egreso
FROM            dbo.Alumnos AS a INNER JOIN
                         dbo.Usuarios AS u ON u.id_usuario = a.id_usuario INNER JOIN
                         dbo.Cursos AS c ON c.id_curso = a.id_curso INNER JOIN
                         dbo.Tipo_Alumno AS ta ON ta.id_tipoAlumno = a.id_tipoAlumno

GO
INSERT [dbo].[Alumnos] ([id_Alumno], [id_usuario], [Resumen], [id_curso], [id_tipoAlumno], [Fecha_ingreso], [Fecha_egreso]) VALUES (1, 2, N'BlaBlaBla', 1, 1, CAST(N'2015-03-10' AS Date), CAST(N'2018-12-22' AS Date))
INSERT [dbo].[Apoderados] ([id_Apoderado], [id_usuario], [id_Alumno]) VALUES (1, 3, 1)
SET IDENTITY_INSERT [dbo].[Asignaturas] ON 

INSERT [dbo].[Asignaturas] ([id_Asignatura], [descripcion_asignatura]) VALUES (1, N'Lenguaje')
INSERT [dbo].[Asignaturas] ([id_Asignatura], [descripcion_asignatura]) VALUES (2, N'Matemáticas')
INSERT [dbo].[Asignaturas] ([id_Asignatura], [descripcion_asignatura]) VALUES (3, N'Historia')
INSERT [dbo].[Asignaturas] ([id_Asignatura], [descripcion_asignatura]) VALUES (4, N'Inglés')
INSERT [dbo].[Asignaturas] ([id_Asignatura], [descripcion_asignatura]) VALUES (5, N'Ciencias Naturales')
INSERT [dbo].[Asignaturas] ([id_Asignatura], [descripcion_asignatura]) VALUES (6, N'Música')
INSERT [dbo].[Asignaturas] ([id_Asignatura], [descripcion_asignatura]) VALUES (7, N'Artes Visuales')
INSERT [dbo].[Asignaturas] ([id_Asignatura], [descripcion_asignatura]) VALUES (8, N'Educación Física')
INSERT [dbo].[Asignaturas] ([id_Asignatura], [descripcion_asignatura]) VALUES (9, N'Taller')
SET IDENTITY_INSERT [dbo].[Asignaturas] OFF
SET IDENTITY_INSERT [dbo].[Comentario_Comunicados] ON 

INSERT [dbo].[Comentario_Comunicados] ([id_Comentario], [id_Autor], [Contenido], [Fecha_Comentario], [id_Comunicado]) VALUES (2, 2, N'Comentario de Prueba', CAST(N'2016-11-08' AS Date), 1)
INSERT [dbo].[Comentario_Comunicados] ([id_Comentario], [id_Autor], [Contenido], [Fecha_Comentario], [id_Comunicado]) VALUES (3, 2, N'Segundo comentario de prueba', CAST(N'2016-11-16' AS Date), 1)
INSERT [dbo].[Comentario_Comunicados] ([id_Comentario], [id_Autor], [Contenido], [Fecha_Comentario], [id_Comunicado]) VALUES (4, 1, N'Prueba de administracion', CAST(N'2016-11-16' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Comentario_Comunicados] OFF
SET IDENTITY_INSERT [dbo].[Comunicado] ON 

INSERT [dbo].[Comunicado] ([id_Comunicado], [id_Profesor], [Titulo], [Contenido], [Fecha_Comunicado], [id_EstadoPublicacion], [id_Importancia]) VALUES (1, 1, N'Prueba', N'Comunicado de prueba, para así verificar que todo funciona de la mejor manera', CAST(N'2016-11-07' AS Date), 1, 1)
INSERT [dbo].[Comunicado] ([id_Comunicado], [id_Profesor], [Titulo], [Contenido], [Fecha_Comunicado], [id_EstadoPublicacion], [id_Importancia]) VALUES (2, 2, N'Prueba 2', N'Veamos si se puede crear un comunicado desde la app', CAST(N'2016-11-16' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[Comunicado] OFF
SET IDENTITY_INSERT [dbo].[Cursos] ON 

INSERT [dbo].[Cursos] ([id_curso], [descripcion_curso]) VALUES (1, N'1° A')
INSERT [dbo].[Cursos] ([id_curso], [descripcion_curso]) VALUES (2, N'1º B')
INSERT [dbo].[Cursos] ([id_curso], [descripcion_curso]) VALUES (3, N'1º C')
INSERT [dbo].[Cursos] ([id_curso], [descripcion_curso]) VALUES (4, N'1º D')
INSERT [dbo].[Cursos] ([id_curso], [descripcion_curso]) VALUES (5, N'1º E')
INSERT [dbo].[Cursos] ([id_curso], [descripcion_curso]) VALUES (6, N'2º A')
INSERT [dbo].[Cursos] ([id_curso], [descripcion_curso]) VALUES (7, N'2º B')
INSERT [dbo].[Cursos] ([id_curso], [descripcion_curso]) VALUES (8, N'2º C')
INSERT [dbo].[Cursos] ([id_curso], [descripcion_curso]) VALUES (9, N'2º D')
INSERT [dbo].[Cursos] ([id_curso], [descripcion_curso]) VALUES (10, N'2º E')
SET IDENTITY_INSERT [dbo].[Cursos] OFF
INSERT [dbo].[Estado] ([id_estado], [descripcion_estado]) VALUES (1, N'Activo')
INSERT [dbo].[Estado] ([id_estado], [descripcion_estado]) VALUES (2, N'Bloqueado')
INSERT [dbo].[Estado] ([id_estado], [descripcion_estado]) VALUES (3, N'Eliminado')
INSERT [dbo].[Estado_Foto] ([id_estadoFoto], [Descripcion]) VALUES (1, N'Actual')
INSERT [dbo].[Estado_Foto] ([id_estadoFoto], [Descripcion]) VALUES (2, N'Antigua')
INSERT [dbo].[Estado_Foto] ([id_estadoFoto], [Descripcion]) VALUES (3, N'Eliminada')
INSERT [dbo].[Estado_Publicacion] ([id_EstadoPublicacion], [Descripcion]) VALUES (1, N'Activa')
INSERT [dbo].[Estado_Publicacion] ([id_EstadoPublicacion], [Descripcion]) VALUES (2, N'Cerrada')
INSERT [dbo].[Estado_Publicacion] ([id_EstadoPublicacion], [Descripcion]) VALUES (3, N'Eliminada')
SET IDENTITY_INSERT [dbo].[Evaluaciones] ON 

INSERT [dbo].[Evaluaciones] ([id_Evaluacion], [Descripcion], [id_Asignatura], [id_Curso], [Fecha_Evaluacion]) VALUES (5, N'Prueba de Prueba', 3, 8, CAST(N'2016-11-30' AS Date))
SET IDENTITY_INSERT [dbo].[Evaluaciones] OFF
SET IDENTITY_INSERT [dbo].[Foto_Galeria] ON 

INSERT [dbo].[Foto_Galeria] ([id_Foto], [Titulo], [Descripcion], [id_Profesor], [Direccion_Foto], [Extension], [Fecha_Publicacion]) VALUES (1, N'Prueba', N'Es una imagen de prueba', 1, N'2.jpg', N'.jpg', CAST(N'2016-11-06' AS Date))
INSERT [dbo].[Foto_Galeria] ([id_Foto], [Titulo], [Descripcion], [id_Profesor], [Direccion_Foto], [Extension], [Fecha_Publicacion]) VALUES (2, N'Controla tu vida', N'No dejes que nada te quite lo que te apasiona!', 1, N'f12e89f64817eb89d5983d9b7640a031-d5i3c0x.png', N'.png', CAST(N'2016-11-07' AS Date))
INSERT [dbo].[Foto_Galeria] ([id_Foto], [Titulo], [Descripcion], [id_Profesor], [Direccion_Foto], [Extension], [Fecha_Publicacion]) VALUES (3, N'¿Quién sabe la respuesta?', N'Los niños interactuando en una actividad en clase con el profesor ', 1, N'Ninos.jpg', N'.jpg', CAST(N'2016-11-07' AS Date))
SET IDENTITY_INSERT [dbo].[Foto_Galeria] OFF
INSERT [dbo].[Foto_Perfil] ([id_fotoPerfil], [Nombre], [Extension], [Fecha_Creacion], [id_estadoFoto]) VALUES (1, N'Relleno.png', N'.png', CAST(N'2016-10-19' AS Date), 1)
INSERT [dbo].[Foto_Perfil] ([id_fotoPerfil], [Nombre], [Extension], [Fecha_Creacion], [id_estadoFoto]) VALUES (2, N'perfect-loop-gif-gameboy.gif', N'.gif', CAST(N'2016-10-28' AS Date), 1)
INSERT [dbo].[Foto_Perfil] ([id_fotoPerfil], [Nombre], [Extension], [Fecha_Creacion], [id_estadoFoto]) VALUES (3, N'perfect-loop-gif-plug.gif', N'.gif', CAST(N'2016-10-28' AS Date), 1)
INSERT [dbo].[Foto_Perfil] ([id_fotoPerfil], [Nombre], [Extension], [Fecha_Creacion], [id_estadoFoto]) VALUES (4, N'1 (1).jpg', N'.jpg', CAST(N'2016-11-02' AS Date), 1)
INSERT [dbo].[Genero] ([id_genero], [Descripcion]) VALUES (1, N'Masculino')
INSERT [dbo].[Genero] ([id_genero], [Descripcion]) VALUES (2, N'Femenino')
INSERT [dbo].[Genero] ([id_genero], [Descripcion]) VALUES (3, N'Sin Especificar')
INSERT [dbo].[Importancia] ([id_Importancia], [descripcion_importancia]) VALUES (1, N'Baja')
INSERT [dbo].[Importancia] ([id_Importancia], [descripcion_importancia]) VALUES (2, N'Normal')
INSERT [dbo].[Importancia] ([id_Importancia], [descripcion_importancia]) VALUES (3, N'Urgente')
INSERT [dbo].[Profesores] ([id_Profesor], [id_usuario], [Fecha_ingreso], [Fecha_egreso]) VALUES (1, 6, CAST(N'2016-11-03' AS Date), CAST(N'2999-12-12' AS Date))
INSERT [dbo].[Profesores] ([id_Profesor], [id_usuario], [Fecha_ingreso], [Fecha_egreso]) VALUES (2, 4, CAST(N'2016-11-16' AS Date), CAST(N'2999-12-12' AS Date))
INSERT [dbo].[Tipo] ([id_tipo], [descripcion_tipo]) VALUES (1, N'Administrador')
INSERT [dbo].[Tipo] ([id_tipo], [descripcion_tipo]) VALUES (2, N'Alumno')
INSERT [dbo].[Tipo] ([id_tipo], [descripcion_tipo]) VALUES (3, N'Profesor')
INSERT [dbo].[Tipo] ([id_tipo], [descripcion_tipo]) VALUES (4, N'Apoderado')
INSERT [dbo].[Tipo] ([id_tipo], [descripcion_tipo]) VALUES (5, N'No Asignado')
INSERT [dbo].[Tipo_Alumno] ([id_tipoAlumno], [descripcion_tipoAlumno]) VALUES (1, N'Cursante')
INSERT [dbo].[Tipo_Alumno] ([id_tipoAlumno], [descripcion_tipoAlumno]) VALUES (2, N'Egresado')
INSERT [dbo].[Tipo_Alumno] ([id_tipoAlumno], [descripcion_tipoAlumno]) VALUES (3, N'Expulsado')
INSERT [dbo].[Usuarios] ([id_usuario], [Run], [Primer_Nombre], [Segundo_Nombre], [Apellido_paterno], [Apellido_materno], [Correo], [Password], [Direccion], [Fecha_Nacimiento], [id_genero], [id_fotoPerfil], [id_Tipo], [id_Estado]) VALUES (1, N'188044786', N'Cristofer', N'Alejandro', N'Binimelis', N'Rivera', N'cristoferbinimelis@gmail.com', N'123456', N'Mi calle', CAST(N'1994-03-21' AS Date), 1, 1, 1, 1)
INSERT [dbo].[Usuarios] ([id_usuario], [Run], [Primer_Nombre], [Segundo_Nombre], [Apellido_paterno], [Apellido_materno], [Correo], [Password], [Direccion], [Fecha_Nacimiento], [id_genero], [id_fotoPerfil], [id_Tipo], [id_Estado]) VALUES (2, N'190007626', N'Evelyn', N'Carolina', N'Sepulveda', N'Duran', N'evelyn.sepulveda07@inacapmail.cl', N'123456', N'Tu calle', CAST(N'1995-07-18' AS Date), 2, 1, 2, 1)
INSERT [dbo].[Usuarios] ([id_usuario], [Run], [Primer_Nombre], [Segundo_Nombre], [Apellido_paterno], [Apellido_materno], [Correo], [Password], [Direccion], [Fecha_Nacimiento], [id_genero], [id_fotoPerfil], [id_Tipo], [id_Estado]) VALUES (3, N'222222222', N'Ash', N'Mantequilla ', N'Supreme', N'Ceylan', N'disquemaestro@pkmn.org', N'123456', N'Pueblo Paleta', CAST(N'1996-12-12' AS Date), 1, 1, 4, 1)
INSERT [dbo].[Usuarios] ([id_usuario], [Run], [Primer_Nombre], [Segundo_Nombre], [Apellido_paterno], [Apellido_materno], [Correo], [Password], [Direccion], [Fecha_Nacimiento], [id_genero], [id_fotoPerfil], [id_Tipo], [id_Estado]) VALUES (4, N'111111111', N'Juan', N'Perico', N'Los Palotes', N'Soto', N'jperico@tupoto.cl', N'123456', N'El campo que queda terrrible lejos', CAST(N'2001-03-12' AS Date), 3, 1, 3, 1)
INSERT [dbo].[Usuarios] ([id_usuario], [Run], [Primer_Nombre], [Segundo_Nombre], [Apellido_paterno], [Apellido_materno], [Correo], [Password], [Direccion], [Fecha_Nacimiento], [id_genero], [id_fotoPerfil], [id_Tipo], [id_Estado]) VALUES (5, N'123456789', N'Matilde', N'Neko', N'Perez', N'Montoya', N'mmpm@bla.cl', N'123', N'Direccion', CAST(N'1995-10-02' AS Date), 2, 4, 5, 1)
INSERT [dbo].[Usuarios] ([id_usuario], [Run], [Primer_Nombre], [Segundo_Nombre], [Apellido_paterno], [Apellido_materno], [Correo], [Password], [Direccion], [Fecha_Nacimiento], [id_genero], [id_fotoPerfil], [id_Tipo], [id_Estado]) VALUES (6, N'190529746', N'Josselyn', N'Valentina', N'Herrera', N'Sanzana', N'josherrera@udec.cl', N'123456', N'Direccion', CAST(N'1996-01-01' AS Date), 2, 1, 3, 1)
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD  CONSTRAINT [FK_Alumnos_Cursos] FOREIGN KEY([id_curso])
REFERENCES [dbo].[Cursos] ([id_curso])
GO
ALTER TABLE [dbo].[Alumnos] CHECK CONSTRAINT [FK_Alumnos_Cursos]
GO
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD  CONSTRAINT [FK_Alumnos_Tipo_Alumno] FOREIGN KEY([id_tipoAlumno])
REFERENCES [dbo].[Tipo_Alumno] ([id_tipoAlumno])
GO
ALTER TABLE [dbo].[Alumnos] CHECK CONSTRAINT [FK_Alumnos_Tipo_Alumno]
GO
ALTER TABLE [dbo].[Alumnos]  WITH CHECK ADD  CONSTRAINT [FK_Alumnos_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Alumnos] CHECK CONSTRAINT [FK_Alumnos_Usuarios]
GO
ALTER TABLE [dbo].[Apoderados]  WITH CHECK ADD  CONSTRAINT [FK_Apoderados_Alumnos] FOREIGN KEY([id_Alumno])
REFERENCES [dbo].[Alumnos] ([id_Alumno])
GO
ALTER TABLE [dbo].[Apoderados] CHECK CONSTRAINT [FK_Apoderados_Alumnos]
GO
ALTER TABLE [dbo].[Apoderados]  WITH CHECK ADD  CONSTRAINT [FK_Apoderados_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Apoderados] CHECK CONSTRAINT [FK_Apoderados_Usuarios]
GO
ALTER TABLE [dbo].[AsignaturaAlumno]  WITH CHECK ADD  CONSTRAINT [FK_AsignaturaAlumno_Alumnos] FOREIGN KEY([id_Alumno])
REFERENCES [dbo].[Alumnos] ([id_Alumno])
GO
ALTER TABLE [dbo].[AsignaturaAlumno] CHECK CONSTRAINT [FK_AsignaturaAlumno_Alumnos]
GO
ALTER TABLE [dbo].[AsignaturaAlumno]  WITH CHECK ADD  CONSTRAINT [FK_AsignaturaAlumno_Asignaturas] FOREIGN KEY([id_Asignatura])
REFERENCES [dbo].[Asignaturas] ([id_Asignatura])
GO
ALTER TABLE [dbo].[AsignaturaAlumno] CHECK CONSTRAINT [FK_AsignaturaAlumno_Asignaturas]
GO
ALTER TABLE [dbo].[Comentario_Comunicados]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Comunicados_Comunicados] FOREIGN KEY([id_Comunicado])
REFERENCES [dbo].[Comunicado] ([id_Comunicado])
GO
ALTER TABLE [dbo].[Comentario_Comunicados] CHECK CONSTRAINT [FK_Comentario_Comunicados_Comunicados]
GO
ALTER TABLE [dbo].[Comentario_Comunicados]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Comunicados_Usuarios] FOREIGN KEY([id_Autor])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Comentario_Comunicados] CHECK CONSTRAINT [FK_Comentario_Comunicados_Usuarios]
GO
ALTER TABLE [dbo].[Comentarios_SubForo]  WITH CHECK ADD  CONSTRAINT [FK_Comentarios_SubForo_Publicacion_SubForo] FOREIGN KEY([id_Publicacion])
REFERENCES [dbo].[Publicacion_SubForo] ([id_Publicacion])
GO
ALTER TABLE [dbo].[Comentarios_SubForo] CHECK CONSTRAINT [FK_Comentarios_SubForo_Publicacion_SubForo]
GO
ALTER TABLE [dbo].[Comunicado]  WITH CHECK ADD  CONSTRAINT [FK_Comunicados_Estado_Publicacion] FOREIGN KEY([id_EstadoPublicacion])
REFERENCES [dbo].[Estado_Publicacion] ([id_EstadoPublicacion])
GO
ALTER TABLE [dbo].[Comunicado] CHECK CONSTRAINT [FK_Comunicados_Estado_Publicacion]
GO
ALTER TABLE [dbo].[Comunicado]  WITH CHECK ADD  CONSTRAINT [FK_Comunicados_Importancia] FOREIGN KEY([id_Importancia])
REFERENCES [dbo].[Importancia] ([id_Importancia])
GO
ALTER TABLE [dbo].[Comunicado] CHECK CONSTRAINT [FK_Comunicados_Importancia]
GO
ALTER TABLE [dbo].[Comunicado]  WITH CHECK ADD  CONSTRAINT [FK_Comunicados_Profesores] FOREIGN KEY([id_Profesor])
REFERENCES [dbo].[Profesores] ([id_Profesor])
GO
ALTER TABLE [dbo].[Comunicado] CHECK CONSTRAINT [FK_Comunicados_Profesores]
GO
ALTER TABLE [dbo].[Conexiones]  WITH CHECK ADD  CONSTRAINT [FK_Conexiones_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Conexiones] CHECK CONSTRAINT [FK_Conexiones_Usuarios]
GO
ALTER TABLE [dbo].[Evaluaciones]  WITH CHECK ADD  CONSTRAINT [FK_Evaluaciones_Cursos] FOREIGN KEY([id_Curso])
REFERENCES [dbo].[Cursos] ([id_curso])
GO
ALTER TABLE [dbo].[Evaluaciones] CHECK CONSTRAINT [FK_Evaluaciones_Cursos]
GO
ALTER TABLE [dbo].[EvaluacionesAlumno]  WITH CHECK ADD  CONSTRAINT [FK_EvaluacionesAlumno_Alumnos] FOREIGN KEY([id_Alumno])
REFERENCES [dbo].[Alumnos] ([id_Alumno])
GO
ALTER TABLE [dbo].[EvaluacionesAlumno] CHECK CONSTRAINT [FK_EvaluacionesAlumno_Alumnos]
GO
ALTER TABLE [dbo].[EvaluacionesAlumno]  WITH CHECK ADD  CONSTRAINT [FK_EvaluacionesAlumno_Evaluaciones] FOREIGN KEY([id_Evaluacion])
REFERENCES [dbo].[Evaluaciones] ([id_Evaluacion])
GO
ALTER TABLE [dbo].[EvaluacionesAlumno] CHECK CONSTRAINT [FK_EvaluacionesAlumno_Evaluaciones]
GO
ALTER TABLE [dbo].[Foto_Galeria]  WITH CHECK ADD  CONSTRAINT [FK_Foto_Galeria_Profesores] FOREIGN KEY([id_Profesor])
REFERENCES [dbo].[Profesores] ([id_Profesor])
GO
ALTER TABLE [dbo].[Foto_Galeria] CHECK CONSTRAINT [FK_Foto_Galeria_Profesores]
GO
ALTER TABLE [dbo].[Foto_Perfil]  WITH CHECK ADD  CONSTRAINT [FK_Foto_Perfil_Estado_Foto] FOREIGN KEY([id_estadoFoto])
REFERENCES [dbo].[Estado_Foto] ([id_estadoFoto])
GO
ALTER TABLE [dbo].[Foto_Perfil] CHECK CONSTRAINT [FK_Foto_Perfil_Estado_Foto]
GO
ALTER TABLE [dbo].[Profesores]  WITH CHECK ADD  CONSTRAINT [FK_Profesores_Usuarios] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Profesores] CHECK CONSTRAINT [FK_Profesores_Usuarios]
GO
ALTER TABLE [dbo].[Profesores]  WITH CHECK ADD  CONSTRAINT [FK_Profesores_Usuarios1] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[Usuarios] ([id_usuario])
GO
ALTER TABLE [dbo].[Profesores] CHECK CONSTRAINT [FK_Profesores_Usuarios1]
GO
ALTER TABLE [dbo].[Publicacion_SubForo]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_SubForo_Alumnos] FOREIGN KEY([id_Alumno])
REFERENCES [dbo].[Alumnos] ([id_Alumno])
GO
ALTER TABLE [dbo].[Publicacion_SubForo] CHECK CONSTRAINT [FK_Publicacion_SubForo_Alumnos]
GO
ALTER TABLE [dbo].[Publicacion_SubForo]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_SubForo_Estado_Publicacion] FOREIGN KEY([id_EstadoPublicacion])
REFERENCES [dbo].[Estado_Publicacion] ([id_EstadoPublicacion])
GO
ALTER TABLE [dbo].[Publicacion_SubForo] CHECK CONSTRAINT [FK_Publicacion_SubForo_Estado_Publicacion]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Estado] FOREIGN KEY([id_Estado])
REFERENCES [dbo].[Estado] ([id_estado])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Estado]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Foto_Perfil] FOREIGN KEY([id_fotoPerfil])
REFERENCES [dbo].[Foto_Perfil] ([id_fotoPerfil])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Foto_Perfil]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Genero] FOREIGN KEY([id_genero])
REFERENCES [dbo].[Genero] ([id_genero])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Genero]
GO
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Tipo] FOREIGN KEY([id_Tipo])
REFERENCES [dbo].[Tipo] ([id_tipo])
GO
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Tipo]
GO
/****** Object:  StoredProcedure [dbo].[bApoderado]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[bApoderado] (@id int)
	as
	begin
	SELECT id_Apoderado, u.Correo
	FROM Apoderados a
	inner join Alumnos al on a.id_Alumno = al.id_Alumno
	inner join Cursos c on c.id_curso = al.id_curso
	inner join Usuarios u on u.id_usuario = a.id_usuario
	WHERE al.id_Alumno = 1 
	end
GO
/****** Object:  StoredProcedure [dbo].[bProfe]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[bProfe] (@run int)
	as
	begin
	SELECT p.id_Profesor 
	FROM Profesores p
	inner join Usuarios u on u.id_usuario = p.id_usuario
	WHERE u.Run = @run
	end
GO
/****** Object:  StoredProcedure [dbo].[buscaCursoApoderado]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[buscaCursoApoderado] (@id int)
as
begin
SELECT id_curso FROM Alumnos al inner join Apoderados a on a.id_Alumno =  al.id_Alumno where id_Apoderado = @id
end
GO
/****** Object:  StoredProcedure [dbo].[IniciarUsuario]    Script Date: 05/01/2017 13:35:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[IniciarUsuario](@Run int)
	as
	begin
	select u.Primer_Nombre+' '+ u.Apellido_paterno, u.Correo, fp.Nombre
	from Usuarios u
	inner join Foto_Perfil fp  on fp.id_fotoPerfil = u.id_fotoPerfil
	where Run = @Run
	end
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "u"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 136
               Right = 433
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "c"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 234
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ta"
            Begin Extent = 
               Top = 234
               Left = 38
               Bottom = 330
               Right = 257
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2910
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAlumnos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vAlumnos'
GO
USE [master]
GO
ALTER DATABASE [bd_educacion] SET  READ_WRITE 
GO
