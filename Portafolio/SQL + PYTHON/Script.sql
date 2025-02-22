USE [master]
GO
/****** Object:  Database [CarData]    Script Date: 3/1/2025 16:09:49 ******/
CREATE DATABASE [CarData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CarData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.AGUSDEV\MSSQL\DATA\CarData.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CarData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.AGUSDEV\MSSQL\DATA\CarData_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [CarData] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CarData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CarData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CarData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CarData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CarData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CarData] SET ARITHABORT OFF 
GO
ALTER DATABASE [CarData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CarData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CarData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CarData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CarData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CarData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CarData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CarData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CarData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CarData] SET  ENABLE_BROKER 
GO
ALTER DATABASE [CarData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CarData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CarData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CarData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CarData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CarData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CarData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CarData] SET RECOVERY FULL 
GO
ALTER DATABASE [CarData] SET  MULTI_USER 
GO
ALTER DATABASE [CarData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CarData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CarData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CarData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CarData] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CarData] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'CarData', N'ON'
GO
ALTER DATABASE [CarData] SET QUERY_STORE = ON
GO
ALTER DATABASE [CarData] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [CarData]
GO
/****** Object:  Table [dbo].[Autos]    Script Date: 3/1/2025 16:09:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autos](
	[Car_Name] [nvarchar](50) NOT NULL,
	[Year] [smallint] NOT NULL,
	[Selling_Price] [float] NOT NULL,
	[Present_Price] [float] NOT NULL,
	[Kms_Driven] [int] NOT NULL,
	[Fuel_Type] [nvarchar](50) NOT NULL,
	[Seller_Type] [nvarchar](50) NOT NULL,
	[Transmission] [nvarchar](50) NOT NULL,
	[Owner] [tinyint] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ritz', 2014, 3.3499999046325684, 5.5900001525878906, 27000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'sx4', 2013, 4.75, 9.5399999618530273, 43000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ciaz', 2017, 7.25, 9.8500003814697266, 6900, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'wagon r', 2011, 2.8499999046325684, 4.1500000953674316, 5200, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'swift', 2014, 4.5999999046325684, 6.869999885559082, 42450, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'vitara brezza', 2018, 9.25, 9.8299999237060547, 2071, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ciaz', 2015, 6.75, 8.119999885559082, 18796, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N's cross', 2015, 6.5, 8.6099996566772461, 33429, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ciaz', 2016, 8.75, 8.8900003433227539, 20273, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ciaz', 2015, 7.4499998092651367, 8.9200000762939453, 42367, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'alto 800', 2017, 2.8499999046325684, 3.5999999046325684, 2135, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ciaz', 2015, 6.8499999046325684, 10.380000114440918, 51000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ciaz', 2015, 7.5, 9.9399995803833, 15000, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ertiga', 2015, 6.0999999046325684, 7.7100000381469727, 26000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'dzire', 2009, 2.25, 7.2100000381469727, 77427, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ertiga', 2016, 7.75, 10.789999961853027, 43000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ertiga', 2015, 7.25, 10.789999961853027, 41678, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'wagon r', 2015, 3.25, 5.0900001525878906, 35500, N'CNG', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'sx4', 2010, 2.6500000953674316, 7.9800000190734863, 41442, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'alto k10', 2016, 2.8499999046325684, 3.9500000476837158, 25000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ignis', 2017, 4.9000000953674316, 5.7100000381469727, 2400, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'sx4', 2011, 4.4000000953674316, 8.0100002288818359, 50000, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'alto k10', 2014, 2.5, 3.4600000381469727, 45280, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'wagon r', 2013, 2.9000000953674316, 4.4099998474121094, 56879, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'swift', 2011, 3, 4.9899997711181641, 20000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'swift', 2013, 4.1500000953674316, 5.869999885559082, 55138, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'swift', 2017, 6, 6.4899997711181641, 16200, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'alto k10', 2010, 1.9500000476837158, 3.9500000476837158, 44542, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ciaz', 2015, 7.4499998092651367, 10.380000114440918, 45000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ritz', 2012, 3.0999999046325684, 5.9800000190734863, 51439, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ritz', 2011, 2.3499999046325684, 4.8899998664855957, 54200, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'swift', 2014, 4.9499998092651367, 7.4899997711181641, 39000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ertiga', 2014, 6, 9.9499998092651367, 45000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'dzire', 2014, 5.5, 8.0600004196167, 45000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'sx4', 2011, 2.9500000476837158, 7.7399997711181641, 49998, N'CNG', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'dzire', 2015, 4.6500000953674316, 7.1999998092651367, 48767, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'800', 2003, 0.34999999403953552, 2.2799999713897705, 127000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'alto k10', 2016, 3, 3.7599999904632568, 10079, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'sx4', 2003, 2.25, 7.9800000190734863, 62000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'baleno', 2016, 5.8499999046325684, 7.869999885559082, 24524, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'alto k10', 2014, 2.5499999523162842, 3.9800000190734863, 46706, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'sx4', 2008, 1.9500000476837158, 7.1500000953674316, 58000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'dzire', 2014, 5.5, 8.0600004196167, 45780, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'omni', 2012, 1.25, 2.690000057220459, 50000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ciaz', 2014, 7.5, 12.039999961853027, 15000, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ritz', 2013, 2.6500000953674316, 4.8899998664855957, 64532, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'wagon r', 2006, 1.0499999523162842, 4.1500000953674316, 65000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ertiga', 2015, 5.8000001907348633, 7.7100000381469727, 25870, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'ciaz', 2017, 7.75, 9.2899999618530273, 37000, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'fortuner', 2012, 14.899999618530273, 30.610000610351562, 104707, N'Diesel', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'fortuner', 2015, 23, 30.610000610351562, 40000, N'Diesel', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'innova', 2017, 18, 19.770000457763672, 15000, N'Diesel', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'fortuner', 2013, 16, 30.610000610351562, 135000, N'Diesel', N'Individual', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'innova', 2005, 2.75, 10.210000038146973, 90000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2009, 3.5999999046325684, 15.039999961853027, 70000, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'etios cross', 2015, 4.5, 7.2699999809265137, 40534, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2010, 4.75, 18.540000915527344, 50000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'etios g', 2014, 4.0999999046325684, 6.8000001907348633, 39485, N'Petrol', N'Dealer', N'Manual', 1)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'fortuner', 2014, 19.989999771118164, 35.959999084472656, 41000, N'Diesel', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2013, 6.9499998092651367, 18.610000610351562, 40001, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'etios cross', 2015, 4.5, 7.6999998092651367, 40588, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'fortuner', 2014, 18.75, 35.959999084472656, 78000, N'Diesel', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'fortuner', 2015, 23.5, 35.959999084472656, 47000, N'Diesel', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'fortuner', 2017, 33, 36.229999542236328, 6000, N'Diesel', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'etios liva', 2014, 4.75, 6.9499998092651367, 45000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'innova', 2017, 19.75, 23.149999618530273, 11000, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'fortuner', 2010, 9.25, 20.450000762939453, 59000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2011, 4.3499999046325684, 13.739999771118164, 88000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2016, 14.25, 20.909999847412109, 12000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'etios liva', 2014, 3.9500000476837158, 6.7600002288818359, 71000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2011, 4.5, 12.479999542236328, 45000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2013, 7.4499998092651367, 18.610000610351562, 56001, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'etios liva', 2011, 2.6500000953674316, 5.7100000381469727, 43000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'etios cross', 2014, 4.9000000953674316, 8.9300003051757812, 83000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'etios g', 2015, 3.9500000476837158, 6.8000001907348633, 36000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2013, 5.5, 14.680000305175781, 72000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla', 2004, 1.5, 12.350000381469727, 135154, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2010, 5.25, 22.829999923706055, 80000, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'fortuner', 2012, 14.5, 30.610000610351562, 89000, N'Diesel', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2016, 14.729999542236328, 14.890000343322754, 23000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'etios gd', 2015, 4.75, 7.8499999046325684, 40000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'innova', 2017, 23, 25.389999389648438, 15000, N'Diesel', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'innova', 2015, 12.5, 13.460000038146973, 38000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'innova', 2005, 3.4900000095367432, 13.460000038146973, 197176, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'camry', 2006, 2.5, 23.729999542236328, 142000, N'Petrol', N'Individual', N'Automatic', 3)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'land cruiser', 2010, 35, 92.5999984741211, 78000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2012, 5.9000000953674316, 13.739999771118164, 56000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'etios liva', 2013, 3.4500000476837158, 6.0500001907348633, 47000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'etios g', 2014, 4.75, 6.7600002288818359, 40000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2009, 3.7999999523162842, 18.610000610351562, 62000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'innova', 2014, 11.25, 16.090000152587891, 58242, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'innova', 2005, 3.5099999904632568, 13.699999809265137, 75000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2008, 4, 22.780000686645508, 89000, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2012, 5.8499999046325684, 18.610000610351562, 72000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'innova', 2016, 20.75, 25.389999389648438, 29000, N'Diesel', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2017, 17, 18.639999389648438, 8700, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'corolla altis', 2013, 7.0500001907348633, 18.610000610351562, 45000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'fortuner', 2010, 9.6499996185302734, 20.450000762939453, 50024, N'Diesel', N'Dealer', N'Manual', 0)
GO
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Thunder 500', 2016, 1.75, 1.8999999761581421, 3000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'UM Renegade Mojave', 2017, 1.7000000476837158, 1.8200000524520874, 1400, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'KTM RC200', 2017, 1.6499999761581421, 1.7799999713897705, 4000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Dominar 400', 2017, 1.4500000476837158, 1.6000000238418579, 1200, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Classic 350', 2017, 1.3500000238418579, 1.4700000286102295, 4100, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'KTM RC390', 2015, 1.3500000238418579, 2.369999885559082, 21700, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hyosung GT250R', 2014, 1.3500000238418579, 3.4500000476837158, 16500, N'Petrol', N'Individual', N'Manual', 1)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Thunder 350', 2013, 1.25, 1.5, 15000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Thunder 350', 2016, 1.2000000476837158, 1.5, 18000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Classic 350', 2017, 1.2000000476837158, 1.4700000286102295, 11000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'KTM RC200', 2016, 1.2000000476837158, 1.7799999713897705, 6000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Thunder 350', 2016, 1.1499999761581421, 1.5, 8700, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'KTM 390 Duke ', 2014, 1.1499999761581421, 2.4000000953674316, 7000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Mahindra Mojo XT300', 2016, 1.1499999761581421, 1.3999999761581421, 35000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Classic 350', 2015, 1.1499999761581421, 1.4700000286102295, 17000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Classic 350', 2015, 1.1100000143051148, 1.4700000286102295, 17500, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Classic 350', 2013, 1.1000000238418579, 1.4700000286102295, 33000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Thunder 500', 2015, 1.1000000238418579, 1.8999999761581421, 14000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Classic 350', 2015, 1.1000000238418579, 1.4700000286102295, 26000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Thunder 500', 2013, 1.0499999523162842, 1.8999999761581421, 5400, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Pulsar RS200', 2016, 1.0499999523162842, 1.2599999904632568, 5700, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Thunder 350', 2011, 1.0499999523162842, 1.5, 6900, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Bullet 350', 2016, 1.0499999523162842, 1.1699999570846558, 6000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Classic 350', 2013, 1, 1.4700000286102295, 46500, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Classic 500', 2012, 0.949999988079071, 1.75, 11500, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Royal Enfield Classic 500', 2009, 0.89999997615814209, 1.75, 40000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Avenger 220', 2017, 0.89999997615814209, 0.949999988079071, 1300, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Avenger 150', 2016, 0.75, 0.800000011920929, 7000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda CB Hornet 160R', 2017, 0.800000011920929, 0.87000000476837158, 3000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Yamaha FZ S V 2.0', 2017, 0.77999997138977051, 0.8399999737739563, 5000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda CB Hornet 160R', 2017, 0.75, 0.87000000476837158, 11000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Yamaha FZ 16', 2015, 0.75, 0.81999999284744263, 18000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Avenger 220', 2017, 0.75, 0.949999988079071, 3500, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Avenger 220', 2016, 0.72000002861022949, 0.949999988079071, 500, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'TVS Apache RTR 160', 2017, 0.64999997615814209, 0.81000000238418579, 11800, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Pulsar 150', 2015, 0.64999997615814209, 0.74000000953674316, 5000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda CBR 150', 2014, 0.64999997615814209, 1.2000000476837158, 23500, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Extreme', 2013, 0.64999997615814209, 0.78700000047683716, 16000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda CB Hornet 160R', 2016, 0.60000002384185791, 0.87000000476837158, 15000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Avenger 220 dtsi', 2015, 0.60000002384185791, 0.949999988079071, 16600, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda CBR 150', 2013, 0.60000002384185791, 1.2000000476837158, 32000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Avenger 150 street', 2016, 0.60000002384185791, 0.800000011920929, 20000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Yamaha FZ  v 2.0', 2015, 0.60000002384185791, 0.8399999737739563, 29000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Yamaha FZ  v 2.0', 2016, 0.60000002384185791, 0.8399999737739563, 25000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Pulsar  NS 200', 2014, 0.60000002384185791, 0.99000000953674316, 25000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'TVS Apache RTR 160', 2012, 0.60000002384185791, 0.81000000238418579, 19000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Extreme', 2014, 0.550000011920929, 0.78700000047683716, 15000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Yamaha FZ S V 2.0', 2015, 0.550000011920929, 0.8399999737739563, 58000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Pulsar 220 F', 2010, 0.51999998092651367, 0.93999999761581421, 45000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Pulsar 220 F', 2016, 0.50999999046325684, 0.93999999761581421, 24000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'TVS Apache RTR 180', 2011, 0.5, 0.82599997520446777, 6000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Passion X pro', 2016, 0.5, 0.550000011920929, 31000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Pulsar NS 200', 2012, 0.5, 0.99000000953674316, 13000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Pulsar NS 200', 2013, 0.5, 0.99000000953674316, 45000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Yamaha Fazer ', 2014, 0.5, 0.87999999523162842, 8000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda Activa 4G', 2017, 0.47999998927116394, 0.50999999046325684, 4300, N'Petrol', N'Individual', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'TVS Sport ', 2017, 0.47999998927116394, 0.51999998092651367, 15000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Yamaha FZ S V 2.0', 2015, 0.47999998927116394, 0.8399999737739563, 23000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda Dream Yuga ', 2017, 0.47999998927116394, 0.54000002145767212, 8600, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda Activa 4G', 2017, 0.44999998807907104, 0.50999999046325684, 4000, N'Petrol', N'Individual', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Avenger Street 220', 2011, 0.44999998807907104, 0.949999988079071, 24000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'TVS Apache RTR 180', 2014, 0.44999998807907104, 0.82599997520446777, 23000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Pulsar NS 200', 2012, 0.44999998807907104, 0.99000000953674316, 14500, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Avenger 220 dtsi', 2010, 0.44999998807907104, 0.949999988079071, 27000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Splender iSmart', 2016, 0.44999998807907104, 0.54000002145767212, 14000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Activa 3g', 2016, 0.44999998807907104, 0.54000002145767212, 500, N'Petrol', N'Individual', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Passion Pro', 2016, 0.44999998807907104, 0.550000011920929, 1000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'TVS Apache RTR 160', 2014, 0.41999998688697815, 0.81000000238418579, 42000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda CB Trigger', 2013, 0.41999998688697815, 0.73000001907348633, 12000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Splender iSmart', 2015, 0.40000000596046448, 0.54000002145767212, 14000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Yamaha FZ S ', 2012, 0.40000000596046448, 0.82999998331069946, 5500, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Passion Pro', 2015, 0.40000000596046448, 0.550000011920929, 6700, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Pulsar 135 LS', 2014, 0.40000000596046448, 0.63999998569488525, 13700, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Activa 4g', 2017, 0.40000000596046448, 0.50999999046325684, 1300, N'Petrol', N'Individual', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda CB Unicorn', 2015, 0.37999999523162842, 0.72000002861022949, 38600, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Honda CBZ extreme', 2011, 0.37999999523162842, 0.78700000047683716, 75000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda Karizma', 2011, 0.34999999403953552, 1.0499999523162842, 30000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda Activa 125', 2016, 0.34999999403953552, 0.56999999284744263, 24000, N'Petrol', N'Individual', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'TVS Jupyter', 2014, 0.34999999403953552, 0.51999998092651367, 19000, N'Petrol', N'Individual', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda Karizma', 2010, 0.31000000238418579, 1.0499999523162842, 213000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Honda Passion Pro', 2012, 0.30000001192092896, 0.50999999046325684, 60000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Splender Plus', 2016, 0.30000001192092896, 0.47999998927116394, 50000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda CB Shine', 2013, 0.30000001192092896, 0.57999998331069946, 30000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Discover 100', 2013, 0.27000001072883606, 0.4699999988079071, 21000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Pulsar 150', 2008, 0.25, 0.75, 26000, N'Petrol', N'Individual', N'Manual', 1)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Suzuki Access 125', 2008, 0.25, 0.57999998331069946, 1900, N'Petrol', N'Individual', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'TVS Wego', 2010, 0.25, 0.51999998092651367, 22000, N'Petrol', N'Individual', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda CB twister', 2013, 0.25, 0.50999999046325684, 32000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Glamour', 2013, 0.25, 0.56999999284744263, 18000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Super Splendor', 2005, 0.20000000298023224, 0.56999999284744263, 55000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Pulsar 150', 2008, 0.20000000298023224, 0.75, 60000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Discover 125', 2012, 0.20000000298023224, 0.56999999284744263, 25000, N'Petrol', N'Individual', N'Manual', 1)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero Hunk', 2007, 0.20000000298023224, 0.75, 49000, N'Petrol', N'Individual', N'Manual', 1)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero  Ignitor Disc', 2013, 0.20000000298023224, 0.64999997615814209, 24000, N'Petrol', N'Individual', N'Manual', 1)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Hero  CBZ Xtreme', 2008, 0.20000000298023224, 0.78700000047683716, 50000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj  ct 100', 2015, 0.18000000715255737, 0.31999999284744263, 35000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Activa 3g', 2008, 0.17000000178813934, 0.51999998092651367, 500000, N'Petrol', N'Individual', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda CB twister', 2010, 0.15999999642372131, 0.50999999046325684, 33000, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Discover 125', 2011, 0.15000000596046448, 0.56999999284744263, 35000, N'Petrol', N'Individual', N'Manual', 1)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Honda CB Shine', 2007, 0.11999999731779099, 0.57999998331069946, 53000, N'Petrol', N'Individual', N'Manual', 0)
GO
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'Bajaj Pulsar 150', 2006, 0.10000000149011612, 0.75, 92233, N'Petrol', N'Individual', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i20', 2010, 3.25, 6.7899999618530273, 58000, N'Diesel', N'Dealer', N'Manual', 1)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'grand i10', 2015, 4.4000000953674316, 5.6999998092651367, 28200, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i10', 2011, 2.9500000476837158, 4.5999999046325684, 53460, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'eon', 2015, 2.75, 4.429999828338623, 28282, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'grand i10', 2016, 5.25, 5.6999998092651367, 3493, N'Petrol', N'Dealer', N'Manual', 1)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'xcent', 2017, 5.75, 7.130000114440918, 12479, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'grand i10', 2015, 5.1500000953674316, 5.6999998092651367, 34797, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i20', 2017, 7.9000000953674316, 8.1000003814697266, 3435, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'grand i10', 2015, 4.8499999046325684, 5.6999998092651367, 21125, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i10', 2012, 3.0999999046325684, 4.5999999046325684, 35775, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'elantra', 2015, 11.75, 14.789999961853027, 43535, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'creta', 2016, 11.25, 13.600000381469727, 22671, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i20', 2011, 2.9000000953674316, 6.7899999618530273, 31604, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'grand i10', 2017, 5.25, 5.6999998092651367, 20114, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2012, 4.5, 9.3999996185302734, 36100, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'eon', 2016, 2.9000000953674316, 4.429999828338623, 12500, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'eon', 2016, 3.1500000953674316, 4.429999828338623, 15000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2014, 6.4499998092651367, 9.3999996185302734, 45078, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2012, 4.5, 9.3999996185302734, 36000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'eon', 2017, 3.5, 4.429999828338623, 38488, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i20', 2013, 4.5, 6.7899999618530273, 32000, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i20', 2014, 6, 7.5999999046325684, 77632, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2015, 8.25, 9.3999996185302734, 61381, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2013, 5.1100001335144043, 9.3999996185302734, 36198, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i10', 2011, 2.7000000476837158, 4.5999999046325684, 22517, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'grand i10', 2015, 5.25, 5.6999998092651367, 24678, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i10', 2011, 2.5499999523162842, 4.429999828338623, 57000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2012, 4.9499998092651367, 9.3999996185302734, 60000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i20', 2012, 3.0999999046325684, 6.7899999618530273, 52132, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2013, 6.1500000953674316, 9.3999996185302734, 45000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2017, 9.25, 9.3999996185302734, 15001, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'elantra', 2015, 11.449999809265137, 14.789999961853027, 12900, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'grand i10', 2013, 3.9000000953674316, 5.6999998092651367, 53000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'grand i10', 2015, 5.5, 5.6999998092651367, 4492, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2017, 9.1000003814697266, 9.3999996185302734, 15141, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'eon', 2016, 3.0999999046325684, 4.429999828338623, 11849, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'creta', 2015, 11.25, 13.600000381469727, 68000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2013, 4.8000001907348633, 9.3999996185302734, 60241, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'eon', 2012, 2, 4.429999828338623, 23709, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2012, 5.3499999046325684, 9.3999996185302734, 32322, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'xcent', 2015, 4.75, 7.130000114440918, 35866, N'Petrol', N'Dealer', N'Manual', 1)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'xcent', 2014, 4.4000000953674316, 7.130000114440918, 34000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i20', 2016, 6.25, 7.5999999046325684, 7000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2013, 5.9499998092651367, 9.3999996185302734, 49000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2012, 5.1999998092651367, 9.3999996185302734, 71000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i20', 2012, 3.75, 6.7899999618530273, 35000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'verna', 2015, 5.9499998092651367, 9.3999996185302734, 36000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i10', 2013, 4, 4.5999999046325684, 30000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'i20', 2016, 5.25, 7.5999999046325684, 17000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'creta', 2016, 12.899999618530273, 13.600000381469727, 35934, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2013, 5, 9.8999996185302734, 56701, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'brio', 2015, 5.4000000953674316, 6.820000171661377, 31427, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2014, 7.1999998092651367, 9.8999996185302734, 48000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2013, 5.25, 9.8999996185302734, 54242, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'brio', 2012, 3, 5.3499999046325684, 53675, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2016, 10.25, 13.600000381469727, 49562, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2015, 8.5, 13.600000381469727, 40324, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2015, 8.3999996185302734, 13.600000381469727, 25000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'amaze', 2014, 3.9000000953674316, 7, 36054, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2016, 9.1499996185302734, 13.600000381469727, 29223, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'brio', 2016, 5.5, 5.96999979019165, 5600, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'amaze', 2015, 4, 5.8000001907348633, 40023, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'jazz', 2016, 6.5999999046325684, 7.6999998092651367, 16002, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'amaze', 2015, 4, 7, 40026, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'jazz', 2017, 6.5, 8.6999998092651367, 21200, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'amaze', 2014, 3.6500000953674316, 7, 35000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2016, 8.3500003814697266, 9.3999996185302734, 19434, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'brio', 2017, 4.8000001907348633, 5.8000001907348633, 19000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2015, 6.6999998092651367, 10, 18828, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2011, 4.0999999046325684, 10, 69341, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2009, 3, 10, 69562, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2015, 7.5, 10, 27600, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'jazz', 2010, 2.25, 7.5, 61203, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'brio', 2014, 5.3000001907348633, 6.8000001907348633, 16500, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2016, 10.899999618530273, 13.600000381469727, 30753, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2015, 8.6499996185302734, 13.600000381469727, 24800, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2015, 9.6999998092651367, 13.600000381469727, 21780, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'jazz', 2016, 6, 8.3999996185302734, 4000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2014, 6.25, 13.600000381469727, 40126, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'brio', 2015, 5.25, 5.9000000953674316, 14465, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2006, 2.0999999046325684, 7.5999999046325684, 50456, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2014, 8.25, 14, 63000, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2016, 8.9899997711181641, 11.800000190734863, 9010, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'brio', 2013, 3.5, 5.9000000953674316, 9800, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'jazz', 2016, 7.4000000953674316, 8.5, 15059, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'jazz', 2016, 5.6500000953674316, 7.9000000953674316, 28569, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'amaze', 2015, 5.75, 7.5, 44000, N'Petrol', N'Dealer', N'Automatic', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2015, 8.3999996185302734, 13.600000381469727, 34000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2016, 10.109999656677246, 13.600000381469727, 10980, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'amaze', 2014, 4.5, 6.4000000953674316, 19000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'brio', 2015, 5.4000000953674316, 6.0999999046325684, 31427, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'jazz', 2016, 6.4000000953674316, 8.3999996185302734, 12000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2010, 3.25, 9.8999996185302734, 38000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'amaze', 2014, 3.75, 6.8000001907348633, 33019, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2015, 8.5500001907348633, 13.090000152587891, 60076, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2016, 9.5, 11.600000381469727, 33988, N'Diesel', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'brio', 2015, 4, 5.9000000953674316, 60000, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2009, 3.3499999046325684, 11, 87934, N'Petrol', N'Dealer', N'Manual', 0)
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'city', 2017, 11.5, 12.5, 9000, N'Diesel', N'Dealer', N'Manual', 0)
GO
INSERT [dbo].[Autos] ([Car_Name], [Year], [Selling_Price], [Present_Price], [Kms_Driven], [Fuel_Type], [Seller_Type], [Transmission], [Owner]) VALUES (N'brio', 2016, 5.3000001907348633, 5.9000000953674316, 5464, N'Petrol', N'Dealer', N'Manual', 0)
GO
USE [master]
GO
ALTER DATABASE [CarData] SET  READ_WRITE 
GO
