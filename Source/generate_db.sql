USE [master]
GO
/****** Object:  Database [Dapper]    Script Date: 9.04.2020 10:54:58 ******/
CREATE DATABASE [Dapper]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dapper', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Dapper.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dapper_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Dapper_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Dapper] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dapper].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dapper] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dapper] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dapper] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dapper] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dapper] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dapper] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dapper] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dapper] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dapper] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dapper] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dapper] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dapper] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dapper] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dapper] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dapper] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dapper] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dapper] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dapper] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dapper] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dapper] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dapper] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dapper] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dapper] SET RECOVERY FULL 
GO
ALTER DATABASE [Dapper] SET  MULTI_USER 
GO
ALTER DATABASE [Dapper] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dapper] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dapper] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dapper] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dapper] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Dapper', N'ON'
GO
ALTER DATABASE [Dapper] SET QUERY_STORE = OFF
GO
USE [Dapper]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 9.04.2020 10:54:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Cost] [float] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Dapper] SET  READ_WRITE 
GO



-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE GetProductId
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from dbo.Product t where t.Id = @id
END
GO

