USE [master]
GO

/****** Object:  Database [DBNASE]    Script Date: 15/05/2023 12:34:09 ******/
CREATE DATABASE [DBNASE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBNASE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBNASE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBNASE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBNASE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBNASE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [DBNASE] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [DBNASE] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [DBNASE] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [DBNASE] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [DBNASE] SET ARITHABORT OFF 
GO

ALTER DATABASE [DBNASE] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [DBNASE] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [DBNASE] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [DBNASE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [DBNASE] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [DBNASE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [DBNASE] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [DBNASE] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [DBNASE] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [DBNASE] SET  ENABLE_BROKER 
GO

ALTER DATABASE [DBNASE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [DBNASE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [DBNASE] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [DBNASE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [DBNASE] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [DBNASE] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [DBNASE] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [DBNASE] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [DBNASE] SET  MULTI_USER 
GO

ALTER DATABASE [DBNASE] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [DBNASE] SET DB_CHAINING OFF 
GO

ALTER DATABASE [DBNASE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [DBNASE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [DBNASE] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [DBNASE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [DBNASE] SET QUERY_STORE = OFF
GO

ALTER DATABASE [DBNASE] SET  READ_WRITE 
GO

