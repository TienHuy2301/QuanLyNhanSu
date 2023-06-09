USE [master]
GO
/****** Object:  Database [HR]    Script Date: 3/9/2023 1:21:40 PM ******/
CREATE DATABASE [HR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HR_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HR.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HR_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\HR.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HR] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HR] SET ARITHABORT OFF 
GO
ALTER DATABASE [HR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HR] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HR] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [HR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HR] SET RECOVERY FULL 
GO
ALTER DATABASE [HR] SET  MULTI_USER 
GO
ALTER DATABASE [HR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HR] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HR] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'HR', N'ON'
GO
ALTER DATABASE [HR] SET QUERY_STORE = OFF
GO
USE [HR]
GO
/****** Object:  Schema [payroll]    Script Date: 3/9/2023 1:21:40 PM ******/
CREATE SCHEMA [payroll]
GO
/****** Object:  Table [dbo].[Benefit_Plans]    Script Date: 3/9/2023 1:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Benefit_Plans](
	[Benefit_Plan_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Plan_Name] [nvarchar](50) NULL,
	[Deductable] [numeric](18, 0) NULL,
	[Percentage_CoPay] [int] NULL,
 CONSTRAINT [PK_dbo.Benefit_Plans] PRIMARY KEY CLUSTERED 
(
	[Benefit_Plan_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employment]    Script Date: 3/9/2023 1:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employment](
	[Employee_ID] [numeric](18, 0) NOT NULL,
	[Employment_Status] [nvarchar](50) NULL,
	[Hire_Date] [datetime] NULL,
	[Workers_Comp_Code] [nvarchar](50) NULL,
	[Termination_Date] [datetime] NULL,
	[Rehire_Date] [datetime] NULL,
	[Last_Review_Date] [datetime] NULL,
 CONSTRAINT [PK_dbo.Employment] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job_History]    Script Date: 3/9/2023 1:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job_History](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Employee_ID] [numeric](18, 0) NOT NULL,
	[Department] [nvarchar](50) NULL,
	[Division] [nvarchar](50) NULL,
	[Start_Date] [datetime] NULL,
	[End_Date] [datetime] NULL,
	[Job_Title] [nvarchar](50) NULL,
	[Supervisor] [nvarchar](50) NULL,
	[Job_Category] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[Departmen_Code] [numeric](18, 0) NULL,
	[Salary_Type] [numeric](18, 0) NULL,
	[Pay_Period] [nvarchar](50) NULL,
	[Hours_per_Week] [numeric](18, 0) NULL,
	[Hazardous_Training] [bit] NULL,
 CONSTRAINT [PK_dbo.Job_History] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 3/9/2023 1:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personal](
	[Employee_ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[First_Name] [nvarchar](50) NULL,
	[Last_Name] [nvarchar](50) NULL,
	[Middle_Initial] [nvarchar](50) NULL,
	[Address1] [nvarchar](50) NULL,
	[Address2] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Zip] [numeric](18, 0) NULL,
	[Email] [nvarchar](50) NULL,
	[Phone_Number] [nvarchar](50) NULL,
	[Social_Security_Number] [nvarchar](50) NULL,
	[Drivers_License] [nvarchar](50) NULL,
	[Marital_Status] [nvarchar](50) NULL,
	[Gender] [bit] NULL,
	[Shareholder_Status] [bit] NOT NULL,
	[Benefit_Plans] [numeric](18, 0) NULL,
	[Ethnicity] [nvarchar](50) NULL,
	[birthday] [date] NULL,
 CONSTRAINT [PK_dbo.Personal] PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [payroll].[employee]    Script Date: 3/9/2023 1:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [payroll].[employee](
	[idEmployee] [int] NOT NULL,
	[Employee Number] [bigint] NOT NULL,
	[Last Name] [nvarchar](45) NOT NULL,
	[First Name] [nvarchar](45) NOT NULL,
	[SSN] [decimal](10, 0) NOT NULL,
	[Pay Rate] [nvarchar](40) NULL,
	[Pay Rates_idPay Rates] [int] NOT NULL,
	[Vacation Days] [int] NULL,
	[Paid To Date] [decimal](2, 0) NULL,
	[Paid Last Year] [decimal](2, 0) NULL,
 CONSTRAINT [PK_employee_Employee Number] PRIMARY KEY CLUSTERED 
(
	[Employee Number] ASC,
	[Pay Rates_idPay Rates] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [payroll].[pay rates]    Script Date: 3/9/2023 1:21:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [payroll].[pay rates](
	[idPay Rates] [int] NOT NULL,
	[Pay Rate Name] [nvarchar](40) NOT NULL,
	[Value] [decimal](10, 0) NOT NULL,
	[Tax Percentage] [decimal](10, 0) NOT NULL,
	[Pay Type] [int] NOT NULL,
	[Pay Amount] [decimal](10, 0) NOT NULL,
	[PT - Level C] [decimal](10, 0) NOT NULL,
 CONSTRAINT [PK_pay rates_idPay Rates] PRIMARY KEY CLUSTERED 
(
	[idPay Rates] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Benefit_Plans] ON 

INSERT [dbo].[Benefit_Plans] ([Benefit_Plan_ID], [Plan_Name], [Deductable], [Percentage_CoPay]) VALUES (CAST(1 AS Numeric(18, 0)), N'sd', CAST(23 AS Numeric(18, 0)), 34)
INSERT [dbo].[Benefit_Plans] ([Benefit_Plan_ID], [Plan_Name], [Deductable], [Percentage_CoPay]) VALUES (CAST(2 AS Numeric(18, 0)), N'asdad', CAST(234 AS Numeric(18, 0)), 43)
INSERT [dbo].[Benefit_Plans] ([Benefit_Plan_ID], [Plan_Name], [Deductable], [Percentage_CoPay]) VALUES (CAST(3 AS Numeric(18, 0)), N'asd', CAST(23 AS Numeric(18, 0)), 23)
SET IDENTITY_INSERT [dbo].[Benefit_Plans] OFF
GO
INSERT [dbo].[Employment] ([Employee_ID], [Employment_Status], [Hire_Date], [Workers_Comp_Code], [Termination_Date], [Rehire_Date], [Last_Review_Date]) VALUES (CAST(21 AS Numeric(18, 0)), N'chinh thuc', CAST(N'2018-11-03T00:00:00.000' AS DateTime), NULL, CAST(N'2018-11-08T00:00:00.000' AS DateTime), CAST(N'2018-11-24T00:00:00.000' AS DateTime), CAST(N'2018-11-24T00:00:00.000' AS DateTime))
INSERT [dbo].[Employment] ([Employee_ID], [Employment_Status], [Hire_Date], [Workers_Comp_Code], [Termination_Date], [Rehire_Date], [Last_Review_Date]) VALUES (CAST(22 AS Numeric(18, 0)), N'Chính Th?c', CAST(N'2018-12-23T00:00:00.000' AS DateTime), NULL, CAST(N'2018-12-31T00:00:00.000' AS DateTime), CAST(N'2019-01-20T00:00:00.000' AS DateTime), CAST(N'2019-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Employment] ([Employee_ID], [Employment_Status], [Hire_Date], [Workers_Comp_Code], [Termination_Date], [Rehire_Date], [Last_Review_Date]) VALUES (CAST(33 AS Numeric(18, 0)), N'Chính Thuc', CAST(N'2018-11-03T00:00:00.000' AS DateTime), NULL, CAST(N'2018-11-15T00:00:00.000' AS DateTime), CAST(N'2018-11-25T00:00:00.000' AS DateTime), CAST(N'2018-11-23T00:00:00.000' AS DateTime))
INSERT [dbo].[Employment] ([Employee_ID], [Employment_Status], [Hire_Date], [Workers_Comp_Code], [Termination_Date], [Rehire_Date], [Last_Review_Date]) VALUES (CAST(36 AS Numeric(18, 0)), N'Chính Thuc', CAST(N'2018-11-30T00:00:00.000' AS DateTime), NULL, CAST(N'2018-11-24T00:00:00.000' AS DateTime), CAST(N'2018-11-16T00:00:00.000' AS DateTime), CAST(N'2018-11-18T00:00:00.000' AS DateTime))
INSERT [dbo].[Employment] ([Employee_ID], [Employment_Status], [Hire_Date], [Workers_Comp_Code], [Termination_Date], [Rehire_Date], [Last_Review_Date]) VALUES (CAST(48 AS Numeric(18, 0)), N'Chính Th?c', CAST(N'2005-02-12T00:00:00.000' AS DateTime), NULL, CAST(N'2018-02-12T00:00:00.000' AS DateTime), CAST(N'2017-02-12T00:00:00.000' AS DateTime), CAST(N'2018-02-12T00:00:00.000' AS DateTime))
INSERT [dbo].[Employment] ([Employee_ID], [Employment_Status], [Hire_Date], [Workers_Comp_Code], [Termination_Date], [Rehire_Date], [Last_Review_Date]) VALUES (CAST(51 AS Numeric(18, 0)), N'Cộng Tác Viên', CAST(N'2018-12-21T00:00:00.000' AS DateTime), NULL, CAST(N'2018-12-22T00:00:00.000' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Job_History] ON 

INSERT [dbo].[Job_History] ([ID], [Employee_ID], [Department], [Division], [Start_Date], [End_Date], [Job_Title], [Supervisor], [Job_Category], [Location], [Departmen_Code], [Salary_Type], [Pay_Period], [Hours_per_Week], [Hazardous_Training]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'as', N'a', CAST(N'2018-11-16T00:00:00.000' AS DateTime), CAST(N'2018-11-14T00:00:00.000' AS DateTime), N's', N's', N'a', N's', CAST(1 AS Numeric(18, 0)), CAST(4 AS Numeric(18, 0)), N'2', CAST(5 AS Numeric(18, 0)), 1)
INSERT [dbo].[Job_History] ([ID], [Employee_ID], [Department], [Division], [Start_Date], [End_Date], [Job_Title], [Supervisor], [Job_Category], [Location], [Departmen_Code], [Salary_Type], [Pay_Period], [Hours_per_Week], [Hazardous_Training]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(33 AS Numeric(18, 0)), N'as', N'a', CAST(N'2018-11-11T00:00:00.000' AS DateTime), CAST(N'2018-11-10T00:00:00.000' AS DateTime), N's', N's', N'a', N's', CAST(1 AS Numeric(18, 0)), CAST(2 AS Numeric(18, 0)), N'2', CAST(4 AS Numeric(18, 0)), 1)
INSERT [dbo].[Job_History] ([ID], [Employee_ID], [Department], [Division], [Start_Date], [End_Date], [Job_Title], [Supervisor], [Job_Category], [Location], [Departmen_Code], [Salary_Type], [Pay_Period], [Hours_per_Week], [Hazardous_Training]) VALUES (CAST(5 AS Numeric(18, 0)), CAST(36 AS Numeric(18, 0)), N'Java Dev', N'cái chi ', CAST(N'2018-11-17T00:00:00.000' AS DateTime), CAST(N'2018-11-23T00:00:00.000' AS DateTime), N's', N's', N'a', N's', CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'2', CAST(8 AS Numeric(18, 0)), 1)
INSERT [dbo].[Job_History] ([ID], [Employee_ID], [Department], [Division], [Start_Date], [End_Date], [Job_Title], [Supervisor], [Job_Category], [Location], [Departmen_Code], [Salary_Type], [Pay_Period], [Hours_per_Week], [Hazardous_Training]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(22 AS Numeric(18, 0)), N'Java Dev', N'cái chi ', CAST(N'2018-12-21T00:00:00.000' AS DateTime), CAST(N'2013-12-12T00:00:00.000' AS DateTime), N's', N's', N'a', N's', CAST(1 AS Numeric(18, 0)), CAST(1 AS Numeric(18, 0)), N'2', CAST(4 AS Numeric(18, 0)), 1)
INSERT [dbo].[Job_History] ([ID], [Employee_ID], [Department], [Division], [Start_Date], [End_Date], [Job_Title], [Supervisor], [Job_Category], [Location], [Departmen_Code], [Salary_Type], [Pay_Period], [Hours_per_Week], [Hazardous_Training]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(48 AS Numeric(18, 0)), N'Java Dev', N'cái chi ', CAST(N'2017-02-12T00:00:00.000' AS DateTime), CAST(N'1996-12-05T00:00:00.000' AS DateTime), N's', N's', N'a', N's', CAST(1 AS Numeric(18, 0)), CAST(3 AS Numeric(18, 0)), N'2', CAST(2 AS Numeric(18, 0)), 1)
SET IDENTITY_INSERT [dbo].[Job_History] OFF
GO
SET IDENTITY_INSERT [dbo].[Personal] ON 

INSERT [dbo].[Personal] ([Employee_ID], [First_Name], [Last_Name], [Middle_Initial], [Address1], [Address2], [City], [State], [Zip], [Email], [Phone_Number], [Social_Security_Number], [Drivers_License], [Marital_Status], [Gender], [Shareholder_Status], [Benefit_Plans], [Ethnicity], [birthday]) VALUES (CAST(1 AS Numeric(18, 0)), N'Nguyễn', N'Văn Tèo', N'', N'126 Điện Biên Phủ', N'', N'Đà Nẵng', N'Thanh Khê', CAST(550000 AS Numeric(18, 0)), N'u23vietnam@yahoo.com', N'01216309942', N'12', N'Có', N'Đã Kết Hôn', 1, 0, CAST(1 AS Numeric(18, 0)), N'Kinh', CAST(N'2018-01-01' AS Date))
INSERT [dbo].[Personal] ([Employee_ID], [First_Name], [Last_Name], [Middle_Initial], [Address1], [Address2], [City], [State], [Zip], [Email], [Phone_Number], [Social_Security_Number], [Drivers_License], [Marital_Status], [Gender], [Shareholder_Status], [Benefit_Plans], [Ethnicity], [birthday]) VALUES (CAST(21 AS Numeric(18, 0)), N'Nguyễn', N'Chơi', NULL, N'158 Hà huy tập', NULL, N'thanh khe', N'thanh khe', CAST(550000 AS Numeric(18, 0)), N'asd@yahoo.com', N'02121212121', N'21', N'yes', N'ok', 1, 0, CAST(1 AS Numeric(18, 0)), N'kiinh lon', CAST(N'2017-01-02' AS Date))
INSERT [dbo].[Personal] ([Employee_ID], [First_Name], [Last_Name], [Middle_Initial], [Address1], [Address2], [City], [State], [Zip], [Email], [Phone_Number], [Social_Security_Number], [Drivers_License], [Marital_Status], [Gender], [Shareholder_Status], [Benefit_Plans], [Ethnicity], [birthday]) VALUES (CAST(22 AS Numeric(18, 0)), N'Nguyễn', N'ha', NULL, N'126 dien bien phu', NULL, N'da nang 123', N'thanh khe', CAST(550000 AS Numeric(18, 0)), N'kiethao112@yahoo.com.vn', N'93474627', N'93474627', N'ko co', N'single ', 1, 0, CAST(1 AS Numeric(18, 0)), N'da nang', CAST(N'2018-01-01' AS Date))
INSERT [dbo].[Personal] ([Employee_ID], [First_Name], [Last_Name], [Middle_Initial], [Address1], [Address2], [City], [State], [Zip], [Email], [Phone_Number], [Social_Security_Number], [Drivers_License], [Marital_Status], [Gender], [Shareholder_Status], [Benefit_Plans], [Ethnicity], [birthday]) VALUES (CAST(33 AS Numeric(18, 0)), N'Nguyễn', N'ha', NULL, N'126 dien bien phu', NULL, N'da nang', N'thanh khe', CAST(550000 AS Numeric(18, 0)), N'asd@yahoo.com', N'93474627', N'1234', N'ko co', N'single', 1, 1, CAST(1 AS Numeric(18, 0)), N'da nang', CAST(N'2001-12-22' AS Date))
INSERT [dbo].[Personal] ([Employee_ID], [First_Name], [Last_Name], [Middle_Initial], [Address1], [Address2], [City], [State], [Zip], [Email], [Phone_Number], [Social_Security_Number], [Drivers_License], [Marital_Status], [Gender], [Shareholder_Status], [Benefit_Plans], [Ethnicity], [birthday]) VALUES (CAST(36 AS Numeric(18, 0)), N'Văn Lợi', N'Nguyễn ', NULL, N'126 dien bien phu', NULL, N'da nang', N'thanh khe', CAST(550000 AS Numeric(18, 0)), N'ngoaikiabaola@yahoo.com', N'93474627', N'321654987', N'Đéo Có', N'Độc Lập', 1, 0, CAST(1 AS Numeric(18, 0)), N'Kinh', CAST(N'1996-12-23' AS Date))
INSERT [dbo].[Personal] ([Employee_ID], [First_Name], [Last_Name], [Middle_Initial], [Address1], [Address2], [City], [State], [Zip], [Email], [Phone_Number], [Social_Security_Number], [Drivers_License], [Marital_Status], [Gender], [Shareholder_Status], [Benefit_Plans], [Ethnicity], [birthday]) VALUES (CAST(41 AS Numeric(18, 0)), N'Anh Nam', N'Nguyễn ', NULL, N'126 dien bien phu', NULL, N'da nang', N'thanh khe', CAST(550000 AS Numeric(18, 0)), N'sd@yahoo.com', N'93474627', N'1234', N'Không Có', N'single', 1, 0, CAST(1 AS Numeric(18, 0)), N'Kinh', CAST(N'1989-12-22' AS Date))
INSERT [dbo].[Personal] ([Employee_ID], [First_Name], [Last_Name], [Middle_Initial], [Address1], [Address2], [City], [State], [Zip], [Email], [Phone_Number], [Social_Security_Number], [Drivers_License], [Marital_Status], [Gender], [Shareholder_Status], [Benefit_Plans], [Ethnicity], [birthday]) VALUES (CAST(44 AS Numeric(18, 0)), N'asd', N'Hà', NULL, N'126 dien bien phu', NULL, N'da nang', N'thanh khe', CAST(550000 AS Numeric(18, 0)), N'asd@yahoo.com', N'93474627', N'1234', N' mj', N'Đã Kết Hôn', 1, 1, CAST(1 AS Numeric(18, 0)), N'da nang', CAST(N'2014-02-12' AS Date))
INSERT [dbo].[Personal] ([Employee_ID], [First_Name], [Last_Name], [Middle_Initial], [Address1], [Address2], [City], [State], [Zip], [Email], [Phone_Number], [Social_Security_Number], [Drivers_License], [Marital_Status], [Gender], [Shareholder_Status], [Benefit_Plans], [Ethnicity], [birthday]) VALUES (CAST(46 AS Numeric(18, 0)), N'Nguyễn', N'Hà', NULL, N'126 dien bien phu', NULL, N'da nang', N'thanh khe', CAST(550000 AS Numeric(18, 0)), N'kiethao112@yahoo.com.vn', N'93474627', N'1234', N'Có', N'Độc Lập', 1, 0, CAST(1 AS Numeric(18, 0)), N'da nang', CAST(N'2013-12-12' AS Date))
INSERT [dbo].[Personal] ([Employee_ID], [First_Name], [Last_Name], [Middle_Initial], [Address1], [Address2], [City], [State], [Zip], [Email], [Phone_Number], [Social_Security_Number], [Drivers_License], [Marital_Status], [Gender], [Shareholder_Status], [Benefit_Plans], [Ethnicity], [birthday]) VALUES (CAST(48 AS Numeric(18, 0)), N'haha', N'huhu', NULL, N'126 dien bien phu', NULL, N'da nang', N'thanh khe', CAST(550000 AS Numeric(18, 0)), N'asd@yahoo.com', N'93474627', N'12', N'ko co', N'Đã Kết Hôn', 1, 1, CAST(1 AS Numeric(18, 0)), N'da nang', CAST(N'1996-12-05' AS Date))
INSERT [dbo].[Personal] ([Employee_ID], [First_Name], [Last_Name], [Middle_Initial], [Address1], [Address2], [City], [State], [Zip], [Email], [Phone_Number], [Social_Security_Number], [Drivers_License], [Marital_Status], [Gender], [Shareholder_Status], [Benefit_Plans], [Ethnicity], [birthday]) VALUES (CAST(50 AS Numeric(18, 0)), N'Nguyễn', N'Nguyễn ', NULL, N'126 dien bien phu', NULL, N'da nang', N'thanh khe', CAST(550000 AS Numeric(18, 0)), N'asd@yahoo.com', N'93474627', N'12', N'Không Có', N'Độc Lập', 1, 1, CAST(1 AS Numeric(18, 0)), N'da nang', CAST(N'2018-12-22' AS Date))
INSERT [dbo].[Personal] ([Employee_ID], [First_Name], [Last_Name], [Middle_Initial], [Address1], [Address2], [City], [State], [Zip], [Email], [Phone_Number], [Social_Security_Number], [Drivers_License], [Marital_Status], [Gender], [Shareholder_Status], [Benefit_Plans], [Ethnicity], [birthday]) VALUES (CAST(51 AS Numeric(18, 0)), N'Nguyễn', N'Nguyễn ', NULL, N'126 dien bien phu', NULL, N'da nang', N'thanh khe', CAST(550000 AS Numeric(18, 0)), N'asd@yahoo.com', N'93474627', N'12', N'Không Có', N'Độc Lập', 1, 1, CAST(1 AS Numeric(18, 0)), N'da nang', CAST(N'2018-12-22' AS Date))
SET IDENTITY_INSERT [dbo].[Personal] OFF
GO
INSERT [payroll].[employee] ([idEmployee], [Employee Number], [Last Name], [First Name], [SSN], [Pay Rate], [Pay Rates_idPay Rates], [Vacation Days], [Paid To Date], [Paid Last Year]) VALUES (1, 12, N'ha', N'na', CAST(21 AS Decimal(10, 0)), N'21', 1, 21, CAST(2 AS Decimal(2, 0)), CAST(2 AS Decimal(2, 0)))
GO
/****** Object:  Index [IX_Employee_ID]    Script Date: 3/9/2023 1:21:40 PM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_ID] ON [dbo].[Employment]
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_ID]    Script Date: 3/9/2023 1:21:40 PM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_ID] ON [dbo].[Job_History]
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Benefit_Plans]    Script Date: 3/9/2023 1:21:40 PM ******/
CREATE NONCLUSTERED INDEX [IX_Benefit_Plans] ON [dbo].[Personal]
(
	[Benefit_Plans] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [employee$Employee Number_UNIQUE]    Script Date: 3/9/2023 1:21:40 PM ******/
ALTER TABLE [payroll].[employee] ADD  CONSTRAINT [employee$Employee Number_UNIQUE] UNIQUE NONCLUSTERED 
(
	[Employee Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [fk_Employee_Pay Rates_idx]    Script Date: 3/9/2023 1:21:40 PM ******/
CREATE NONCLUSTERED INDEX [fk_Employee_Pay Rates_idx] ON [payroll].[employee]
(
	[Pay Rates_idPay Rates] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employment] ADD  CONSTRAINT [DF_Employment_Employment_Status]  DEFAULT (N'Cộng Tác Viên') FOR [Employment_Status]
GO
ALTER TABLE [payroll].[employee] ADD  DEFAULT (NULL) FOR [Pay Rate]
GO
ALTER TABLE [payroll].[employee] ADD  DEFAULT (NULL) FOR [Vacation Days]
GO
ALTER TABLE [payroll].[employee] ADD  DEFAULT (NULL) FOR [Paid To Date]
GO
ALTER TABLE [payroll].[employee] ADD  DEFAULT (NULL) FOR [Paid Last Year]
GO
ALTER TABLE [dbo].[Employment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employment_dbo.Personal_Employee_ID] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Personal] ([Employee_ID])
GO
ALTER TABLE [dbo].[Employment] CHECK CONSTRAINT [FK_dbo.Employment_dbo.Personal_Employee_ID]
GO
ALTER TABLE [dbo].[Job_History]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_History_dbo.Personal_Employee_ID] FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Personal] ([Employee_ID])
GO
ALTER TABLE [dbo].[Job_History] CHECK CONSTRAINT [FK_dbo.Job_History_dbo.Personal_Employee_ID]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Personal_dbo.Benefit_Plans_Benefit_Plans] FOREIGN KEY([Benefit_Plans])
REFERENCES [dbo].[Benefit_Plans] ([Benefit_Plan_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_dbo.Personal_dbo.Benefit_Plans_Benefit_Plans]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'payroll.employee' , @level0type=N'SCHEMA',@level0name=N'payroll', @level1type=N'TABLE',@level1name=N'employee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'payroll.`pay rates`' , @level0type=N'SCHEMA',@level0name=N'payroll', @level1type=N'TABLE',@level1name=N'pay rates'
GO
USE [master]
GO
ALTER DATABASE [HR] SET  READ_WRITE 
GO
