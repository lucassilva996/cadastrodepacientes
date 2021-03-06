USE [master]
GO
/****** Object:  Database [Cadastro]    Script Date: 04/08/2020 19:35:03 ******/
CREATE DATABASE [Cadastro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cadastro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Cadastro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Cadastro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Cadastro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Cadastro] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cadastro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cadastro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cadastro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cadastro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cadastro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cadastro] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cadastro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Cadastro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cadastro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cadastro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cadastro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cadastro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cadastro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cadastro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cadastro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cadastro] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Cadastro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cadastro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cadastro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cadastro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cadastro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cadastro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cadastro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cadastro] SET RECOVERY FULL 
GO
ALTER DATABASE [Cadastro] SET  MULTI_USER 
GO
ALTER DATABASE [Cadastro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cadastro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cadastro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cadastro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Cadastro] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Cadastro', N'ON'
GO
ALTER DATABASE [Cadastro] SET QUERY_STORE = OFF
GO
USE [Cadastro]
GO
/****** Object:  Table [dbo].[Pacientes]    Script Date: 04/08/2020 19:35:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pacientes](
	[PacienteId] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Telefone] [nvarchar](50) NOT NULL,
	[Clinica] [nvarchar](50) NULL,
	[DataCadastro] [datetime] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Cadastro] SET  READ_WRITE 
GO
