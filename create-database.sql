USE [master]
GO
/****** Object:  Database [sirius]    Script Date: 16.01.2022 0:39:08 ******/
CREATE DATABASE [sirius]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sirius', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\sirius.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sirius_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\sirius_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [sirius] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sirius].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sirius] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sirius] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sirius] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sirius] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sirius] SET ARITHABORT OFF 
GO
ALTER DATABASE [sirius] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sirius] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sirius] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sirius] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sirius] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sirius] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sirius] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sirius] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sirius] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sirius] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sirius] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sirius] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sirius] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sirius] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sirius] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sirius] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sirius] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sirius] SET RECOVERY FULL 
GO
ALTER DATABASE [sirius] SET  MULTI_USER 
GO
ALTER DATABASE [sirius] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sirius] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sirius] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sirius] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sirius] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [sirius] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'sirius', N'ON'
GO
ALTER DATABASE [sirius] SET QUERY_STORE = OFF
GO
USE [sirius]
GO
/****** Object:  Table [dbo].[deps]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deps](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_deps] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[persons]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[persons](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](100) NOT NULL,
	[second_name] [varchar](100) NOT NULL,
	[last_name] [varchar](100) NOT NULL,
	[date_employ] [datetime] NULL,
	[date_uneploy] [datetime] NULL,
	[id_status] [int] NOT NULL,
	[id_dep] [int] NOT NULL,
	[id_post] [int] NOT NULL,
 CONSTRAINT [PK_persons] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[posts]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[posts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_posts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[status]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[persons]  WITH CHECK ADD  CONSTRAINT [FK_persons_deps] FOREIGN KEY([id_dep])
REFERENCES [dbo].[deps] ([id])
GO
ALTER TABLE [dbo].[persons] CHECK CONSTRAINT [FK_persons_deps]
GO
ALTER TABLE [dbo].[persons]  WITH CHECK ADD  CONSTRAINT [FK_persons_posts] FOREIGN KEY([id_post])
REFERENCES [dbo].[posts] ([id])
GO
ALTER TABLE [dbo].[persons] CHECK CONSTRAINT [FK_persons_posts]
GO
ALTER TABLE [dbo].[persons]  WITH CHECK ADD  CONSTRAINT [FK_persons_status] FOREIGN KEY([id_status])
REFERENCES [dbo].[status] ([id])
GO
ALTER TABLE [dbo].[persons] CHECK CONSTRAINT [FK_persons_status]
GO
/****** Object:  StoredProcedure [dbo].[get_deps_names]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_deps_names]
AS
	SELECT Name FROM deps
GO
/****** Object:  StoredProcedure [dbo].[get_employ_statistic]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_employ_statistic](@date_from AS datetime, @date_to AS datetime, @status_id AS int)
AS
	SET DATEFORMAT YMD
	SELECT CONVERT(DATE, date_employ) as day, COUNT(date_employ) as count_of_employers FROM persons
	GROUP BY date_employ, id_status
	HAVING id_status=@status_id and (date_employ between @date_from and @date_to)
GO
/****** Object:  StoredProcedure [dbo].[get_list_of_employees]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_list_of_employees](@order_by AS char(20) ,@sort_dir AS char(10))
AS
	SELECT first_name, second_name, last_name, date_employ, date_uneploy, s.name as status, d.name as dep, p.name as post FROM persons
	INNER JOIN
		status as s
		ON persons.id_status=s.id
	INNER JOIN
		deps as d
		ON persons.id_dep=d.id
	INNER JOIN
		posts as p
		ON persons.id_post=p.id
	ORDER BY
	CASE WHEN @order_by = 'first_name' and @sort_dir = 'asc' 
		THEN persons.first_name END ASC,
	CASE WHEN @order_by = 'first_name' and @sort_dir = 'desc' 
		THEN persons.first_name END DESC,

	CASE WHEN @order_by = 'second_name' and @sort_dir = 'asc' 
		THEN persons.second_name END ASC,
	CASE WHEN @order_by = 'second_name' and @sort_dir = 'desc' 
		THEN persons.second_name END DESC,

	CASE WHEN @order_by = 'last_name' and @sort_dir = 'asc' 
		THEN persons.first_name END ASC,
	CASE WHEN @order_by = 'last_name' and @sort_dir = 'desc' 
		THEN persons.first_name END DESC,

	CASE WHEN @order_by = 'date_employ' and @sort_dir = 'asc' 
		THEN persons.date_employ END ASC,
	CASE WHEN @order_by = 'date_employ' and @sort_dir = 'desc' 
		THEN persons.date_employ END DESC,

	CASE WHEN @order_by = 'date_uneploy' and @sort_dir = 'asc' 
		THEN persons.date_uneploy END ASC,
	CASE WHEN @order_by = 'date_uneploy' and @sort_dir = 'desc' 
		THEN persons.date_employ END DESC,

	CASE WHEN @order_by = 'status' and @sort_dir = 'asc' 
		THEN persons.id_status END ASC,
	CASE WHEN @order_by = 'status' and @sort_dir = 'desc' 
		THEN persons.id_status END DESC,

	CASE WHEN @order_by = 'dep' and @sort_dir = 'asc' 
		THEN persons.id_dep END ASC,
	CASE WHEN @order_by = 'dep' and @sort_dir = 'desc' 
		THEN persons.id_dep END DESC,

	CASE WHEN @order_by = 'post' and @sort_dir = 'asc' 
		THEN persons.id_post END ASC,
	CASE WHEN @order_by = 'post' and @sort_dir = 'desc' 
		THEN persons.id_post END DESC
GO
/****** Object:  StoredProcedure [dbo].[get_list_of_employees_dynamic]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_list_of_employees_dynamic](@order_by AS char(20) ,@sort_dir AS char(10))
AS
	IF (@order_by='first_name' or @order_by='second_name' or  @order_by='last_name' 
		or  @order_by='date_employ' or  @order_by='date_unemploy' or 
		@order_by='id_status' or @order_by='id_dep' or @order_by='id_post')
		and
		(@sort_dir='desc' or @sort_dir='asc')
		BEGIN
			exec('
				SELECT first_name, second_name, last_name, date_employ, date_uneploy, s.name as status, d.name as dep, p.name as post FROM persons
				INNER JOIN
					status as s
					ON persons.id_status=s.id
				INNER JOIN
					deps as d
					ON persons.id_dep=d.id
				INNER JOIN
					posts as p
					ON persons.id_post=p.id
				ORDER BY
			'+ @order_by + ' ' + @sort_dir)
		END
GO
/****** Object:  StoredProcedure [dbo].[get_list_of_employees_filter_by_dep]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_list_of_employees_filter_by_dep](@dep_id AS INT)
AS
	SELECT first_name, second_name, last_name, date_employ, date_uneploy, s.name as status, d.name as dep, p.name as post FROM persons
	INNER JOIN
		status as s
		ON persons.id_status=s.id
	INNER JOIN
		deps as d
		ON persons.id_dep=d.id
	INNER JOIN
		posts as p
		ON persons.id_post=p.id
	WHERE persons.id_dep=@dep_id
GO
/****** Object:  StoredProcedure [dbo].[get_list_of_employees_filter_by_second_name]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_list_of_employees_filter_by_second_name](@second_name AS varchar(40))
AS
	SELECT first_name, second_name, last_name, date_employ, date_uneploy, s.name as status, d.name as dep, p.name as post FROM persons
	INNER JOIN
		status as s
		ON persons.id_status=s.id
	INNER JOIN
		deps as d
		ON persons.id_dep=d.id
	INNER JOIN
		posts as p
		ON persons.id_post=p.id
	WHERE persons.second_name LIKE '%'+ @second_name +'%'
GO
/****** Object:  StoredProcedure [dbo].[get_list_of_employees_filter_by_status]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_list_of_employees_filter_by_status](@status_id AS INT)
AS
	SELECT first_name, second_name, last_name, date_employ, date_uneploy, s.name as status, d.name as dep, p.name as post FROM persons
	INNER JOIN
		status as s
		ON persons.id_status=s.id
	INNER JOIN
		deps as d
		ON persons.id_dep=d.id
	INNER JOIN
		posts as p
		ON persons.id_post=p.id
	WHERE persons.id_status=@status_id
GO
/****** Object:  StoredProcedure [dbo].[get_post_names]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_post_names]
AS
	SELECT Name FROM posts
GO
/****** Object:  StoredProcedure [dbo].[get_status_id_by_name]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_status_id_by_name](@Name as char(40))
AS
	SELECT Id FROM Status WHERE Name=@Name
GO
/****** Object:  StoredProcedure [dbo].[get_status_names]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_status_names]
AS
	SELECT Name FROM status
GO
/****** Object:  StoredProcedure [dbo].[get_unemploy_statistic]    Script Date: 16.01.2022 0:39:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[get_unemploy_statistic](@date_from AS datetime, @date_to AS datetime, @status_id AS int)
AS
	SET DATEFORMAT YMD
	SELECT CONVERT(DATE, date_uneploy) as day, COUNT(date_uneploy) as count_of_unemployers FROM persons
	GROUP BY date_uneploy, id_status
	HAVING id_status=@status_id and (date_uneploy between @date_from and @date_to)
GO
USE [master]
GO
ALTER DATABASE [sirius] SET  READ_WRITE 
GO
