USE [master]
GO
/****** Object:  Database [ERP_DEV]    Script Date: 26-Nov-19 7:34:11 PM ******/
CREATE DATABASE [ERP_DEV] ON  PRIMARY 
( NAME = N'ERP_DEV', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\ERP_DEV.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ERP_DEV_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\ERP_DEV_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ERP_DEV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ERP_DEV] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ERP_DEV] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ERP_DEV] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ERP_DEV] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ERP_DEV] SET ARITHABORT OFF 
GO
ALTER DATABASE [ERP_DEV] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ERP_DEV] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ERP_DEV] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ERP_DEV] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ERP_DEV] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ERP_DEV] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ERP_DEV] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ERP_DEV] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ERP_DEV] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ERP_DEV] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ERP_DEV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ERP_DEV] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ERP_DEV] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ERP_DEV] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ERP_DEV] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ERP_DEV] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ERP_DEV] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ERP_DEV] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ERP_DEV] SET  MULTI_USER 
GO
ALTER DATABASE [ERP_DEV] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ERP_DEV] SET DB_CHAINING OFF 
GO
USE [ERP_DEV]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 26-Nov-19 7:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employee](
	[SlNo] [float] NULL,
	[EmployeeCode] [nvarchar](255) NULL,
	[FirstName] [nvarchar](255) NULL,
	[Designation] [nvarchar](255) NULL,
	[Department] [nvarchar](255) NULL,
	[SubDepartment] [nvarchar](255) NULL,
	[Branch] [nvarchar](255) NULL,
	[SubBranch] [nvarchar](255) NULL,
	[DateofJoining] [datetime] NULL,
	[EmailAddress] [nvarchar](255) NULL,
	[ReportingManager] [nvarchar](255) NULL,
	[FunctionalManager] [nvarchar](255) NULL,
	[ReportingTo] [nvarchar](10) NULL,
	[CreatedBy] [varchar](20) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifyBy] [varchar](20) NULL,
	[ModifyOn] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[mRunningSerialNo]    Script Date: 26-Nov-19 7:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[mRunningSerialNo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SiteID] [varchar](10) NOT NULL,
	[TransType] [varchar](50) NOT NULL,
	[LineNo] [varchar](10) NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[MonthWise] [bit] NULL,
	[SerialNo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_mRunningSerialNo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ReviewTable]    Script Date: 26-Nov-19 7:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ReviewTable](
	[EmployeeCode] [varchar](20) NULL,
	[Remarks] [varchar](max) NULL,
	[Status] [int] NULL,
	[ActionBy] [varchar](50) NULL,
	[ActionOn] [datetime] NULL,
	[Region] [varchar](50) NULL,
	[FeedbackRemark] [varchar](max) NULL,
	[RequestNumber] [varchar](100) NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserTable]    Script Date: 26-Nov-19 7:34:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTable](
	[UserId] [varchar](20) NULL,
	[Password] [varchar](50) NULL,
	[UpdateDatedBy] [varchar](50) NULL,
	[UpdatedOn] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (1, N'B001', N'Hamir Singh Thakur', N'Chief Solution Architect', N'Software', N'Software Presales', N'North', N'Gurgaon', CAST(N'1998-01-19 00:00:00.000' AS DateTime), N'hamir@barcodeindia.com', N'B827-JAYANT GUPTA', N'Jayant Gupta', N'B827', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (2, N'B002', N'Jasbir Kaur', N'AGM (Supply Chain) ', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'1999-04-01 00:00:00.000' AS DateTime), N'jasbir@barcodeindia.com', N'B003-PRAVEEN KISHORE', N'Praveen Kishore', N'B003', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (3, N'B003', N'Praveen Kishore', N'Chief Operating Officer', N'Hardware', N'Hardware Product', N'North', N'Gurgaon', CAST(N'1999-04-01 00:00:00.000' AS DateTime), N'praveen@barcodeindia.com', N'B827-JAYANT GUPTA', N'Jayant Gupta', N'B827', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (4, N'B009', N'Rajeev Kumar Mishra', N'Manager - Automation', N'Hardware', N'Factory Automation', N'North', N'Gurgaon', CAST(N'2002-09-09 00:00:00.000' AS DateTime), N'rajeev@barcodeindia.com', N'B497-UMA SHANKER VERMA', N'Sanjay Chaturvedi', N'B497', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (5, N'B010', N'Bijay Kr. Samal', N'AGM - Support', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2002-09-09 00:00:00.000' AS DateTime), N'bijay@barcodeindia.com', N'B072-SANJAY CHATURVEDI', N'Sanjay Chaturvedi', N'B072', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (6, N'B015', N'Abhimanyu Rai', N'Deputy Manager- Technical Repairing', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2003-11-27 00:00:00.000' AS DateTime), N'abhimanyu@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (7, N'B016', N'Jai Prakash', N'Deputy Manager- Technical Support', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2003-11-28 00:00:00.000' AS DateTime), N'jai@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (8, N'B017', N'Vimal Nauriyal', N'Manager - Accounts', N'Finance & Accounts', N'Finance & Accounts', N'North', N'Gurgaon', CAST(N'2004-04-01 00:00:00.000' AS DateTime), N'accounts@barcodeindia.com', N'DIR1-AJAY BHUTANI', N'Ajay Bhutani', N'DIR1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (9, N'B030', N'Sonal', N'Deputy Manager', N'Sales', N'Sales', N'South', N'Chennai', CAST(N'2000-01-13 00:00:00.000' AS DateTime), N'sonal@barcodeindia.com', N'B035-VIJAY P.', N'Jayant Gupta', N'B035', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (10, N'B035', N'Vijay P.', N'Regional Sales Manager', N'Sales', N'Sales', N'South', N'Chennai', CAST(N'2004-07-01 00:00:00.000' AS DateTime), N'vijay@barcodeindia.com', N'B138-BIPLAB BANIK', N'Jayant Gupta', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (11, N'B036', N'Dinanath Pilgaokar', N'Senior VP', N'Business Development', N'Business Development', N'West', N'Mumbai', CAST(N'2000-11-16 00:00:00.000' AS DateTime), N'dinesh@barcodeindia.com', N'DIR1-AJAY BHUTANI', N'Ajay Bhutani', N'DIR1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (12, N'B044', N'Vani ', N'Branch Manager', N'Sales', N'Sales', N'South', N'Bangalore', CAST(N'2004-06-05 00:00:00.000' AS DateTime), N'vani@barcodeindia.com', N'B138-BIPLAB BANIK', N'Jayant Gupta', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (13, N'B057', N'Arpana Bhutani', N'MGR CHANNELS', N'CEO Office', N'CEO Office', N'North', N'Delhi', CAST(N'2003-10-01 00:00:00.000' AS DateTime), N'arpana@barcodeindia.com', N'DIR1-AJAY BHUTANI', N'Ajay Bhutani', N'DIR1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (14, N'B072', N'Sanjay Chaturvedi', N'VP', N'Hardware', N'Hardware', N'North', N'Gurgaon', CAST(N'2000-07-03 00:00:00.000' AS DateTime), N'sanjay@barcodeindia.com', N'B827-JAYANT GUPTA', N'Jayant Gupta', N'B827', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (15, N'B095', N'Hemant Kumbhare', N'Area Manager', N'Sales', N'Sales', N'West', N'Pune', CAST(N'2005-12-01 00:00:00.000' AS DateTime), N'hemant@barcodeindia.com', N'B255-SUBHASH CHANDRA YADAV', N'Jayant Gupta', N'B255', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (16, N'B117', N'Gopal K Jha', N'Deputy Manager - Technical Support (North)', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2006-08-07 00:00:00.000' AS DateTime), N'gopal@barcodeindia.com', N'B010-BIJAY KR. SAMAL', N'Sanjay Chaturvedi', N'B010', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (17, N'B128', N'Vishal Lodhia', N'Senior Manager - RFID', N'Hardware', N'RFID', N'West', N'Mumbai', CAST(N'2007-01-08 00:00:00.000' AS DateTime), N'vishal@barcodeindia.com', N'B185-SANDEEP CHADHA', N'Sanjay Chaturvedi', N'B185', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (18, N'B132', N'Arun Kumar', N'Deputy Manager - Presales', N'Hardware', N'Hardware Presales', N'North', N'Gurgaon', CAST(N'2007-02-01 00:00:00.000' AS DateTime), N'arun@barcodeindia.com', N'B010-BIJAY KR. SAMAL', N'Sanjay Chaturvedi', N'B010', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (19, N'B138', N'Biplab Banik', N'Vice President and Business Head – South India & Sri Lanka', N'Sales', N'Sales', N'South', N'Bangalore', CAST(N'2007-02-19 00:00:00.000' AS DateTime), N'biplab@barcodeindia.com', N'B035-Vijay P.', N'Jayant Gupta', N'B035', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (20, N'B147', N'Manish Khanna', N'AGM -Sales (North)', N'Business Development', N'Business Development', N'North', N'Gurgaon', CAST(N'2007-04-16 00:00:00.000' AS DateTime), N'kmanish@barcodeindia.com', N'B036-DINANATH PILGAOKAR', N'Dinanath Pilgaokar', N'B036', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (21, N'B166', N'V.Manjunath', N'Assistant Manager - Presales', N'Hardware', N'Hardware Presales', N'South', N'Bangalore', CAST(N'2007-08-16 00:00:00.000' AS DateTime), N'vmanjunath@barcodeindia.com', N'B010-BIJAY KR. SAMAL', N'Sanjay Chaturvedi', N'B010', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (22, N'B174', N'Ramesh Jain', N'AGM – Presales & Software Delivery ', N'Software', N'Software Presales', N'West', N'Mumbai', CAST(N'2007-12-07 00:00:00.000' AS DateTime), N'ramesh@barcodeindia.com', N'B001-HAMIR SINGH THAKUR', N'Hamir Singh Thakur', N'B001', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (23, N'B185', N'Sandeep Chadha', N'AGM -  Presales & Projects', N'Hardware', N'RFID', N'North', N'Gurgaon', CAST(N'2008-02-11 00:00:00.000' AS DateTime), N'sandeep@barcodeindia.com', N'B072-SANJAY CHATURVEDI', N'Sanjay Chaturvedi', N'B072', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (24, N'B209', N'Gopal Krishna', N'Assistant Manager - Support', N'Hardware', N'Hardware Support', N'South', N'Hyderabad', CAST(N'2008-08-01 00:00:00.000' AS DateTime), N'kulkarni@barcodeindia.com', N'B530-SANDEEP CHILLALE', N'Sanjay Chaturvedi', N'B530', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (25, N'B212', N'Dipak Dhanaji Thamke', N'Assistant Manager Operations & Accounts', N'Supply Chain', N'Supply Chain', N'West', N'Mumbai', CAST(N'2008-08-21 00:00:00.000' AS DateTime), N'dipak@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (26, N'B216', N'Rahul Gupta', N'AGM (Vertical Head-Automotive & Engg.)', N'Sales', N'Sales', N'North', N'Gurgaon', CAST(N'2008-10-13 00:00:00.000' AS DateTime), N'rahul@barcodeindia.com', N'B827-JAYANT GUPTA', N'Jayant Gupta', N'B827', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (27, N'B217', N'Abhishek P. Palwankar', N'Assistant Manager Projects and Presales', N'Software', N'Software Presales', N'West', N'Mumbai', CAST(N'2008-11-04 00:00:00.000' AS DateTime), N'abhishek@barcodeindia.com', N'B174-RAMESH JAIN', N'Hamir Singh Thakur', N'B174', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (28, N'B221', N'Dinesh Nemon', N'Assistant Manager - Technical Support', N'Hardware', N'Hardware Support', N'West', N'Mumbai', CAST(N'2009-01-27 00:00:00.000' AS DateTime), N'dnemon@barcodeindia.com', N'B861-Navneet Kaur', N'Sanjay Chaturvedi', N'B861', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (29, N'B224', N'Gagan Mittal', N'Technical Manager - Software', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2009-04-01 00:00:00.000' AS DateTime), N'gagan@barcodeindia.com', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (30, N'B233', N'Ashutosh Kroria', N'AGM - Presales & Projects', N'Software', N'Software Presales', N'North', N'Gurgaon', CAST(N'2009-07-06 00:00:00.000' AS DateTime), N'ashutosh@barcodeindia.com', N'B001-HAMIR SINGH THAKUR', N'Hamir Singh Thakur', N'B001', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (31, N'B238', N'P.Murali Krishna', N'Regional Manager', N'Sales', N'Sales', N'South', N'Hyderabad', CAST(N'2009-08-10 00:00:00.000' AS DateTime), N'murali@barcodeindia.com', N'B138-BIPLAB BANIK', N'Jayant Gupta', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (32, N'B249', N'R. Dinesh Kumar', N'Office Boy', N'HR & Admin', N'Admin', N'South', N'Chennai', CAST(N'2009-12-14 00:00:00.000' AS DateTime), N'0', N'B030-SONAL', N'Vijay Prabhakar', N'B030', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (33, N'B255', N'Subhash Chandra Yadav', N'Senior Manager - Sales', N'Sales', N'Sales', N'West', N'Pune', CAST(N'2010-04-12 00:00:00.000' AS DateTime), N'subhash@barcodeindia.com', N'B867-ARTI VERMA', N'Jayant Gupta', N'B867', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (34, N'B256', N'Prashant Sridhar Kinage', N'Deputy Manager - Software Delivery', N'Software', N'Software Support', N'West', N'Mumbai', CAST(N'2010-04-12 00:00:00.000' AS DateTime), N'prashant@barcodeindia.com', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (35, N'B257', N'Mayur Ramesh Ghole', N'Assistant Manager - Automation', N'Hardware', N'Factory Automation', N'West', N'Mumbai', CAST(N'2010-04-19 00:00:00.000' AS DateTime), N'mayur@barcodeindia.com', N'B497-UMA SHANKER VERMA', N'Sanjay Chaturvedi', N'B497', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (36, N'B263', N'Brajesh Kumar Srivastava', N'Technical Manager - Software', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2010-06-22 00:00:00.000' AS DateTime), N'srivastava.brajesh@barcodeindia.com', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (37, N'B267', N'Ashish Khanna', N'Deputy Manager-Supply Chain ', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2010-07-08 00:00:00.000' AS DateTime), N'khanna.ashish@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (38, N'B269', N'Lokesh Sharma', N'Manager - Support', N'Software', N'Software Support', N'North', N'Gurgaon', CAST(N'2010-07-19 00:00:00.000' AS DateTime), N'lokesh@barcodeindia.com', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (39, N'B279', N'Anuj Kumar', N'Business Devlopment Consultant', N'Business Development', N'Business Development', N'North', N'Gurgaon', CAST(N'2010-11-09 00:00:00.000' AS DateTime), N'anuj@barcodeindia.com', N'DIR1-AJAY BHUTANI', N'Ajay Bhutani', N'DIR1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (40, N'B282', N'Kuldeep Saini', N'AGM - Presales ', N'Software', N'Software Presales', N'North', N'Gurgaon', CAST(N'2010-12-13 00:00:00.000' AS DateTime), N'kuldeep@barcodeindia.com', N'B001-HAMIR SINGH THAKUR', N'Hamir Singh Thakur', N'B001', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (41, N'B283', N'Vivek Choudhary', N'Manager - Operations', N'HR & Admin', N'Admin', N'North', N'Gurgaon', CAST(N'2010-12-13 00:00:00.000' AS DateTime), N'vivek@barcodeindia.com', N'B792-SURABHI SANCHITA', N'Jayant Gupta', N'B792', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (42, N'B286', N'Ashwani Sharma', N'Assistant Manager - Supply Chain', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2010-12-30 00:00:00.000' AS DateTime), N'ashwani@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (43, N'B291', N'Chandra Prakash', N'Manager - Software Support ', N'Software', N'Software Support', N'North', N'Gurgaon', CAST(N'2011-01-17 00:00:00.000' AS DateTime), N'chandraprakash@barcodeindia.com ', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (44, N'B307', N'Ashish Kumar Pandey', N'Senior Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2011-04-01 00:00:00.000' AS DateTime), N'ashish.pandey@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (45, N'B312', N'Deepak Kalra', N'Assistant Manager - Accounts', N'Finance & Accounts', N'Finance & Accounts', N'North', N'Gurgaon', CAST(N'2011-05-16 00:00:00.000' AS DateTime), N'deepak.kalra@barcodeindia.com', N'B017-VIMAL NAURIYAL', N'Ajay Bhutani', N'B017', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (46, N'B315', N'Manish Kumar Mishra', N'Senior Executive Engineer', N'IT', N'IT', N'North', N'Gurgaon', CAST(N'2011-05-23 00:00:00.000' AS DateTime), N'manish.mishra@barcodeindia.com', N'B844-ASHUTOSH BHASKAR', N'Jayant Gupta', N'B844', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (47, N'B318', N'Chandrakant Shankar Shindkar', N'Deputy  Manager - Software Delivery', N'Software', N'Software Support', N'West', N'Mumbai', CAST(N'2011-05-16 00:00:00.000' AS DateTime), N'chandrakant@barcodeindia.com', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (48, N'B332', N'Vinod Kumar', N'Stores Assistant', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2011-08-01 00:00:00.000' AS DateTime), N'vinod.k@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (49, N'B338', N'Roopkishore Baghel', N'Senior Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2011-09-19 00:00:00.000' AS DateTime), N'roop@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (50, N'B358', N'Deepak Kumar', N'Senior Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2012-04-09 00:00:00.000' AS DateTime), N'deepak.kumar@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (51, N'B361', N'Harish Jamnal', N'Assistant Manager - Supply Chain', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2012-04-23 00:00:00.000' AS DateTime), N'harish@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (52, N'B363', N'Pranav Kishore Srijagannath', N'Key Account Manager', N'Sales', N'Sales', N'North', N'Gurgaon', CAST(N'2012-04-30 00:00:00.000' AS DateTime), N'pranav@barcodeindia.com', N'B216-RAHUL GUPTA', N'Jayant Gupta', N'B216', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (53, N'B376', N'Gaurav Kumar', N'Team Leader', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2012-08-16 00:00:00.000' AS DateTime), N'gaurav.kumar@barcodeindia.com', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (54, N'B391', N'Rajesh Kumar Singh', N'Assistant Manager - Accounts', N'Finance & Accounts', N'Finance & Accounts', N'North', N'Gurgaon', CAST(N'2012-11-26 00:00:00.000' AS DateTime), N'rajesh.singh@barcodeindia.com', N'B017-VIMAL NAURIYAL', N'Ajay Bhutani', N'B017', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (55, N'B397', N'Abhishek Kumar', N'Senior Executive Engineer', N'Hardware', N'Hardware Presales', N'West', N'Pune', CAST(N'2013-01-02 00:00:00.000' AS DateTime), N'abhishek.kumar@barcodeindia.com', N'B010-BIJAY KR. SAMAL', N'Sanjay Chaturvedi', N'B010', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (56, N'B401', N'Rakesh Kumar', N'Senior Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2013-02-15 00:00:00.000' AS DateTime), N'rakesh.kumar@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (57, N'B413', N'Vipul Dobhal', N'Senior Software Engineer', N'Software', N'Software Support', N'North', N'Gurgaon', CAST(N'2013-03-11 00:00:00.000' AS DateTime), N'vipul.dobhal@barcodeindia.com', N'B291-CHANDRA PRAKASH', N'Hamir Singh Thakur', N'B291', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (58, N'B415', N'Gunjesh Kumar Ray', N'Driver', N'HR & Admin', N'Admin', N'North', N'Gurgaon', CAST(N'2013-04-01 00:00:00.000' AS DateTime), N'0', N'C014-VIKAS WADHWA', N'Vikas Wadhwa', N'C014', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (59, N'B417', N'Adityaprakash  Omprakash Tiwari', N'Senior Executive Engineer', N'Hardware', N'RFID', N'West', N'Mumbai', CAST(N'2013-04-11 00:00:00.000' AS DateTime), N'aditya.tiwari@barcodeindia.com', N'B128-VISHAL LODHIA', N'Sanjay Chaturvedi', N'B128', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (60, N'B418', N'Sudist Kumar Tiwary', N'Senior Software Engineer', N'Software', N'Software Support', N'North', N'Gurgaon', CAST(N'2013-04-23 00:00:00.000' AS DateTime), N'sudist.tiwary@barcodeindia.com', N'B291-CHANDRA PRAKASH', N'Hamir Singh Thakur', N'B291', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (61, N'B422', N'Satyaprakash Dubey', N'Assistant Manager - Service Desk', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2013-05-13 00:00:00.000' AS DateTime), N'servicedesk.delhi@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (62, N'B433', N'Viral Kirit Nagda', N'Assistant Manager - Sales', N'Sales', N'Sales', N'West', N'Mumbai', CAST(N'2013-07-15 00:00:00.000' AS DateTime), N'viral.nagda@barcodeindia.com', N'B827-JAYANT GUPTA', N'Jayant Gupta', N'B827', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (63, N'B437', N'Nitil Kumar', N'Team Leader', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2013-07-22 00:00:00.000' AS DateTime), N'nitil.sharma@barcodeindia.com', N'B224-GAGAN MITTAL', N'Hamir Singh Thakur', N'B224', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (64, N'B439', N'Sneha Jassal', N'Assistant Manager-Project Delivery & QA', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2013-08-02 00:00:00.000' AS DateTime), N'sneha.jassal@barcodeindia.com', N'B282-KULDEEP SAINI', N'Hamir Singh Thakur', N'B282', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (65, N'B452', N'Jacklene Julie Anthony Thevar', N'Executive- Administration & Sales Coordination', N'HR & Admin', N'Admin', N'West', N'Mumbai', CAST(N'2013-11-25 00:00:00.000' AS DateTime), N'frontoffice.mumbai@barcodeindia.com', N'B283-VIVEK CHOUDHARY', N'Surabhi Sanchita', N'B283', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (66, N'B457', N'Vinod Kumar', N'Assistant Manager - Collections & Accounts', N'Finance & Accounts', N'Finance & Accounts', N'North', N'Gurgaon', CAST(N'2013-12-23 00:00:00.000' AS DateTime), N'vinod.kumar@barcodeindia.com', N'B719-PRAMOD KUMAR', N'Ajay Bhutani', N'B719', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (67, N'B458', N'Bauaji Pasvan', N'Driver', N'HR & Admin', N'Admin', N'North', N'Gurgaon', CAST(N'2014-01-01 00:00:00.000' AS DateTime), N'0', N'B003-PRAVEEN KISHORE', N'Praveen Kishore', N'B003', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (68, N'B460', N'Maanit Bhutani', N'Senior Executive - Sales', N'Sales', N'Sales', N'North', N'Gurgaon', CAST(N'2014-01-14 00:00:00.000' AS DateTime), N'maanit.bhutani@barcodeindia.com', N'B216-RAHUL GUPTA', N'Jayant Gupta', N'B216', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (69, N'B474', N'Pawan Kumar', N'Deputy Manager - Technical Support', N'Hardware', N'Hardware Support', N'North', N'Maruti - Gurgaon', CAST(N'2014-04-06 00:00:00.000' AS DateTime), N'pawan.kumar@barcodeindia.com', N'B010-BIJAY KR. SAMAL', N'Sanjay Chaturvedi', N'B010', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (70, N'B475', N'Sunil Kumar', N'Assistant Manager - Technical Support', N'Hardware', N'Hardware Support', N'North', N'Maruti - Manesar', CAST(N'2014-04-06 00:00:00.000' AS DateTime), N'sunil.kumar@barcodeindia.com', N'B474-PAWAN KUMAR', N'Sanjay Chaturvedi', N'B474', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (71, N'B480', N'G. Sambath Kumar', N'Accounts Executive', N'Finance & Accounts', N'Finance & Accounts', N'South', N'Chennai', CAST(N'2014-04-28 00:00:00.000' AS DateTime), N'accounts.chn@barcodeindia.com', N'B035-VIJAY P.', N'Vijay Prabhakar', N'B035', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (72, N'B483', N'Sunil Singh', N'Senior Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2014-05-17 00:00:00.000' AS DateTime), N'sunil.singh@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (73, N'B486', N'Basudev Sharma', N'Driver', N'HR & Admin', N'Admin', N'North', N'Delhi', CAST(N'2014-06-29 00:00:00.000' AS DateTime), N'0', N'DIR2-ASHISH BHUTANI', N'Ashish Bhutani', N'DIR2', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (74, N'B489', N'Mayur Bhagwan Morye', N'Software Engineer', N'Software', N'Software Development', N'West', N'Mumbai', CAST(N'2014-07-01 00:00:00.000' AS DateTime), N'mayur.morye@barcodeindia.com', N'B318-CHANDRAKANT SHANKAR SHINDKAR', N'Hamir Singh Thakur', N'B318', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (75, N'B491', N'Bandana  Kalita         ', N'Front Office Executive  ', N'HR & Admin', N'Admin', N'North', N'Gurgaon', CAST(N'2014-07-07 00:00:00.000' AS DateTime), N'frontoffice.ggn@barcodeindia.com', N'B283-VIVEK CHOUDHARY', N'Surabhi Sanchita', N'B283', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (76, N'B497', N'Uma Shanker Verma', N'Manager - Automation', N'Hardware', N'Factory Automation', N'North', N'Gurgaon', CAST(N'2014-08-20 00:00:00.000' AS DateTime), N'uma.shanker@barcodeindia.com', N'B010-BIJAY KR. SAMAL', N'Sanjay Chaturvedi', N'B010', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (77, N'B498', N'Manish Mehra', N'Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Maruti - Manesar', CAST(N'2014-08-25 00:00:00.000' AS DateTime), N'manish.mehra@barcodeindia.com', N'B474-PAWAN KUMAR', N'Sanjay Chaturvedi', N'B474', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (78, N'B501', N'Ankush ', N'Senior Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2014-08-01 00:00:00.000' AS DateTime), N'ankush@barcodeindia.com', N'B263-BRAJESH KUMAR SRIVASTAVA', N'Hamir Singh Thakur', N'B263', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (79, N'B504', N'Ravi Kumar', N'Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2014-09-05 00:00:00.000' AS DateTime), N'ravi.kumar@barcodeindia.com', N'B376-GAURAV KUMAR', N'Hamir Singh Thakur', N'B376', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (80, N'B513', N'Rohan Baweja', N'Key Accounts Manager', N'Sales', N'Sales', N'North', N'Delhi', CAST(N'2014-11-01 00:00:00.000' AS DateTime), N'0', N'DIR1-AJAY BHUTANI', N'Ajay Bhutani', N'DIR1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (81, N'B527', N'Jagdish Chandra Joshi', N'Senior Software Engineer', N'Software', N'Software Development', N'West', N'Mumbai', CAST(N'2015-01-15 00:00:00.000' AS DateTime), N'jagdish.joshi@barcodeindia.com', N'B256-PRASHANT SRIDHAR KINAGE', N'Hamir Singh Thakur', N'B256', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (82, N'B530', N'Sandeep Chillale', N'Technical Engineer', N'Hardware', N'Hardware Support', N'South', N'Bangalore', CAST(N'2015-02-02 00:00:00.000' AS DateTime), N'sandeep.chillale@barcodeindia.com', N'B010-BIJAY KR. SAMAL', N'Sanjay Chaturvedi', N'B010', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (83, N'B532', N'Rohan Dilip Sukre', N'Senior Software Engineer', N'Software', N'Software Development', N'West', N'Mumbai', CAST(N'2015-02-02 00:00:00.000' AS DateTime), N'rohan.sukre@barcodeindia.com', N'B318-CHANDRAKANT SHANKAR SHINDKAR', N'Hamir Singh Thakur', N'B318', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (84, N'B541', N'Amit Singha', N'Office Boy', N'HR & Admin', N'Admin', N'North', N'Gurgaon', CAST(N'2015-02-16 00:00:00.000' AS DateTime), N'0', N'B283-VIVEK CHOUDHARY', N'Surabhi Sanchita', N'B283', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (85, N'B546', N'Rajesh Paul', N'R & D Manager', N'CEO Office', N'RFID', N'North', N'Delhi(Omnia)', CAST(N'2015-03-02 00:00:00.000' AS DateTime), N'rajesh@omniatags.com', N'DIR2-ASHISH BHUTANI', N'Ajay Bhutani', N'DIR2', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (86, N'B547', N'Sanchit Jain', N'Senior Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2015-03-02 00:00:00.000' AS DateTime), N'sanchit.jain@barcodeindia.com', N'B224-GAGAN MITTAL', N'Hamir Singh Thakur', N'B224', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (87, N'B548', N'Debajyoti Ghosh', N'Executive Engineer', N'Hardware', N'Hardware Support', N'East', N'Kolkata', CAST(N'2015-03-02 00:00:00.000' AS DateTime), N'kolkata@barcodeindia.com', N'B556-PARTHA SARATHI PATTANAIK', N'Sanjay Chaturvedi', N'B556', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (88, N'B556', N'Partha Sarathi Pattanaik', N'Senior Manager-Sales', N'Sales', N'Sales', N'East', N'Kolkata', CAST(N'2015-04-15 00:00:00.000' AS DateTime), N'partha.pattanaik@barcodeindia.com', N'B216-RAHUL GUPTA', N'Jayant Gupta', N'B216', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (89, N'B558', N'Kanishka Tanwar', N'Lead Technical Writer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2015-04-20 00:00:00.000' AS DateTime), N'kanishka.tanwar@barcodeindia.com', N'B282-KULDEEP SAINI', N'Hamir Singh Thakur', N'B282', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (90, N'B560', N'Vikash Yadav', N'Senior Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Hero Honda - Nimrana', CAST(N'2015-05-14 00:00:00.000' AS DateTime), N'vikash.yadav@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (91, N'B563', N'Ram Kumar', N'Assistant Manager -Stores', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2015-06-02 00:00:00.000' AS DateTime), N'stores@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (92, N'B579', N'Nirdosh Yadav', N'Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Maruti - Gurgaon', CAST(N'2015-08-20 00:00:00.000' AS DateTime), N'nirdosh.yadav@barcodeindia.com', N'B474-PAWAN KUMAR', N'Sanjay Chaturvedi', N'B474', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (93, N'B580', N'Ratan Mishra', N'Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2015-08-20 00:00:00.000' AS DateTime), N'ratan.mishra@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (94, N'B585', N'Deepak Sharma', N'Import Executive', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2015-09-16 00:00:00.000' AS DateTime), N'deepak.sharma@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (95, N'B588', N'Nitin Kumar', N'Senior Store Executive', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2015-10-30 00:00:00.000' AS DateTime), N'nitin.kumar@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (96, N'B592', N'Geetha K', N'Software Engineer', N'Software', N'Software Development', N'South', N'Bangalore', CAST(N'2015-11-23 00:00:00.000' AS DateTime), N'geetha.k@barcodeindia.com', N'B138-BIPLAB BANIK', N'Hamir Singh Thakur', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (97, N'B597', N'Dinesh Kumar', N'Support Engineer', N'Software', N'Software Support', N'North', N'Gurgaon', CAST(N'2016-01-04 00:00:00.000' AS DateTime), N'dinesh.kumar@barcodeindia.com', N'B291-CHANDRA PRAKASH', N'Hamir Singh Thakur', N'B291', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (98, N'B604', N'B.S Karthick Babu', N'Manager - Sales', N'Sales', N'Sales', N'South', N'Bangalore', CAST(N'2016-01-18 00:00:00.000' AS DateTime), N'karthick.babu@barcodeindia.com', N'B139-SATHEESH CHANDRAN M', N'Jayant Gupta', N'B139', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (99, N'B613', N'Dharmendra Singh Rawat', N'Senior Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2016-03-01 00:00:00.000' AS DateTime), N'dharmendra.rawat@barcodeindia.com', N'B636-SHRI SHANKAR NAGAR', N'Hamir Singh Thakur', N'B636', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (100, N'B631', N'Ramu M', N'Senior Executive Engineer', N'Hardware', N'Hardware Presales', N'South', N'Chennai', CAST(N'2016-05-21 00:00:00.000' AS DateTime), N'ramu.m@barcodeindia.com', N'B035-VIJAY P.', N'Sanjay Chaturvedi', N'B035', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (101, N'B634', N'Richa Sharma', N'Deputy Manager - HR', N'HR & Admin', N'HR', N'North', N'Gurgaon', CAST(N'2016-06-06 00:00:00.000' AS DateTime), N'richa.sharma@barcodeindia.com', N'B792-SURABHI SANCHITA', N'Jayant Gupta', N'B792', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (102, N'B635', N'Anand Arun Dandgawal', N'Assistant Manager Presales', N'Hardware', N'Hardware Presales', N'West', N'Mumbai', CAST(N'2016-06-07 00:00:00.000' AS DateTime), N'anand.d@barcodeindia.com', N'B010-BIJAY KR. SAMAL', N'Sanjay Chaturvedi', N'B010', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (103, N'B636', N'Shri Shankar Nagar', N'Deputy Manager - Software Delivery', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2016-06-15 00:00:00.000' AS DateTime), N'shri.shankar@barcodeindia.com', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (104, N'B639', N'Deepak Sharma', N'SQL DBA', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2016-06-27 00:00:00.000' AS DateTime), N'sharma.deepak@barcodeindia.com', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (105, N'B641', N'Murugan M.R', N'Senior Executive Engineer', N'Hardware', N'Hardware Support', N'South', N'Chennai', CAST(N'2016-07-04 00:00:00.000' AS DateTime), N'muruganmr@barcodeindia.com', N'B530-SANDEEP CHILLALE', N'Sanjay Chaturvedi', N'B530', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (106, N'B643', N'Saravanan M', N'Manager - Presales', N'Software', N'Software Presales', N'South', N'Chennai', CAST(N'2016-07-06 00:00:00.000' AS DateTime), N'saravanan.m@barcodeindia.com', N'B282-KULDEEP SAINI', N'Hamir Singh Thakur', N'B282', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (107, N'B645', N'Yogesh Hiraman Bhangale', N'Executive Engineer', N'Hardware', N'Hardware Support', N'West', N'Pune', CAST(N'2016-07-11 00:00:00.000' AS DateTime), N'yogesh.b@barcodeindia.com ', N'B861-Navneet Kaur', N'Sanjay Chaturvedi', N'B861', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (108, N'B649', N'Sudhir Singh', N'Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2016-07-27 00:00:00.000' AS DateTime), N'Sudhir.singh@barcodeindia.com', N'B224-GAGAN MITTAL', N'Hamir Singh Thakur', N'B224', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (109, N'B651', N'Resham Kaur  ', N'Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2016-08-01 00:00:00.000' AS DateTime), N'resham.kaur@barcodeindia.com', N'B636-SHRI SHANKAR NAGAR', N'Hamir Singh Thakur', N'B636', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (110, N'B660', N'Shatrughna Prasad Ray', N'Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2016-09-17 00:00:00.000' AS DateTime), N'shatrughna.ray@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (111, N'B666', N'Sachin Malik', N'Assistant Manager RFID- Presales and Project', N'Hardware', N'RFID', N'North', N'Gurgaon', CAST(N'2016-10-25 00:00:00.000' AS DateTime), N'sachin.malik@barcodeindia.com', N'B892-Ashish Kumar Sharma', N'Sanjay Chaturvedi', N'B892', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (112, N'B667', N'Sukhamay Deogharia', N'Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2016-11-02 00:00:00.000' AS DateTime), N'sukhamay.deogharia@barcodeindia.com', N'B376-GAURAV KUMAR', N'Hamir Singh Thakur', N'B376', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (113, N'B668', N'Amar Devanand Chavan', N'Software Engineer', N'Software', N'Software Development', N'West', N'Mumbai', CAST(N'2016-11-07 00:00:00.000' AS DateTime), N'amar.c@barcodeindia.com', N'B256-PRASHANT SRIDHAR KINAGE', N'Hamir Singh Thakur', N'B256', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (114, N'B672', N'Akhilesh Kumar', N'Executive Engineer', N'Hardware', N'Hardware Support', N'West', N'Mumbai', CAST(N'2016-11-21 00:00:00.000' AS DateTime), N'akhilesh.kumar@barcodeindia.com', N'B861-Navneet Kaur', N'Sanjay Chaturvedi', N'B861', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (115, N'B673', N'Priyasi ', N'Service Desk Executive', N'Hardware', N'Hardware Support', N'West', N'Mumbai', CAST(N'2016-11-21 00:00:00.000' AS DateTime), N'priyasi.sharma@barcodeindia.com', N'B861-Navneet Kaur', N'Sanjay Chaturvedi', N'B861', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (116, N'B676', N'A.Manikandan', N'Senior Executive Engineer', N'Hardware', N'Hardware Support', N'South', N'Chennai', CAST(N'2016-12-19 00:00:00.000' AS DateTime), N'manikandan.a@barcodeindia.com', N'B530-SANDEEP CHILLALE', N'Sanjay Chaturvedi', N'B530', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (117, N'B681', N'Vigneshwaran M', N'Executive Engineer', N'Hardware', N'Hardware Support', N'South', N'Bangalore', CAST(N'2017-01-02 00:00:00.000' AS DateTime), N'm.vigneshwaran@barcodeindia.com', N'B530-SANDEEP CHILLALE', N'Sanjay Chaturvedi', N'B530', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (118, N'B686', N'Akhilesh Kumar Verma', N'Product Manager', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2017-01-18 00:00:00.000' AS DateTime), N'akhilesh.verma@barcodeindia.com', N'B001-HAMIR SINGH THAKUR', N'Hamir Singh Thakur', N'B001', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (119, N'B689', N'Rajat Saini', N'Assistant Manager- RFID', N'Hardware', N'RFID', N'North', N'Gurgaon', CAST(N'2017-02-03 00:00:00.000' AS DateTime), N'rajat.saini@barcodeindia.com', N'B892-Ashish Kumar Sharma', N'Sanjay Chaturvedi', N'B892', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (120, N'B691', N'Anupam Kumar Tiwari', N'Senior Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2017-03-06 00:00:00.000' AS DateTime), N'anupam.tiwari@barcodeindia.com', N'B263-BRAJESH KUMAR SRIVASTAVA', N'Hamir Singh Thakur', N'B263', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (121, N'B692', N'Vijay Pratap Singh', N'Quality Engineer- Application Tester', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2017-03-06 00:00:00.000' AS DateTime), N'vijay.pratap@barcodeindia.com', N'B686-AKHILESH KUMAR VERMA', N'Hamir Singh Thakur', N'B686', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (122, N'B693', N'Mukesh Sharma', N'Web Designer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2017-03-20 00:00:00.000' AS DateTime), N'mukesh.sharma@barcodeindia.com', N'B686-AKHILESH KUMAR VERMA', N'Hamir Singh Thakur', N'B686', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (123, N'B698', N'Rohit Rawat', N'Senior Executive - HR', N'HR & Admin', N'HR', N'North', N'Gurgaon', CAST(N'2017-04-03 00:00:00.000' AS DateTime), N'hr@barcodeindia.com', N'B792-SURABHI SANCHITA', N'Jayant Gupta', N'B792', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (124, N'B700', N'Rahul Kumar', N'Software Engineer', N'Software', N'Software Development', N'South', N'Gurgaon', CAST(N'2017-04-05 00:00:00.000' AS DateTime), N'rahul.kumar@barcodeindia.com', N'B636-SHRI SHANKAR NAGAR', N'Hamir Singh Thakur', N'B636', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (125, N'B702', N'Sreenivasulu.V', N'Executive Engineer', N'Hardware', N'Hardware Support', N'South', N'Bangalore', CAST(N'2017-04-10 00:00:00.000' AS DateTime), N'sreenivasulu.v@barcodeindia.com', N'B530-SANDEEP CHILLALE', N'Sanjay Chaturvedi', N'B530', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (126, N'B704', N'Amit Kumar', N'Senior Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2017-04-17 00:00:00.000' AS DateTime), N'amit.kumar@barcodeindia.com', N'B686-AKHILESH KUMAR VERMA', N'Hamir Singh Thakur', N'B686', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (127, N'B709', N'Karan Gupta', N'Executive Engineer', N'Hardware', N'Hardware Support', N'West', N'Ahmedabad', CAST(N'2017-06-01 00:00:00.000' AS DateTime), N'karan.gupta@barcodeindia.com', N'B861-Navneet Kaur', N'Sanjay Chaturvedi', N'B861', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (128, N'B714', N'Vinay Kumar Pandey', N'Senior Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2017-06-15 00:00:00.000' AS DateTime), N'vinay.pandey@barcodeindia.com', N'B376-GAURAV KUMAR', N'Hamir Singh Thakur', N'B376', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (129, N'B716', N'Amit', N'Senior Executive - Sales', N'Sales', N'Sales', N'North', N'Chandigarh', CAST(N'2017-07-05 00:00:00.000' AS DateTime), N'amit@barcodeindia.com', N'B216-RAHUL GUPTA', N'Jayant Gupta', N'B216', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (130, N'B719', N'Pramod Kumar', N'Senior Manager - Finance & Accounts', N'Finance & Accounts', N'Finance & Accounts', N'North', N'Gurgaon', CAST(N'2017-08-08 00:00:00.000' AS DateTime), N'pramod.kumar@barcodeindia.com', N'DIR1-AJAY BHUTANI', N'Ajay Bhutani', N'DIR1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (131, N'B724', N'Pankaj Vibhutinarayan Prajapati', N'Software Engineer', N'Software', N'Software Development', N'West', N'Mumbai', CAST(N'2017-08-23 00:00:00.000' AS DateTime), N'pankaj.prajapati@barcodeindia.com', N'B256-PRASHANT SRIDHAR KINAGE', N'Hamir Singh Thakur', N'B256', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (132, N'B725', N'Preeti Beersingh Bhagwane ', N'Operations Executive', N'Finance & Accounts', N'Finance & Accounts', N'West', N'Mumbai', CAST(N'2017-08-23 00:00:00.000' AS DateTime), N'accounts.mumbai@barcodeindia.com', N'B212-DIPAK DHANAJI THAMKE', N'Pramod Kumar', N'B212', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (133, N'B728', N'Akhilesh Kumar', N'Senior Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2017-09-18 00:00:00.000' AS DateTime), N'akhilesh.k@barcodeindia.com', N'B263-BRAJESH KUMAR SRIVASTAVA', N'Hamir Singh Thakur', N'B263', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (134, N'B736', N'Inderjeet Singh Kakkar', N'AGM - Business Development', N'Business Development', N'Business Development', N'North', N'Gurgaon', CAST(N'2017-10-09 00:00:00.000' AS DateTime), N'ijk@barcodeindia.com', N'B036-DINANATH PILGAOKAR', N'Dinanath Pilgaokar', N'B036', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (135, N'B737', N'Amit Kumar', N'Manager - RFID', N'Hardware', N'RFID', N'South', N'Bangalore', CAST(N'2017-10-09 00:00:00.000' AS DateTime), N'amit.k@barcodeindia.com', N'B185-SANDEEP CHADHA', N'Sanjay Chaturvedi', N'B185', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (136, N'B739', N'Ravi Kumar', N'Senior Engineer - RFID', N'Hardware', N'RFID', N'North', N'Gurgaon', CAST(N'2017-10-04 00:00:00.000' AS DateTime), N'ravi.saini@barcodeindia.com', N'B892-Ashish Kumar Sharma', N'Sanjay Chaturvedi', N'B892', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (137, N'B742', N'Shiv Kumar', N'Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Hero Honda - Nimrana', CAST(N'2017-11-01 00:00:00.000' AS DateTime), N'shiv.kumar@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (138, N'B745', N'Rajeev Ranjan Pratap Singh', N'Accounts Executive', N'Finance & Accounts', N'Finance & Accounts', N'North', N'Gurgaon', CAST(N'2017-12-01 00:00:00.000' AS DateTime), N'rajeev.ranjan@barcodeindia.com', N'B017-VIMAL NAURIYAL', N'Ajay Bhutani', N'B017', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (139, N'B746', N'Mukul Sharma', N'Store Executive', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2017-12-04 00:00:00.000' AS DateTime), N'mukul.sharma@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (140, N'B750', N'Chaubay Amit Kumar', N'Senior Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2017-12-18 00:00:00.000' AS DateTime), N'amit.chaubay@barcodeindia.com', N'B376-GAURAV KUMAR', N'Hamir Singh Thakur', N'B376', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (141, N'B753', N'Chandan Kumar', N'Executive Engineer', N'Hardware', N'Factory Automation', N'North', N'Gurgaon', CAST(N'2017-12-26 00:00:00.000' AS DateTime), N'chandan.kumar@barcodeindia.com', N'B009-RAJEEV KUMAR MISHRA', N'Sanjay Chaturvedi', N'B009', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (142, N'B755', N'Arun', N'Field Executive', N'HR & Admin', N'Accounts', N'North', N'Gurgaon', CAST(N'2018-01-02 00:00:00.000' AS DateTime), N'arun.kumar@barcodeindia.com', N'B017-VIMAL NAURIYAL', N'Surabhi Sanchita', N'B017', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (143, N'B758', N'Eva Shambhavi', N'Technical Writer', N'Hardware', N'RFID', N'North', N'Gurgaon', CAST(N'2018-01-18 00:00:00.000' AS DateTime), N'eva.shambhavi@barcodeindia.com', N'B892-Ashish Kumar Sharma', N'Sanjay Chaturvedi', N'B892', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (144, N'B761', N'Anubhav Srivastava', N'Senior Business Analyst', N'Software', N'Software Presales', N'North', N'Gurgaon', CAST(N'2018-02-06 00:00:00.000' AS DateTime), N'anubhav.srivastava@barcodeindia.com', N'B282-KULDEEP SAINI', N'Hamir Singh Thakur', N'B282', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (145, N'B762', N'Ritika Makkar', N'Technical Writer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2018-02-13 00:00:00.000' AS DateTime), N'ritika.makkar@barcodeindia.com', N'B282-KULDEEP SAINI', N'Hamir Singh Thakur', N'B282', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (146, N'B764', N'Sujit Ashvinkumar Modi ', N'Senior Sales Engineer ', N'Sales', N'Sales', N'West', N'Mumbai', CAST(N'2018-03-05 00:00:00.000' AS DateTime), N'sujit.modi@barcodeindia.com', N'B827-JAYANT GUPTA', N'Jayant Gupta', N'B827', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (147, N'B766', N'Santosh Pal', N'Driver', N'HR & Admin', N'Admin', N'North', N'Gurgaon', CAST(N'2018-03-01 00:00:00.000' AS DateTime), N'0', N'DIR1-AJAY BHUTANI', N'Ajay Bhutani', N'DIR1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (148, N'B767', N'Ankit Bhatia', N'Commercial Executive', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2018-03-06 00:00:00.000' AS DateTime), N'ankit.bhatia@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (149, N'B768', N'Madhavi Lad', N'Customer Relationship Manager', N'Business Development', N'Business Development', N'West', N'Mumbai', CAST(N'2018-03-14 00:00:00.000' AS DateTime), N'madhavi.lad@barcodeindia.com', N'B036-DINANATH PILGAOKAR', N'Dinanath Pilgaokar', N'B036', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (150, N'B770', N'Adimulam Ramesh', N'Executive Engineer', N'Hardware', N'Hardware Support', N'South', N'Hyderabad', CAST(N'2018-03-29 00:00:00.000' AS DateTime), N'ramesh.a@barcodeindia.com', N'B530-SANDEEP CHILLALE', N'Sanjay Chaturvedi', N'B530', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (151, N'B771', N'Subir Kumar Routh', N'Field Executive', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2018-04-02 00:00:00.000' AS DateTime), N'0', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (152, N'B775', N'Arpit Hans', N'Assistant Manager - Sales', N'Sales', N'Sales', N'North', N'Gurgaon', CAST(N'2018-04-11 00:00:00.000' AS DateTime), N'arpit.hans@barcodeindia.com', N'B216-RAHUL GUPTA', N'Jayant Gupta', N'B216', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (153, N'B777', N'Aviral Tripathi', N'Manager Sales - Key Account', N'Sales', N'Sales', N'North', N'Gurgaon', CAST(N'2018-04-16 00:00:00.000' AS DateTime), N'aviral.tripathi@barcodeindia.com', N'B216-RAHUL GUPTA', N'Jayant Gupta', N'B216', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (154, N'B778', N'Apoorva D.C', N'Sales Coordinator', N'Sales', N'Sales', N'South', N'Bangalore', CAST(N'2018-04-16 00:00:00.000' AS DateTime), N'apoorva.dc@barcodeindia.com', N'B044-Vani', N'Jayant Gupta', N'B044', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (155, N'B779', N'Bal Krishan', N'Assistant Manager', N'Sales', N'Sales', N'North', N'Gurgaon', CAST(N'2018-04-17 00:00:00.000' AS DateTime), N'balkrishan.bhardwaj@barcodeindia.com', N'B216-RAHUL GUPTA', N'Jayant Gupta', N'B216', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (156, N'B780', N'Bishal Singh', N'Trainee - Sales', N'Sales', N'Sales', N'North', N'Gurgaon', CAST(N'2018-04-18 00:00:00.000' AS DateTime), N'bishal.singh@barcodeindia.com', N'B216-RAHUL GUPTA', N'Jayant Gupta', N'B216', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (157, N'B781', N'Atul Kumar', N'Assistant Manager - Purchase', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2018-04-19 00:00:00.000' AS DateTime), N'atul.kumar@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (158, N'B783', N'Naresh Aneja', N'Manager - Presales', N'Software', N'Software Presales', N'North', N'Gurgaon', CAST(N'2018-05-01 00:00:00.000' AS DateTime), N'naresh.aneja@barcodeindia.com', N'B282-KULDEEP SAINI', N'Hamir Singh Thakur', N'B282', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (159, N'B784', N'Sumit', N'Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2018-05-03 00:00:00.000' AS DateTime), N'sumit.bansal@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (160, N'B790', N'Shubham Gupta', N'Technical Asst. Engineer- RFID', N'Hardware', N'RFID', N'North', N'Gurgaon', CAST(N'2018-06-04 00:00:00.000' AS DateTime), N'shubham.gupta@barcodeindia.com', N'B892-Ashish Kumar Sharma', N'Sanjay Chaturvedi', N'B892', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (161, N'B791', N'Mohit Sethi', N'Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2018-06-04 00:00:00.000' AS DateTime), N'mohit.sethi@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (162, N'B792', N'Surabhi Sanchita', N'AVP - HR', N'HR & Admin', N'HR', N'North', N'Gurgaon', CAST(N'2018-06-11 00:00:00.000' AS DateTime), N'surabhi.sanchita@barcodeindia.com', N'B827-JAYANT GUPTA', N'Ajay Bhutani', N'B827', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (163, N'B794', N'Pankaj Khare', N'Senior Executive - MIS', N'MIS', N'MIS', N'North', N'Gurgaon', CAST(N'2018-06-15 00:00:00.000' AS DateTime), N'pankaj.kumar@barcodeindia.com', N'B003-PRAVEEN KISHORE', N'Praveen Kishore', N'B003', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (164, N'B795', N'Omkar Patankar', N'Presales Engineer', N'Software', N'Software Presales', N'West', N'Pune', CAST(N'2018-06-20 00:00:00.000' AS DateTime), N'omkar.p@barcodeindia.com', N'B174-RAMESH JAIN', N'Hamir Singh Thakur', N'B174', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (165, N'B797', N'Vandana Chaturvedi', N'Executive Administration', N'HR & Admin', N'Admin', N'North', N'Gurgaon', CAST(N'2018-06-01 00:00:00.000' AS DateTime), N'0', N'B792-SURABHI SANCHITA', N'Surabhi Sanchita', N'B792', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (166, N'B798', N'Rahul Prasad', N'Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2018-07-02 00:00:00.000' AS DateTime), N'rahul.prasad@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (167, N'B800', N'Nikita Wandre', N'Software Engineer', N'Software', N'Software Development', N'West', N'Mumbai', CAST(N'2018-07-02 00:00:00.000' AS DateTime), N'nikita.wandre@barcodeindia.com', N'B256-PRASHANT SRIDHAR KINAGE', N'Hamir Singh Thakur', N'B256', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (168, N'B803', N'Sainath Hiwale', N'Software Engineer', N'Software', N'Software Development', N'South', N'Bangalore', CAST(N'2018-07-11 00:00:00.000' AS DateTime), N'sainath.hiwale@barcodeindia.com', N'B138-BIPLAB BANIK', N'Hamir Singh Thakur', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (169, N'B806', N'Puneet Prasad', N'Senior Executive Engineer', N'Hardware', N'Factory Automation', N'North', N'Gurgaon', CAST(N'2018-07-23 00:00:00.000' AS DateTime), N'puneet.prasad@barcodeindia.com', N'B009-RAJEEV KUMAR MISHRA', N'Sanjay Chaturvedi', N'B009', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (170, N'B807', N'Sunil Kumar Jaiswar', N'Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2018-07-23 00:00:00.000' AS DateTime), N'jaiswar.sunil@barcodeindia.com ', N'B009-RAJEEV KUMAR MISHRA', N'Sanjay Chaturvedi', N'B009', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (171, N'B813', N'Neeraj Dayal', N'Service Desk Executive', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2018-08-28 00:00:00.000' AS DateTime), N'backoffice.delhi@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (172, N'B815', N'Mujahid Hussain', N'Software Support Executive', N'Software', N'Software Support', N'North', N'Gurgaon', CAST(N'2018-09-19 00:00:00.000' AS DateTime), N'mujahid.hussain@barcodeindia.com', N'B291-CHANDRA PRAKASH', N'Hamir Singh Thakur', N'B291', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (173, N'B817', N'Nandhini M ', N'Software Engineer', N'Software', N'Software Development', N'South', N'Chennai', CAST(N'2018-10-01 00:00:00.000' AS DateTime), N'nandhini.m@barcodeindia.com', N'B643-SARAVANAN M', N'Hamir Singh Thakur', N'B643', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (174, N'B818', N'Jibin Thomas Eapen', N'Executive Engineer', N'Hardware', N'Hardware Support', N'South', N'Bangalore', CAST(N'2018-10-03 00:00:00.000' AS DateTime), N'jibin.thomas@barcodeindia.com', N'B530-SANDEEP CHILLALE', N'Sanjay Chaturvedi', N'B530', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (175, N'B819', N'Laxman Pandit', N'Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Maruti - Gurgaon', CAST(N'2018-10-05 00:00:00.000' AS DateTime), N'laxman.pandit@barcodeindia.com', N'B474-PAWAN KUMAR', N'Sanjay Chaturvedi', N'B474', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (176, N'B820', N'Rajeev Roy', N'Senior Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2018-10-10 00:00:00.000' AS DateTime), N'rajeev.roy@barcodeindia.com', N'B376-GAURAV KUMAR', N'Hamir Singh Thakur', N'B376', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (177, N'B821', N'Raihan Karim Mollick', N'Senior Executive Engineer', N'Hardware', N'Hardware Support', N'South', N'Bangalore', CAST(N'2018-10-15 00:00:00.000' AS DateTime), N'raihan.mollick@barcodeindia.com', N'B530-SANDEEP CHILLALE', N'Sanjay Chaturvedi', N'B530', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (178, N'B823', N'Milind Patil', N'Junior Software Engineer', N'Software', N'Software Development', N'West', N'Mumbai', CAST(N'2018-11-01 00:00:00.000' AS DateTime), N'milind.patil@barcodeindia.com', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (179, N'B824', N'Yogesh Kangane', N'Assistant Manager - Operations', N'Finance & Accounts', N'Finance & Accounts', N'West', N'Mumbai', CAST(N'2018-11-26 00:00:00.000' AS DateTime), N'yogesh.kangane@barcodeindia.com', N'B212-DIPAK DHANAJI THAMKE', N'Pramod Kumar', N'B212', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (180, N'B825', N'Anuj', N'Service Desk Executive', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2018-11-26 00:00:00.000' AS DateTime), N'anuj.saini@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (181, N'B827', N'Jayant Gupta', N'Chief Business Officer', N'Sales', N'Sales', N'North', N'Gurgaon', CAST(N'2018-11-27 00:00:00.000' AS DateTime), N'jayant.gupta@barcodeindia.com', N'B792-SURABHI SANCHITA', N'Ajay Bhutani', N'B792', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (182, N'B829', N'Ajay Dhyani', N'Service Desk Executive', N'Hardware', N'Hardware Support', N'North', N'Gurgaon', CAST(N'2018-12-03 00:00:00.000' AS DateTime), N'ajay.dhyani@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (183, N'B831', N'Sachin Prakash Chouk', N'Solutions Architect', N'Software', N'Software Development', N'West', N'Pune 2', CAST(N'2018-12-07 00:00:00.000' AS DateTime), N'sachin.chouk@barcodeindia.com', N'B085-RAJAT RATRA', N'Rajat Ratra', N'B085', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (184, N'B832', N'Kalpesh Belekar', N'Senior Executive Engineer', N'Hardware', N'Hardware Support', N'West', N'Mumbai', CAST(N'2018-12-05 00:00:00.000' AS DateTime), N'kalpesh.belekar@barcodeindia.com', N'B861-Navneet Kaur', N'Sanjay Chaturvedi', N'B861', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (185, N'B833', N'Ajay Kumar Patel', N'Senior Software Developer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2018-12-17 00:00:00.000' AS DateTime), N'ajay.patel@barcodeindia.com', N'B224-GAGAN MITTAL', N'Hamir Singh Thakur', N'B224', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (186, N'B834', N'Tapan Das', N'Office Boy', N'HR & Admin', N'Admin', N'South', N'Bangalore', CAST(N'2018-12-10 00:00:00.000' AS DateTime), N'0', N'B044-VANI', N'Biplab Banik', N'B044', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (187, N'B835', N'Pritesh Metha', N'Hardware Design Engineer', N'Hardware', N'Hardware Support', N'West', N'Pune 2', CAST(N'2019-01-02 00:00:00.000' AS DateTime), N'pritesh.mehta@barcodeindia.com', N'B085-RAJAT RATRA', N'Rajat Ratra', N'B085', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (188, N'B836', N'Suraj Gaware', N'Application Engineer', N'Hardware', N'Hardware Support', N'West', N'Pune 2', CAST(N'2019-01-02 00:00:00.000' AS DateTime), N'suraj.gaware@barcodeindia.com', N'B085-RAJAT RATRA', N'Rajat Ratra', N'B085', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (189, N'B837', N'Priyatam Ganesh Kumbhar', N'Software Engineer', N'Software', N'Software Development', N'West', N'Pune 2', CAST(N'2019-01-02 00:00:00.000' AS DateTime), N'priyatam.kumbhar@barcodeindia.com', N'B085-RAJAT RATRA', N'Rajat Ratra', N'B085', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (190, N'B838', N'Himadri Bouwal', N'Trainee - Software', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-01-07 00:00:00.000' AS DateTime), N'himadri.bouwal@barcodeindia.com', N'B890-GUNJEET SINGH', N'Hamir Singh Thakur', N'B890', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (191, N'B840', N'Vishal Sharma', N'Technical Engineer', N'Hardware', N'RFID', N'North', N'Gurgaon', CAST(N'2019-01-18 00:00:00.000' AS DateTime), N'vishal.sharma@barcodeindia.com', N'B892-Ashish Kumar Sharma', N'Sanjay Chaturvedi', N'B892', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (192, N'B841', N'K Kavita', N'Assistant Manager - Lead Generation', N'Marketing', N'Marketing', N'North', N'Gurgaon', CAST(N'2019-01-21 00:00:00.000' AS DateTime), N'kavita.kolla@barcodeindia.com', N'B882-AMRITA PURKAYASTHA', N'Jayant Gupta', N'B882', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (193, N'B842', N'Sourabh Shastri', N'Software Engineer', N'Software', N'Software Development', N'West', N'Pune 2', CAST(N'2019-01-21 00:00:00.000' AS DateTime), N'sourabh.shastri@barcodeindia.com', N'B085-RAJAT RATRA', N'Rajat Ratra', N'B085', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (194, N'B843', N'Kanchan Ganesh Kunjir', N'Service Desk Executive', N'Hardware', N'Hardware Support', N'West', N'Mumbai', CAST(N'2019-01-29 00:00:00.000' AS DateTime), N'kanchan.kunjir@baarcodeindia.com', N'B861-Navneet Kaur', N'Sanjay Chaturvedi', N'B861', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (195, N'B844', N'Ashutosh Bhaskar', N'IT Manager', N'IT', N'IT', N'North', N'Gurgaon', CAST(N'2019-02-01 00:00:00.000' AS DateTime), N'ashutosh.bhaskar@barcodeindia.com', N'B827-JAYANT GUPTA', N'Jayant Gupta', N'B827', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (196, N'B845', N'Swati', N'Q.A. Software Engineer - Testing', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-02-04 00:00:00.000' AS DateTime), N'swati@barcodeindia.com', N'B890-GUNJEET SINGH', N'Hamir Singh Thakur', N'B890', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (197, N'B846', N'Neeraj Singh Panwar', N'Trainee - Software', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-02-04 00:00:00.000' AS DateTime), N'neeraj.panwar@barcodeindia.com', N'B185-SANDEEP CHADHA', N'Hamir Singh Thakur', N'B185', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (198, N'B847', N'Neeraj Saini', N'Trainee - Software', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-02-04 00:00:00.000' AS DateTime), N'neeraj.saini@barcodeindia.com', N'B185-SANDEEP CHADHA', N'Hamir Singh Thakur', N'B185', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (199, N'B848', N'Sathish Kumar V', N'Executive Engineer', N'Hardware', N'Hardware Support', N'South', N'Bangalore', CAST(N'2019-02-11 00:00:00.000' AS DateTime), N'sathish.kumar@barcodeindia.com ', N'B530-SANDEEP CHILLALE', N'Sanjay Chaturvedi', N'B530', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (200, N'B849', N'Rinku', N'Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-02-15 00:00:00.000' AS DateTime), N'rinku@barcodeindia.com', N'B224-GAGAN MITTAL', N'Hamir Singh Thakur', N'B224', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (201, N'B850', N'Nidhi Lal', N'Assistant Manager - HR', N'HR & Admin', N'HR', N'North', N'Gurgaon', CAST(N'2019-02-19 00:00:00.000' AS DateTime), N'nidhi.lal@barcodeindia.com', N'B792-SURABHI SANCHITA', N'Jayant Gupta', N'B792', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (202, N'B852', N'Ankit Dass Mathur', N'Senior Software Engineer - Android', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-02-25 00:00:00.000' AS DateTime), N'ankit.mathur@barcodeindia.com', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (203, N'B853', N'Prabu R', N'Assistant Manager - Sales', N'Sales', N'Sales', N'South', N'Bangalore', CAST(N'2019-03-04 00:00:00.000' AS DateTime), N'prabu.r@barcodeindia.com ', N'B138-BIPLAB BANIK', N'Jayant Gupta', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (204, N'B854', N'Shivakumar Kattimani', N'Manager - Sales', N'Sales', N'Sales', N'South', N'Bangalore', CAST(N'2019-03-04 00:00:00.000' AS DateTime), N'shivkumar.kattimani@barcodeindia.com', N'B138-BIPLAB BANIK', N'Jayant Gupta', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (205, N'B855', N'Nagaraja.C', N'Software Engineer', N'Software', N'Software Development', N'South', N'Bangalore', CAST(N'2019-03-07 00:00:00.000' AS DateTime), N'nagaraja.c@barcodeindia.com', N'B138-BIPLAB BANIK', N'Hamir Singh Thakur', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (206, N'B856', N'Nuhuman M', N'Assistant Manager - Support', N'Hardware', N'Hardware Support', N'South', N'Bangalore', CAST(N'2019-03-11 00:00:00.000' AS DateTime), N'nuhuman.m@barcodeindia.com ', N'B138-BIPLAB BANIK', N'Sanjay Chaturvedi', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (207, N'B858', N'Rupali Subhash Karekar', N'Manager - HR', N'HR & Admin', N'HR', N'West', N'Mumbai', CAST(N'2019-03-18 00:00:00.000' AS DateTime), N'rupali.karekar@barcodeindia.com ', N'B036-DINANATH PILGAOKAR', N'Jayant Gupta', N'B036', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (208, N'B859', N'Krish Kashyap', N'Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-03-18 00:00:00.000' AS DateTime), N'krish.kashyap@barcodeindia.com', N'B636-SHRI SHANKAR NAGAR', N'Hamir Singh Thakur', N'B636', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (209, N'B860', N'Jamal Ahmad', N'Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-03-18 00:00:00.000' AS DateTime), N'jamal.ahmad@barcodeindia.com', N'B224-GAGAN MITTAL', N'Hamir Singh Thakur', N'B224', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (210, N'B861', N'Navneet Kaur', N'Manager - Customer Support', N'Hardware', N'Hardware Support', N'West', N'Mumbai', CAST(N'2019-03-27 00:00:00.000' AS DateTime), N'navneet.kaur@barcodeindia.com', N'B010-BIJAY KR. SAMAL', N'Sanjay Chaturvedi', N'B010', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (211, N'B862', N'Rishikesh Singh Kalsi', N'Senior Manager - CEC & Training', N'HR & Admin', N'HR', N'North', N'Gurgaon', CAST(N'2019-04-01 00:00:00.000' AS DateTime), N'rishikesh.kalsi@barcodeindia.com', N'B827-JAYANT GUPTA', N'Jayant Gupta', N'B827', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (212, N'B863', N'Vaibhav Singh', N'Supply Chain - Executive', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2019-04-11 00:00:00.000' AS DateTime), N'vaibhav.singh@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (213, N'B864', N'M.Siva', N'Executive Engineer', N'Hardware', N'Hardware Support', N'South', N'Vishakhapatnam', CAST(N'2019-04-22 00:00:00.000' AS DateTime), N'siva.m@barcodeindia.com', N'B238-P.MURALI KRISHNA', N'Sanjay Chaturvedi', N'B238', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (214, N'B866', N'Shivansh Vashisht', N'Executive Engineer', N'Hardware', N'Factory Automation', N'North', N'Gurgaon', CAST(N'2019-05-01 00:00:00.000' AS DateTime), N'shivansh.vashisht@barcodeindia.com', N'B009-RAJEEV KUMAR MISHRA', N'Sanjay Chaturvedi', N'B009', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (215, N'B868', N'Lalit Bhawal', N'Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Hero Honda - Nimrana', CAST(N'2019-05-07 00:00:00.000' AS DateTime), N'lalit.Bhawal@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (216, N'B869', N'Abhishek Kumar Paliwal', N'Executive Engineer', N'Hardware', N'Hardware Support', N'North', N'Gurgaon (Myntra, Binola)', CAST(N'2019-05-07 00:00:00.000' AS DateTime), N'abhishek.paliwal@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (217, N'B870', N'Rahul Anand', N'Senior Manager - Sales', N'Sales', N'Sales', N'West', N'Mumbai', CAST(N'2019-05-13 00:00:00.000' AS DateTime), N'rahul.anand@barcodeindia.com', N'B827-JAYANT GUPTA', N'Jayant Gupta', N'B827', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (218, N'B872', N'Bharat', N'Resident Engineer', N'Hardware', N'Hardware Support', N'North', N'Hero Honda - Nimrana', CAST(N'2019-05-23 00:00:00.000' AS DateTime), N'bharat.rao@barcodeindia.com ', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (219, N'B873', N'Aseem Aggarwal', N'General Manager - Products', N'Hardware', N'Hardware Product', N'North', N'Gurgaon', CAST(N'2019-06-03 00:00:00.000' AS DateTime), N'aseem.aggarwal@barcodeindia.com', N'B003-PRAVEEN KISHORE', N'Sanjay Chaturvedi', N'B003', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (220, N'B874', N'Rashmi Bohra', N'Executive Assistant', N'CEO Office', N'CEO Office', N'North', N'Gurgaon', CAST(N'2019-06-03 00:00:00.000' AS DateTime), N'rashmi.bohra@barcodeindia.com', N'DIR1-AJAY BHUTANI', N'Ajay Bhutani', N'DIR1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (221, N'B875', N'Sanchi Baliyan', N'Senior Executive - Administration', N'HR & Admin', N'Admin', N'North', N'Gurgaon', CAST(N'2019-06-03 00:00:00.000' AS DateTime), N'frontoffice.corp@barcodeindia.com', N'B283-VIVEK CHOUDHARY', N'Surabhi Sanchita', N'B283', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (222, N'B876', N'Parvesh Suresh Yadav', N'Trainee Engineer', N'Hardware', N'Hardware Support', N'West', N'Mumbai', CAST(N'2019-06-19 00:00:00.000' AS DateTime), N'parvesh.yadav@barcodeindia.com', N'B861-Navneet Kaur', N'Sanjay Chaturvedi', N'B861', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (223, N'B878', N'Rohit Kumar', N'Software Support Engineer', N'Software', N'Software Support', N'North', N'Gurgaon', CAST(N'2019-06-24 00:00:00.000' AS DateTime), N'rohit.kumar@barcodeindia.com', N'B291-CHANDRA PRAKASH', N'Hamir Singh Thakur', N'B291', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (224, N'B879', N'Kartik Sharma', N'Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-06-24 00:00:00.000' AS DateTime), N'kartik.sharma@barcodeindia.com', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (225, N'B880', N'Santosh Karansingh Parekh', N'Deputy Manager - Presales', N'Hardware', N'Hardware Presales', N'West', N'Mumbai', CAST(N'2019-06-24 00:00:00.000' AS DateTime), N'santosh.parekh@barcodeindia.com', N'B010-BIJAY KR. SAMAL', N'Sanjay Chaturvedi', N'B010', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (226, N'B881', N'Sagar Shyamnarayan Dubey', N'Trainee Engineer', N'Hardware', N'Hardware Support', N'West', N'Mumbai', CAST(N'2019-06-26 00:00:00.000' AS DateTime), N'sagar.dubey@barcodeindia.com', N'B861-Navneet Kaur', N'Sanjay Chaturvedi', N'B861', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (227, N'B882', N'Amrita Purkayastha', N'Senior Manager - Marketing', N'Marketing', N'Marketing', N'North', N'Gurgaon', CAST(N'2019-07-01 00:00:00.000' AS DateTime), N'amrita.purkayastha@barcodeindia.com', N'B827-JAYANT GUPTA', N'Jayant Gupta', N'B827', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (228, N'B883', N'Arunava Karmakar', N'Product Manager', N'Business Development', N'Business Development', N'West', N'Mumbai', CAST(N'2019-07-01 00:00:00.000' AS DateTime), N'arunava.karmakar@barcodeindia.com ', N'B036-DINANATH PILGAOKAR', N'Dinanath Pilgaokar', N'B036', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (229, N'B884', N'Vishal Gawande', N'Software Engineer', N'Software', N'Software Development', N'West', N'Pune 2', CAST(N'2019-07-01 00:00:00.000' AS DateTime), N'vishal.gawande@barcodeindia.com', N'B085-RAJAT RATRA', N'Rajat Ratra', N'B085', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (230, N'B885', N'Sudeep Dinkar Pawar', N'Embedded Developer', N'Software', N'Software Development', N'West', N'Pune 2', CAST(N'2019-07-01 00:00:00.000' AS DateTime), N'sudeep.pawar@barcodeindia.com', N'B085-RAJAT RATRA', N'Rajat Ratra', N'B085', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (231, N'B886', N'Abdul Salam', N'Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-07-02 00:00:00.000' AS DateTime), N'abdul.salam@barcodeindia.com', N'B263-BRAJESH KUMAR SRIVASTAVA', N'Hamir Singh Thakur', N'B263', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (232, N'B887', N'Vinay Pathak', N'Senior Manager - Sales', N'Sales', N'Sales', N'North', N'Gurgaon', CAST(N'2019-07-08 00:00:00.000' AS DateTime), N'vinay.pathak@barcodeindia.com', N'B216-RAHUL GUPTA', N'Jayant Gupta', N'B216', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (233, N'B888', N'Prateek Khare', N'Senior Software Developer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-07-08 00:00:00.000' AS DateTime), N'prateek.khare@barcodeindia.com', N'B686-AKHILESH KUMAR VERMA', N'Hamir Singh Thakur', N'B686', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (234, N'B889', N'Lakshay Gupta', N'Software Engineer - Trainee', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-07-08 00:00:00.000' AS DateTime), N'lakshya.gupta@barcodeindia.com', N'B686-AKHILESH KUMAR VERMA', N'Hamir Singh Thakur', N'B686', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (235, N'B890', N'Gunjeet Singh', N'Manager - Software Quality Lead', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-07-11 00:00:00.000' AS DateTime), N'gunjeet.singh@barcodeindia.com', N'B001-HAMIR SINGH THAKUR', N'Hamir Singh Thakur', N'B001', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (236, N'B891', N'Madhav Chauhan', N'Senior Executive', N'Supply Chain', N'Supply Chain', N'North', N'Gurgaon', CAST(N'2019-07-15 00:00:00.000' AS DateTime), N'madhav.chauhan@barcodeindia.com', N'B002-JASBIR KAUR', N'Praveen Kishore', N'B002', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (237, N'B892', N'Ashish Kumar Sharma', N'Manager - Presales & Projects', N'Hardware', N'RFID', N'North', N'Gurgaon', CAST(N'2019-07-15 00:00:00.000' AS DateTime), N'ashish.sharma@barcodeindia.com', N'B185-SANDEEP CHADHA', N'Sanjay Chaturvedi', N'B185', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (238, N'B893', N'Gauri Shankar Kumar', N'Software Developer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-07-15 00:00:00.000' AS DateTime), N'gaurishankar.kumar@barcodeindia.com', N'B263-BRAJESH KUMAR SRIVASTAVA', N'Hamir Singh Thakur', N'B263', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (239, N'B894', N'Brijesh Dudpudi', N'Assistant Manager - Presales', N'Hardware', N'Hardware Presales', N'West', N'Ahmedabad', CAST(N'2019-07-23 00:00:00.000' AS DateTime), N'brijesh.dudpudi@barcodeindia.com', N'B010-BIJAY KR. SAMAL', N'Sanjay Chaturvedi', N'B010', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (240, N'B896', N'Daniel Raj.V', N'Office Boy', N'HR & Admin', N'Admin', N'South', N'Bangalore', CAST(N'2019-07-10 00:00:00.000' AS DateTime), N'0', N'B044-VANI', N'Biplab Banik', N'B044', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (241, N'B897', N'Chanchal Sharma', N'Resident Engineer', N'Hardware', N'Hardware Support', N'North', N'Hero Honda - Nimrana', CAST(N'2019-07-26 00:00:00.000' AS DateTime), N'chanchal.sharma@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (242, N'B898', N'Girish Ahire', N'Trainee Engineer', N'Hardware', N'Hardware Support', N'West', N'Mumbai', CAST(N'2019-08-01 00:00:00.000' AS DateTime), N'girish.ahire@barcodeindia.com', N'B861-Navneet Kaur', N'Sanjay Chaturvedi', N'B861', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (243, N'B899', N'M. Jinesh Kumar', N'Manager - Sales', N'Sales', N'Sales', N'South', N'Chennai', CAST(N'2019-08-05 00:00:00.000' AS DateTime), N'jinesh.kumar@barcodeindia.com ', N'B138-BIPLAB BANIK', N'Jayant Gupta', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (244, N'B900', N'Muthazagan R', N'Software Engineer', N'Software', N'Software Development', N'South', N'Chennai', CAST(N'2019-08-05 00:00:00.000' AS DateTime), N'muthazagan.r@barcodeindia.com ', N'B643-SARAVANAN M', N'Hamir Singh Thakur', N'B643', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (245, N'B901', N'Vasanth Kumar.V', N'Manager - Sales', N'Sales', N'Sales', N'South', N'Chennai', CAST(N'2019-08-12 00:00:00.000' AS DateTime), N'vasanth.kumar@barcodeindia.com', N'B138-BIPLAB BANIK', N'Jayant Gupta', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (246, N'B902', N'Tejaswini Shashikant Sagvekar', N'Junior Software Programmer', N'Software', N'Software Development', N'West', N'Mumbai', CAST(N'2019-08-12 00:00:00.000' AS DateTime), N'tejaswini.sagvekar@barcodeindia.com', N'B318-CHANDRAKANT SHANKAR SHINDKAR', N'Hamir Singh Thakur', N'B318', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (247, N'B903', N'Mayuri Bhatghare', N'Junior Software Programmer', N'Software', N'Software Development', N'West', N'Mumbai', CAST(N'2019-08-12 00:00:00.000' AS DateTime), N'mayuri.bhatghare@barcodeindia.com', N'B256-PRASHANT SRIDHAR KINAGE', N'Hamir Singh Thakur', N'B256', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (248, N'B904', N'Harish R', N'Resident Engineer', N'Hardware', N'Hardware Support', N'South', N'Bangalore', CAST(N'2019-08-14 00:00:00.000' AS DateTime), N'harish.r@barcodeindia.com', N'B530-SANDEEP CHILLALE', N'Sanjay Chaturvedi', N'B530', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (249, N'B905', N'Amit Aggarwal', N'Senior Manager Sales', N'Sales', N'Sales', N'North', N'Gurgaon', CAST(N'2019-08-19 00:00:00.000' AS DateTime), N'amit.aggarwal@barcodeindia.com', N'B216-RAHUL GUPTA', N'Jayant Gupta', N'B216', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (250, N'B906', N'V.Vengadaganesh', N'Software Engineer', N'Software', N'Software Development', N'South', N'Chennai', CAST(N'2019-08-19 00:00:00.000' AS DateTime), N'v.vengadaganesh@barcodeindia.com ', N'B643-SARAVANAN M', N'Hamir Singh Thakur', N'B643', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (251, N'B907', N'Somnath Shirkule', N'Software Trainee', N'Software', N'Software Development', N'West', N'Mumbai', CAST(N'2019-08-30 00:00:00.000' AS DateTime), N'somnath.shirkule@barcodeindia.com', N'B256-PRASHANT SRIDHAR KINAGE', N'Hamir Singh Thakur', N'B256', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (252, N'B908', N'C. Praveena', N'Service Desk Executive', N'Hardware', N'Hardware Support', N'South', N'Bangalore', CAST(N'2019-08-27 00:00:00.000' AS DateTime), N'servicedesk.south@barcodeindia.com', N'B530-SANDEEP CHILLALE', N'Sanjay Chaturvedi', N'B530', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (253, N'B909', N'Vishnubhatla Sai Shanmukh', N'Assistant Manager - Sales', N'Sales', N'Sales', N'South', N'Hyderabad', CAST(N'2019-09-03 00:00:00.000' AS DateTime), N'sai.shanmukh@barcodeindia.com', N'B238-P.MURALI KRISHNA', N'Jayant Gupta', N'B238', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (254, N'B910', N'Shital Balasaheb Bhapkar', N'Software Engineer', N'Software', N'Software Development', N'West', N'Pune 2', CAST(N'2019-09-09 00:00:00.000' AS DateTime), N'shital.bhapkar@barcodeindia.com', N'B085-RAJAT RATRA', N'Rajat Ratra', N'B085', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (255, N'B911', N'Dhaval J Panchal', N'Assistant Manager - Sales', N'Sales', N'Sales', N'West', N'Ahmedabad', CAST(N'2019-09-10 00:00:00.000' AS DateTime), N'dhaval.panchal@barcodeindia.com', N'B255-SUBHASH CHANDRA YADAV', N'Jayant Gupta', N'B255', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (256, N'B912', N'Chandan Kumar Prasad', N'Software Programmer', N'Software', N'Software Development', N'West', N'Mumbai', CAST(N'2019-09-12 00:00:00.000' AS DateTime), N'chandan.prasad@barcodeindia.com', N'B233-ASHUTOSH KRORIA', N'Hamir Singh Thakur', N'B233', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (257, N'B913', N'Arpit Sharma', N'Resident Engineer', N'Hardware', N'Hardware Support', N'North', N'Hero Honda - Nimrana', CAST(N'2019-09-13 00:00:00.000' AS DateTime), N'arpit.sharma@barcodeindia.com', N'B117-GOPAL K JHA', N'Sanjay Chaturvedi', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (258, N'B914', N'Abhishek Dipak Anande', N'Assistant Manager - Sales', N'Sales', N'Sales', N'West', N'Pune', CAST(N'2019-09-16 00:00:00.000' AS DateTime), N'abhishek.anande@barcodeindia.com', N'B255-SUBHASH CHANDRA YADAV', N'Jayant Gupta', N'B255', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (259, N'B915', N'Manisha Sharma', N'Manager - Key Accounts', N'Sales', N'Sales', N'South', N'Bangalore', CAST(N'2019-09-17 00:00:00.000' AS DateTime), N'manisha.sharma@barcodeindia.com', N'B138-BIPLAB BANIK', N'Jayant Gupta', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (260, N'B916', N'Saryu Pathania', N'Manager - Marketing', N'Marketing', N'Marketing', N'North', N'Gurgaon', CAST(N'2019-09-23 00:00:00.000' AS DateTime), N'saryu.pathania@barcodeindia.com', N'B882-AMRITA PURKAYASTHA', N'Jayant Gupta', N'B882', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (261, N'B917', N'Utkarsh Gyan', N'Manager - UI/UX Design', N'Marketing', N'Marketing', N'North', N'Gurgaon', CAST(N'2019-09-26 00:00:00.000' AS DateTime), N'utkarsh.gyan@barcodeindia.com', N'B882-AMRITA PURKAYASTHA', N'Jayant Gupta', N'B882', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (262, N'B918', N'Rohith S Nair', N'Software Engineer - Trainee', N'Software', N'Software Development', N'South', N'Bangalore', CAST(N'2019-10-01 00:00:00.000' AS DateTime), N'rohith.nair@barcodeindia.com ', N'B138-Biplab Banik', N'Hamir Singh Thakur', N'B138', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (263, N'B919', N'Prateeksha', N'Technical Writer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-10-01 00:00:00.000' AS DateTime), N'prateeksha@barcodeindia.com', N'B282-Kuldeep Saini', N'Hamir Singh Thakur', N'B282', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (264, N'B920', N'Ranjith M', N'Senior Executive - FA', N'Hardware', N'Factory Automation', N'South', N'Bangalore', CAST(N'2019-10-04 00:00:00.000' AS DateTime), N'ranjith.m@barcodeindia.com', N'B497-Uma Shanker Verma', N'Sanjay Chaturvedi', N'B497', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (265, N'B921', N'Sukanta Bhattacharya', N'Senior Engineer - Customer Support', N'Hardware', N'Hardware Support', N'East', N'Kolkata', CAST(N'2019-10-10 00:00:00.000' AS DateTime), N'sukanta.bhattacharya@barcodeindia.com', N'B010-Bijay Kr. Samal', N'Sanjay Chaturvedi', N'B010', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (266, N'B922', N'Anirban Bhattacharjee', N'Manager - BD', N'Business Development', N'Business Development', N'West', N'Mumbai', CAST(N'2019-10-14 00:00:00.000' AS DateTime), N'anirban.bhattacharjee@barcodeindia.com', N'B147-Manish Khanna', N'Dinanath Pilgaokar', N'B147', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (267, N'B923', N'Mukesh Kumar', N'Software Engineer', N'Software', N'Software Development', N'North', N'Gurgaon', CAST(N'2019-10-14 00:00:00.000' AS DateTime), N'mukesh.kumar@barcodeindia.com', N'B636-Shri Shankar Nagar', N'Hamir Singh Thakur', N'B636', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (268, N'B924', N'Nishant Vishwakarma', N'Assistant Manager - Sales', N'Sales', N'Sales', N'West', N'Mumbai', CAST(N'2019-10-16 00:00:00.000' AS DateTime), N'nishant.vishwakarma@barcodeindia.com', N'B827-Jayant Gupta', N'Jayant Gupta', N'B827', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (269, N'DIR1', N'Ajay Bhutani', N'Director', N'CEO Office', N'CEO Office', N'North', N'Gurgaon', CAST(N'1995-01-01 00:00:00.000' AS DateTime), N'ajay@barcodeindia.com', N'DIR1-AJAY BHUTANI', N'Ajay Bhutani', N'DIR1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (270, N'DIR2', N'Ashish Bhutani', N'Director', N'CEO Office', N'CEO Office', N'North', N'Gurgaon', CAST(N'1995-01-01 00:00:00.000' AS DateTime), N'ashish@barcodeindia.com', N'DIR1-AJAY BHUTANI', N'Ashish Bhutani', N'DIR1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (271, N'C014', N'Vikas Wadhwa', N'Chief Mentoring Officer', N'Business Development', N'Business Development', N'North', N'Gurgaon', CAST(N'2007-10-01 00:00:00.000' AS DateTime), N'vikas@barcodeindia.com', N'DIR1-AJAY BHUTANI', N'Ajay Bhutani', N'DIR1', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (272, N'B085', N'Rajat Ratra', N'RFID - Consultant', N'Consultant', N'Consultant', N'West', N'Pune 2', CAST(N'2018-06-16 00:00:00.000' AS DateTime), N'rajat.ratra@barcodeindia.com', N'C014-VIKAS WADHWA', N'Vikas Wadhwa', N'C014', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (NULL, N'gggg', N'gggg', N'gggg', N'ggg', N'gggg', N'ggg', N'gggg', CAST(N'2019-11-13 00:00:00.000' AS DateTime), N'gggg@gmail.com', N'B117-GOPAL K JHA', N'Biplab Banik', N'B117', NULL, NULL, NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (272, N'qqq`qq2q', N'qqq', N'qwwww', N'wwee', N'www', N'1weee', N'ddfff', CAST(N'2019-11-20 00:00:00.000' AS DateTime), N'wwwe@gmail.com', N'B001-HAMIR SINGH THAKUR', N'Dinanath Pilgaokar', N'B001', N'b001', CAST(N'2019-11-13 18:12:51.290' AS DateTime), NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (272, N'1', N'qqq', N'qwqq', N'qqq', N'wwww', N'wwww', N'dddd', CAST(N'2019-11-14 00:00:00.000' AS DateTime), N'aaaa@gmail.com', N'B001-HAMIR SINGH THAKUR', N'Ashish Bhutani', N'B001', N'b001', CAST(N'2019-11-14 11:01:10.690' AS DateTime), NULL, NULL)
INSERT [dbo].[Employee] ([SlNo], [EmployeeCode], [FirstName], [Designation], [Department], [SubDepartment], [Branch], [SubBranch], [DateofJoining], [EmailAddress], [ReportingManager], [FunctionalManager], [ReportingTo], [CreatedBy], [CreatedOn], [ModifyBy], [ModifyOn]) VALUES (272, N'2', N'222', N'2223e1', N'4444', N'w3333', N'tttt', N'tttt', CAST(N'2019-11-19 00:00:00.000' AS DateTime), N'tttt@gmail.com', N'B890-GUNJEET SINGH', N'Jayant Gupta', N'B890', N'b001', CAST(N'2019-11-15 18:19:39.633' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[mRunningSerialNo] ON 

INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (1, N'North', N'Skip Level Request', N'0', 2019, 10, 1, N'17')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (2, N'West', N'Skip Level Request', N'0', 2019, 10, 1, N'4')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (3, N'', N'Skip Level Request', N'0', 2019, 10, 1, N'1')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (4, N'North', N'Skip Level Request', N'0', 2019, 11, 1, N'8')
INSERT [dbo].[mRunningSerialNo] ([ID], [SiteID], [TransType], [LineNo], [Year], [Month], [MonthWise], [SerialNo]) VALUES (5, N'West', N'Skip Level Request', N'0', 2019, 11, 1, N'1')
SET IDENTITY_INSERT [dbo].[mRunningSerialNo] OFF
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B283', N'ggg', 1, N'b792', CAST(N'2019-10-24 17:13:24.270' AS DateTime), N'North', N'ggg', N'N20191000014', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B282', N'fff', 1, N'b001', CAST(N'2019-10-24 17:16:26.837' AS DateTime), N'North', N'fff', N'N20191000015', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B174', N'jjj', 1, N'b001', CAST(N'2019-10-24 17:18:26.547' AS DateTime), N'West', N'aaa', N'W20191000004', N'b001', CAST(N'2019-11-08 12:53:40.867' AS DateTime))
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B686', N'ggg', 1, N'b001', CAST(N'2019-10-24 17:18:53.653' AS DateTime), N'North', N'ggg', N'N20191000016', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B890', N'ggg', 1, N'b001', CAST(N'2019-10-24 17:19:07.303' AS DateTime), N'North', N'ggg', N'N20191000017', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B233', N'ggg', 1, N'b001', CAST(N'2019-11-05 18:24:28.147' AS DateTime), N'North', N'gggg', N'N20191100001', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B889', N'ggg', 3, N'b001', CAST(N'2019-11-06 10:33:14.087' AS DateTime), N'North', N'gggggg', N'N20191100002', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B558', N'dddddddddddddddddddddd', 1, N'b001', CAST(N'2019-11-08 11:39:18.000' AS DateTime), N'North', N'dggggggggggggggggggggggggggggg', N'N20191100003', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B224', N'fff', 1, N'b001', CAST(N'2019-11-08 12:40:32.760' AS DateTime), N'North', N'ffff', N'N20191100005', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B224', N'Testing purpose data list ', 1, N'b001', CAST(N'2019-11-08 12:47:20.220' AS DateTime), N'North', N'Testing purpose data list ', N'N20191100006', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B783', N'ffff', 1, N'b001', CAST(N'2019-10-22 15:55:23.217' AS DateTime), N'North', N'ffff', N'N20191000002', N'b001', CAST(N'2019-10-23 18:56:48.413' AS DateTime))
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B233', N'ttt', 1, N'b001', CAST(N'2019-11-12 14:47:06.427' AS DateTime), N'North', N'uuu', N'N20191100008', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B224', N'Readonly textbox postback issues and solutions
In many cases we need to use read only text box so user cannot edit the value but readonly textbox will lost its value after postback. Let’s say you have a read only text box to set date by using ajax calendar so after post back date will be lost, other case might be you are setting some value in...
 By Ali Adravi   On 24 Apr 2013  Viewed: 3,007
Call code behind method from JavaScript in asp.net
There are ways to call a web service method JavaScript, for more detail you can see [how to retrieve data from database using JavaScript in asp.net][1], but is there any way to call a normal method from JavaScript? And the answer is No; show how we can call a code behind method from JavaScript,...
 By Jonathan King   On 08 Apr 2013  Viewed: 10,920
ASP.Net 4.5 new feature Model Binding
A nice feature with ASP.Net is the model binding, it reduced our code and effort to bind our well know controls like GridView, DataList, Repeater etc. So let’s see how we can bind our old controls in new and easy way. Let’s see how we bind the our grid before 4.5 1. We write the code to get...
 By Mike .Net   On 17 Jan 2013  Viewed: 2,699
Upload multiple image in multiple size with progress bar in asp.net
In asp.net there is not control to select multiple files and upload them once with progress bar, so we will use a small third party DLL to achieve this functionality. We will use Flajaxian FileUploader, you can download it from [http://www.flajaxian.com][1] We will create three different images...
 By Hamden   On 12 Jul 2012  Viewed: 5,870
Check/Uncheck all checkboxes in asp.net by javascript
I was searching for select/deselect all checkboxes code into a gridview. I found most of them only provide to select and deselet all the checkboxes if any of the checkbox is unselected into grid the main checkbox is not affecting. I further try to search some useful code but could not found any...', 1, N'b001', CAST(N'2019-10-22 16:22:46.873' AS DateTime), N'North', N'Readonly textbox postback issues and solutions
In many cases we need to use read only text box so user cannot edit the value but readonly textbox will lost its value after postback. Let’s say you have a read only text box to set date by using ajax calendar so after post back date will be lost, other case might be you are setting some value in...
 By Ali Adravi   On 24 Apr 2013  Viewed: 3,007
Call code behind method from JavaScript in asp.net
There are ways to call a web service method JavaScript, for more detail you can see [how to retrieve data from database using JavaScript in asp.net][1], but is there any way to call a normal method from JavaScript? And the answer is No; show how we can call a code behind method from JavaScript,...
 By Jonathan King   On 08 Apr 2013  Viewed: 10,920
ASP.Net 4.5 new feature Model Binding
A nice feature with ASP.Net is the model binding, it reduced our code and effort to bind our well know controls like GridView, DataList, Repeater etc. So let’s see how we can bind our old controls in new and easy way. Let’s see how we bind the our grid before 4.5 1. We write the code to get...
 By Mike .Net   On 17 Jan 2013  Viewed: 2,699
Upload multiple image in multiple size with progress bar in asp.net
In asp.net there is not control to select multiple files and upload them once with progress bar, so we will use a small third party DLL to achieve this functionality. We will use Flajaxian FileUploader, you can download it from [http://www.flajaxian.com][1] We will create three different images...
 By Hamden   On 12 Jul 2012  Viewed: 5,870
Check/Uncheck all checkboxes in asp.net by javascript
I was searching for select/deselect all checkboxes code into a gridview. I found most of them only provide to select and deselet all the checkboxes if any of the checkbox is unselected into grid the main checkbox is not affecting. I further try to search some useful code but could not found any...', N'N20191000003', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B217', N'ygg', 1, N'b001', CAST(N'2019-10-22 16:23:08.777' AS DateTime), N'West', N'gggg', N'W20191000001', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B224', N'ggg', 1, N'b001', CAST(N'2019-10-23 10:47:51.630' AS DateTime), N'North', N'ggg', N'N20191000004', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B558', N'hhh', 1, N'b001', CAST(N'2019-10-23 10:48:03.170' AS DateTime), N'North', N'hhh', N'N20191000005', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B217', N'nnnn', 1, N'b001', CAST(N'2019-10-23 10:48:12.957' AS DateTime), N'West', N'nnnn', N'W20191000002', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B233', N'jjj', 1, N'b001', CAST(N'2019-10-23 10:48:24.427' AS DateTime), N'North', N'jjjj', N'N20191000006', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B795', N'gghgh', 1, N'b001', CAST(N'2019-10-23 10:48:37.510' AS DateTime), N'West', N'hhhhh', N'W20191000003', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B845', N'hhh', 1, N'b001', CAST(N'2019-10-23 10:48:50.050' AS DateTime), N'North', N'hhhh', N'N20191000007', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B693', N'tr', 3, N'b001', CAST(N'2019-10-23 10:49:08.050' AS DateTime), N'North', N'yyyy', N'N20191000008', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B291', N'hhhh', 1, N'b001', CAST(N'2019-10-23 10:49:20.343' AS DateTime), N'North', N'hhhh', N'N20191000009', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B889', N'rgrettr', 1, N'b001', CAST(N'2019-10-23 10:49:31.987' AS DateTime), N'North', N'tttt', N'N20191000010', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B233', N'testing purpose', 1, N'b001', CAST(N'2019-10-23 12:12:17.370' AS DateTime), N'North', N'testing purpose', N'N20191000011', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B439', N'fff', 2, N'b001', CAST(N'2019-10-23 15:10:56.887' AS DateTime), N'North', N'fff', N'N20191000012', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B263', N'fffffffffffffffffffffffffffff', 3, N'b001', CAST(N'2019-10-23 15:45:05.857' AS DateTime), N'North', N'fvffffffffffffffffffffffffffffffffff', N'N20191000013', N'b001', CAST(N'2019-11-05 18:17:38.110' AS DateTime))
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'', N'MMMMM', 1, N'B001', CAST(N'2019-10-23 18:48:56.077' AS DateTime), N'', N'MMMMMMM', N'20191000001', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B217', N'Is the name assigned to the transaction. transaction_name must conform to the rules for identifiers, but identifiers longer than 32 characters are not allowed. Use transaction names only on the outermost pair of nested BEGIN...COMMIT or BEGIN...ROLLBACK statements. transaction_name is always case sensitive, even when the instance of SQL Server is not case sensitive.

@tran_name_variable
APPLIES TO: SQL Server (starting with 2008), Azure SQL Database

Is the name of a user-defined variable containing a valid transaction name. The variable must be declared with a char, varchar, nchar, or nvarchar data type. If more than 32 characters are passed to the variable, only the first 32 characters will be used; the remaining characters will be truncated.

WITH MARK [ ''description'' ]
APPLIES TO: SQL Server (starting with 2008), Azure SQL Database

Specifies that the transaction is marked in the log. description is a string that describes the mark. A description longer than 128 characters is truncated to 128 characters before being stored in the msdb.dbo.logmarkhistory table.

If WITH MARK is used, a transaction name must be specified. WITH MARK allows for restoring a transaction log to a named mark.', 1, N'b001', CAST(N'2019-11-08 11:39:36.453' AS DateTime), N'West', N'Is the name assigned to the transaction. transaction_name must conform to the rules for identifiers, but identifiers longer than 32 characters are not allowed. Use transaction names only on the outermost pair of nested BEGIN...COMMIT or BEGIN...ROLLBACK statements. transaction_name is always case sensitive, even when the instance of SQL Server is not case sensitive.

@tran_name_variable
APPLIES TO: SQL Server (starting with 2008), Azure SQL Database

Is the name of a user-defined variable containing a valid transaction name. The variable must be declared with a char, varchar, nchar, or nvarchar data type. If more than 32 characters are passed to the variable, only the first 32 characters will be used; the remaining characters will be truncated.

WITH MARK [ ''description'' ]
APPLIES TO: SQL Server (starting with 2008), Azure SQL Database

Specifies that the transaction is marked in the log. description is a string that describes the mark. A description longer than 128 characters is truncated to 128 characters before being stored in the msdb.dbo.logmarkhistory table.

If WITH MARK is used, a transaction name must be specified. WITH MARK allows for restoring a transaction log to a named mark.', N'W20191100001', N'b001', CAST(N'2019-11-08 11:55:50.010' AS DateTime))
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B558', N'cccc', 1, N'b001', CAST(N'2019-11-08 11:54:45.607' AS DateTime), N'North', N'cccc', N'N20191100004', NULL, NULL)
INSERT [dbo].[ReviewTable] ([EmployeeCode], [Remarks], [Status], [ActionBy], [ActionOn], [Region], [FeedbackRemark], [RequestNumber], [ModifiedBy], [ModifiedOn]) VALUES (N'B700', N'ggg', 1, N'b233', CAST(N'2019-11-11 18:51:10.137' AS DateTime), N'South', N'ggggg', N'N20191100007', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B001', N'123456', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B002', N'B002', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B003', N'B003', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B009', N'B009', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B010', N'B010', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B015', N'B015', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B016', N'B016', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B017', N'B017', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B030', N'B030', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B035', N'B035', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B036', N'B036', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B044', N'B044', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B057', N'B057', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B072', N'B072', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B095', N'B095', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B117', N'B117', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B128', N'B128', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B132', N'B132', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B138', N'12345', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B147', N'B147', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B166', N'B166', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B174', N'B174', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B185', N'12345', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B209', N'B209', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B212', N'B212', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B216', N'B216', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B217', N'B217', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B221', N'B221', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B224', N'B224', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B233', N'12345', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B238', N'B238', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B249', N'B249', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B255', N'B255', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B256', N'B256', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B257', N'B257', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B263', N'B263', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B267', N'B267', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B269', N'B269', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B279', N'B279', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B282', N'B282', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B283', N'B283', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B286', N'B286', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B291', N'B291', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B307', N'B307', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B312', N'B312', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B315', N'B315', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B318', N'B318', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B332', N'B332', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B338', N'B338', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B358', N'B358', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B361', N'B361', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B363', N'B363', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B376', N'B376', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B391', N'B391', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B397', N'B397', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B401', N'B401', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B413', N'B413', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B415', N'B415', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B417', N'B417', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B418', N'B418', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B422', N'B422', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B433', N'B433', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B437', N'B437', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B439', N'B439', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B452', N'B452', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B457', N'B457', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B458', N'B458', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B460', N'B460', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B474', N'B474', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B475', N'B475', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B480', N'B480', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B483', N'B483', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B486', N'B486', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B489', N'B489', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B491', N'B491', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B497', N'B497', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B498', N'B498', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B501', N'B501', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B504', N'B504', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B513', N'B513', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B527', N'B527', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B530', N'B530', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B532', N'B532', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B541', N'B541', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B546', N'B546', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B547', N'B547', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B548', N'B548', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B556', N'B556', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B558', N'B558', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B560', N'B560', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B563', N'B563', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B579', N'B579', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B580', N'B580', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B585', N'B585', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B588', N'B588', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B592', N'B592', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B597', N'B597', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B604', N'B604', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B613', N'B613', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B631', N'B631', NULL, NULL)
GO
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B634', N'12345', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B635', N'B635', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B636', N'B636', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B639', N'B639', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B641', N'B641', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B643', N'B643', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B645', N'B645', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B649', N'B649', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B651', N'B651', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B660', N'B660', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B666', N'B666', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B667', N'B667', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B668', N'B668', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B672', N'B672', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B673', N'B673', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B676', N'B676', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B681', N'B681', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B686', N'B686', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B689', N'B689', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B691', N'B691', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B692', N'B692', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B693', N'B693', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B698', N'B698', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B700', N'B700', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B702', N'B702', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B704', N'B704', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B709', N'B709', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B714', N'B714', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B716', N'B716', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B719', N'B719', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B724', N'B724', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B725', N'B725', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B728', N'B728', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B736', N'B736', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B737', N'B737', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B739', N'B739', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B742', N'B742', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B745', N'B745', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B746', N'B746', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B750', N'B750', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B753', N'B753', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B755', N'B755', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B758', N'B758', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B761', N'B761', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B762', N'B762', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B764', N'B764', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B766', N'B766', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B767', N'B767', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B768', N'B768', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B770', N'B770', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B771', N'B771', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B775', N'B775', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B777', N'B777', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B778', N'B778', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B779', N'B779', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B780', N'B780', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B781', N'B781', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B783', N'B783', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B784', N'B784', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B790', N'B790', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B791', N'B791', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B792', N'12345', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B794', N'B794', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B795', N'B795', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B797', N'B797', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B798', N'B798', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B800', N'B800', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B803', N'B803', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B806', N'B806', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B807', N'B807', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B813', N'B813', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B815', N'B815', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B817', N'B817', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B818', N'B818', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B819', N'B819', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B820', N'B820', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B821', N'B821', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B823', N'B823', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B824', N'B824', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B825', N'B825', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B827', N'B827', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B829', N'B829', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B831', N'B831', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B832', N'B832', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B833', N'B833', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B834', N'B834', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B835', N'B835', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B836', N'B836', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B837', N'B837', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B838', N'B838', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B840', N'B840', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B841', N'B841', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B842', N'B842', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B843', N'B843', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B844', N'B844', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B845', N'B845', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B846', N'B846', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B847', N'B847', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B848', N'B848', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B849', N'B849', NULL, NULL)
GO
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B850', N'B850', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B852', N'B852', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B853', N'B853', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B854', N'B854', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B855', N'B855', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B856', N'B856', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B858', N'B858', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B859', N'B859', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B860', N'B860', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B861', N'B861', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B862', N'B862', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B863', N'B863', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B864', N'B864', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B866', N'B866', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B868', N'B868', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B869', N'B869', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B870', N'B870', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B872', N'B872', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B873', N'B873', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B874', N'B874', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B875', N'B875', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B876', N'B876', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B878', N'B878', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B879', N'B879', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B880', N'B880', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B881', N'B881', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B882', N'B882', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B883', N'B883', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B884', N'B884', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B885', N'B885', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B886', N'B886', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B887', N'B887', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B888', N'B888', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B889', N'B889', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B890', N'B890', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B891', N'B891', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B892', N'B892', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B893', N'B893', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B894', N'B894', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B896', N'B896', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B897', N'B897', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B898', N'B898', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B899', N'B899', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B900', N'B900', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B901', N'B901', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B902', N'B902', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B903', N'B903', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B904', N'B904', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B905', N'B905', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B906', N'B906', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B907', N'B907', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B908', N'B908', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B909', N'B909', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B910', N'B910', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B911', N'B911', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B912', N'B912', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B913', N'B913', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B914', N'B914', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B915', N'B915', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B916', N'B916', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B917', N'B917', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B918', N'B918', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B919', N'B919', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B920', N'B920', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B921', N'B921', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B922', N'B922', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B923', N'B923', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B924', N'B924', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'DIR1', N'DIR1', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'DIR2', N'DIR2', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'C014', N'C014', NULL, NULL)
INSERT [dbo].[UserTable] ([UserId], [Password], [UpdateDatedBy], [UpdatedOn]) VALUES (N'B085', N'B085', NULL, NULL)
/****** Object:  StoredProcedure [dbo].[ud_mRunningSerialNo]    Script Date: 26-Nov-19 7:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ud_mRunningSerialNo] 
@SiteID varchar(10),
@PrintQty int,
@TransType varchar(50),
@LineNo varchar(10)='0',
@MonthWise bit=0,
@Output varchar(20)=null output
As
Begin
	Declare @MaxSerialNo varchar(20),@Year varchar(10),@Month varchar(10)
	Declare @Cnt int;
	set @Year=DATEPART(yyyy,GETDATE())
	set @Month=DATEPART(mm,GETDATE())

	if(@LineNo='0' And @MonthWise=0)
		Begin
			set @Year=0
			set @Month=0
			Select @MaxSerialNo=ISNULL(MAX(SerialNo),0)+1 from mRunningSerialNo where SiteID=@SiteID and TransType=@TransType
		End
	Else if(@LineNo='0' And @MonthWise=1)
		Begin
			Select @MaxSerialNo=ISNULL(MAX(SerialNo),0)+1 from mRunningSerialNo
			where SiteID=@SiteID and TransType=@TransType and MonthWise=@MonthWise and [Year]=@Year and [Month]=@Month 
		End
	Else
		Select @MaxSerialNo=ISNULL(MAX(SerialNo),0)+1 from mRunningSerialNo
		where SiteID=@SiteID and TransType=@TransType and [LineNo]=@LineNo and [Year]=@Year and [Month]=@Month
	if(@MaxSerialNo=1)
		Begin
			if(@LineNo='0' And @MonthWise=0)
				Insert into mRunningSerialNo(SiteID,SerialNo,TransType) values(@SiteID,@PrintQty,@TransType)
			Else 
				Insert into mRunningSerialNo(SiteID,SerialNo,TransType,[LineNo],[Year],[Month],MonthWise) values(@SiteID,@PrintQty,@TransType,@LineNo,@Year,@Month,@MonthWise)
		End
	Else
		Begin
			if(@LineNo='0' And @MonthWise=0)
				Update mRunningSerialNo set SerialNo=SerialNo+@PrintQty where SiteID=@SiteID and TransType=@TransType
			Else if(@LineNo='0' And @MonthWise=1)
				Update mRunningSerialNo set SerialNo=SerialNo+@PrintQty 
				where SiteID=@SiteID and TransType=@TransType and MonthWise=@MonthWise and [Year]=@Year and [Month]=@Month
			Else 
				Update mRunningSerialNo set SerialNo=SerialNo+@PrintQty 
				where SiteID=@SiteID and TransType=@TransType and [LineNo]=@LineNo and [Year]=@Year and [Month]=@Month
		End
		if(@Month=0)
			Set @Output=@MaxSerialNo
		--else if(@TransType='MASTERCARTON')
		--	set @Output=@Year + RIGHT('0' + @Month, 2) + RIGHT('00000' + @MaxSerialNo, 6)
		--else if(@TransType='CYCLECOUNT')
		--	set @Output=@Year + RIGHT('0' + @Month, 2) + RIGHT('00000' + @MaxSerialNo, 6)
		else 
			set @Output=@Year + RIGHT('0' + @Month, 2) + RIGHT('000000' + @MaxSerialNo, 5)
	--Select @MaxSerialNo
End


















GO
/****** Object:  StoredProcedure [dbo].[USP_Employee]    Script Date: 26-Nov-19 7:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE Procedure  [dbo].[USP_Employee]
 @Type VARCHAR(50) 
,@EmployeeCode VARCHAR(20) =NULL
,@FirstName  VARCHAR(50) =NULL
,@Designation VARCHAR(50) =NULL
,@Department VARCHAR(50) =NULL
,@SubDepartment VARCHAR(50) =NULL
,@Branch VARCHAR(50)=NULL
,@SubBranch VARCHAR(50)=NULL
,@DateofJoining Datetime=NULL
,@EmailAddress VARCHAR(50)=NULL
,@ReportingManager VARCHAR(50) =NULL
,@FunctionalManager VARCHAR(50)=NULL
,@ReportingTo VARCHAR(20) =NULL
,@ActionBy VARCHAR(20) =NULL
,@ActionOn DATETIME =NULL
AS 
BEGIN 

IF @Type ='CHECK_EMPLOYEE'
BEGIN 

declare @status bit =0 ;
if Exists ( SELECT 'X' from Employee where EmployeeCode =@EmployeeCode)
BEGIN 
set @status=1 ;
END 
 SELECT @status ;
END 


ELSE  IF @Type = 'SAVE_EMPLOYEE'
BEGIN 

DECLARE @SlNo INT =0 ;
SET @SlNo = (SELECT MAX(SlNo) from Employee );
INSERT INTO [dbo].[Employee]
           ([SlNo]
            ,[EmployeeCode]
           ,[FirstName]
           ,[Designation]
           ,[Department]
           ,[SubDepartment]
           ,[Branch]
           ,[SubBranch]
           ,[DateofJoining]
           ,[EmailAddress]
           ,[ReportingManager]
           ,[FunctionalManager]
           ,[ReportingTo]
		   ,CreatedBy,CreatedOn
		   )
     VALUES
           (@SlNo 
           ,@EmployeeCode
           ,@FirstName
           ,@Designation
           ,@Department
           ,@SubDepartment
           ,@Branch
           ,@SubBranch
           ,@DateofJoining
           ,@EmailAddress
           ,@ReportingManager
           ,@FunctionalManager
           ,@ReportingTo 
		   ,@ActionBy , @ActionOn
		   );


END 

ELSE IF @Type ='UPDATE_EMPLOYEE'
BEGIN 
UPDATE [dbo].[Employee]
   SET 
      [FirstName] = @FirstName
      ,[Designation] = @Designation
      ,[Department] =  @Department
      ,[SubDepartment] = @SubDepartment
      ,[Branch] = @Branch
      ,[SubBranch] = @SubBranch
      ,[DateofJoining] = @DateofJoining
      ,[EmailAddress] = @EmailAddress
      ,[ReportingManager] = @ReportingManager
      ,[FunctionalManager] = @FunctionalManager
      ,[ReportingTo] = @ReportingTo
 WHERE  [EmployeeCode] = @EmployeeCode

END 


ELSE IF @Type ='GET_ALLEMPLOYEE'
BEGIN 
SELECT [SlNo]
      ,[EmployeeCode]
      ,[FirstName]
      ,[Designation]
      ,[Department]
      ,[SubDepartment]
      ,[Branch]
      ,[SubBranch]
      ,[DateofJoining]
      ,[EmailAddress]
      ,[ReportingManager]
      ,[FunctionalManager]
      ,[ReportingTo]
	  ,CreatedBy
	  ,CreatedOn
	  ,ModifyBy
	  ,ModifyOn
	  
  FROM [Employee]

END 

END 

GO
/****** Object:  StoredProcedure [dbo].[USP_GetEmployeeDetails]    Script Date: 26-Nov-19 7:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  Procedure [dbo].[USP_GetEmployeeDetails]
 @EmployeeCode VARCHAR(50)=NULL
,@Region VARCHAR(20)=NULL
,@Type VARCHAR(20) 
AS 
BEGIN 

	IF @Type ='GETREGION'
	BEGIN 
	SELECT Distinct Branch as [Region]  FROM Employee  
		WHERE UPPER((SUBSTRING(ReportingManager,0, CHARINDEX('-',ReportingManager))))= UPPER(@EmployeeCode)
		RETURN ;
	END 
		IF @Type = 'GETEMPLOYEE'
		BEGIN 
		SELECT EmployeeCode  , FirstName as [Name] FROM Employee  
		WHERE UPPER((SUBSTRING(ReportingManager,0, CHARINDEX('-',ReportingManager))))= UPPER(@EmployeeCode)
		 AND  (ISNULL(@Region,'') ='' OR Branch =@Region) ;
		 RETURN ;
		END 

		IF @Type = 'GETSUBEMPLOYEE'
		BEGIN 
		SELECT EmployeeCode  , FirstName as [Name] FROM Employee  
		WHERE UPPER((SUBSTRING(ReportingManager,0, CHARINDEX('-',ReportingManager))))= UPPER(@EmployeeCode)
		 --AND  (ISNULL(@Region,'') ='' OR Branch =@Region) ;
		 RETURN ;
		END 

		if @Type ='GETEMPLOYEEDETAILS'
		BEGIN 

		
		SELECT   
 SlNo
,EmployeeCode
,FirstName
,Designation
,Department
,SubDepartment
,Branch
,SubBranch
,DateofJoining
,EmailAddress
,ReportingManager
,FunctionalManager
		 FROM Employee  WHERE EmployeeCode = @EmployeeCode ;

		END 

		IF @Type ='GETREVIEWDETAILS'
		BEGIN 

		DECLARE @TotalFirstLevel int =0 ;
		DECLARE @TotalPendingFirstLevel int= 0 ;
		DECLARE @TotalCompleteFirstLevel int= 0 ;

		DECLARE @TotalSecondLevel int =0 ;
		DECLARE @TotalPendingSecondLevel int= 0 ;
		DECLARE @TotalCompleteSecondLevel int= 0 ;

 SET @TotalFirstLevel =(SELECT Count(EmployeeCode) AS [TotalFirstLevel] from Employee WHERE ReportingTo =@EmployeeCode );

SET @TotalSecondLevel =(SELECT Count(*) AS TotalSecondLevel FROM Employee T INNER JOIN Employee T1 on T.ReportingTo = T1.EmployeeCode 
WHERE T1.ReportingTo = @EmployeeCode) ;


 ;WITH FirstLevel AS
(
SELECT EmployeeCode  from Employee WHERE ReportingTo =@EmployeeCode 
)
, X AS (
SELECT  Distinct EmployeeCode as [EmployeeCode]  From ReviewTable T 
WHERE COALESCE(T.ModifiedBy , T.ActionBY)=@EmployeeCode  
 AND ISNULL(T.EmployeeCode ,'') !=''
 ) 
   SELECT @TotalCompleteFirstLevel = Count(*)  from x  INNER join FirstLevel on x.EmployeeCode = FirstLevel.EmployeeCode;

  ; WITH X AS (
SELECT  Distinct EmployeeCode as [EmployeeCode]  From ReviewTable T 
WHERE COALESCE(T.ModifiedBy , T.ActionBY)=@EmployeeCode  
 AND ISNULL(T.EmployeeCode ,'') !=''
 )
 , 
  Secondlevel
  AS 
  (SELECT T.EmployeeCode FROM Employee T INNER JOIN Employee T1 on T.ReportingTo = T1.EmployeeCode 
WHERE T1.ReportingTo = @EmployeeCode)

  SELECT @TotalCompleteSecondLevel = Count(*)  from x  INNER join Secondlevel on x.EmployeeCode = Secondlevel.EmployeeCode;



  SET @TotalPendingFirstLevel = @TotalFirstLevel -@TotalCompleteFirstLevel ;
  SET @TotalPendingSecondLevel = @TotalSecondLevel - @TotalCompleteSecondLevel ;

  SELECT @TotalFirstLevel as[ToalFirstLevel] , @TotalPendingFirstLevel as[TotalPendingFirstLevel] , @TotalCompleteFirstLevel  as[TotalCompleteFirstLevel]
        , @TotalSecondLevel as[TotalSecondLevel] , @TotalPendingSecondLevel as[TotalPendingSecondLevel] , @TotalCompleteSecondLevel AS[TotalCompleteSecondLevel]



		END 

END 


GO
/****** Object:  StoredProcedure [dbo].[USP_ReviewEmployee]    Script Date: 26-Nov-19 7:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[USP_ReviewEmployee]
 @EmployeeCode VARCHAR(100)=NULL
,@ManagerCode VARCHAR(100)=NULL
,@Remarks VARCHAR(max)=NULL
,@Status int =NULL
,@Region VARCHAR(100)=NULL
,@FeedbackRemarks VARCHAR(max)= null
,@ActionOn DateTime=NULL
AS 
BEGIN 

DEclare @RunningSerialNO VARCHAR(100)='' ;
EXEC Ud_mrunningserialno  @Region,  1,  'Skip Level Request', 0,  1,  @RunningSerialNO output; 
   
SET @RunningSerialNO = RTRIM(LTRIM(CONCAT(ISNULL(substring(@Region,1,1),''),@RunningSerialNO)));

 SET @Region = (SELECT  Branch from Employee WHERE EmployeeCode = @EmployeeCode)
insert into ReviewTable (RequestNumber,EmployeeCode,Region ,Remarks,FeedbackRemark ,Status , ActionBy , ActionOn)
VALUES(@RunningSerialNO,@EmployeeCode, @Region , @Remarks ,@FeedbackRemarks ,@Status,@ManagerCode,@ActionOn);

SELECT  @RunningSerialNO ;

END 


GO
/****** Object:  StoredProcedure [dbo].[USP_ReviewModifyEmployee]    Script Date: 26-Nov-19 7:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  Procedure [dbo].[USP_ReviewModifyEmployee]
 @EmployeeCode VARCHAR(100)=NULL
,@ManagerCode VARCHAR(100)=NULL
,@Remarks VARCHAR(max)=NULL
,@Status int =NULL
,@Region VARCHAR(100)=NULL
,@FeedbackRemarks VARCHAR(max)= null
,@ActionOn DateTime=NULL
,@RequestNumber VARCHAR(50)
AS 
BEGIN 

 UPDATE  ReviewTable SET 
 Remarks =@Remarks , FeedbackRemark = @FeedbackRemarks , Status =@Status , ModifiedBy =@ManagerCode, ModifiedOn =@ActionOn
 WHERE RequestNumber = @RequestNumber  ;
END 


GO
/****** Object:  StoredProcedure [dbo].[USP_UserAccount]    Script Date: 26-Nov-19 7:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[USP_UserAccount]
@UserId VARCHAR(20) =NULL,
@Password VARCHAR(50) =NULL,
@OldPassword  VARCHAR(50)=NULL,
@Type VARCHAR(50)
AS 
BEGIN 

DECLARE @Result VARCHAR(200) ='' ;

IF @Type ='LOGIN'
BEGIN  

if not exists ( SELECT 'X' FROM USERTable WHERE UPPER(USERID) = UPPER(@UserId) AND [Password] = @Password )
BEGIN 
SET @Result = 'FAIL~Invalid credentials !!!' ;
SELECT @Result ;
return ;
END 
ELSE
BEGIN 
		if @UserId = @Password
		BEGIN 
		SET @Result = 'FAIL~Please update your password !!!' ;
		SELECT @Result ;
		return ;
		END 
		ELSE 
		BEGIN  
		SET @Result = 'SUCCESS~Login Successfully.' ;
		SELECT @Result ;
		return ;
		END
END 

END 


IF @Type ='UPDATEPASSWORD'
BEGIN 

		if Exists( SELECT 'X' FROM UserTable WHERE UPPER(UserId) =UPPER(@UserId))
		BEGIN 

		IF EXISTS (SELECT 'X' FROM UserTable WHERE UPPER(UserId) =UPPER(@UserId) AND [Password] =@OldPassword)
		BEGIN 
					 if (UPPER(@UserId) = UPPER(@Password)) 
									BEGIN 
						SET @Result ='FAIL~UserId and password can not be same !!!';
						SELECT @Result ;
						RETURN ;
				END
				 
					ELSE 
										BEGIN 
						UPDATE UserTable  SET [Password] =@Password WHERE UPPER(UserId)=UPPER(@UserId) ;
						SET @Result = 'SUCCESS~Password reset successfully !!!';
						SELECT @Result ;
						return ;
				END 

		END 
				
				ELSE 
				BEGIN 
						SET @Result ='FAIL~Invalid old password !!!';
										SELECT @Result ;
										return ;
				END 
				
				END 
						ELSE 
						BEGIN  
										SET @Result ='FAIL~Invalid userid !!!';
										SELECT @Result ;
										return ;
						END 
END 


END

GO
/****** Object:  StoredProcedure [dbo].[USP_ViewEmployee]    Script Date: 26-Nov-19 7:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE  [dbo].[USP_ViewEmployee]
AS BEGIN  
DECLARE @EmployeeCode VARCHAR(20) ='B783';
DECLARE @Region VARCHAR(20) ='';
DECLARE @Reporting VARCHAR(20)='';
DECLARE @Department VARCHAR(20) ='Software';

SELECT * FROM Employee  T WHERE  
( ISNULL(@EmployeeCode,'') =  '' OR ((T.[EmployeeCode] = @EmployeeCode) OR T.FirstName like(@EmployeeCode+'%')) )
AND (@Region ='' OR @Region =T.Branch) 
AND (@Reporting ='' OR T.ReportingTo =@Reporting)
AND (@Department ='' OR T.Department =@Department)


END 
GO
/****** Object:  StoredProcedure [dbo].[USP_ViewRequest]    Script Date: 26-Nov-19 7:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--EXEC [USP_ViewRequest]  @StartRowIndex=2,@RequestedBy='b001'

CREATE Proc [dbo].[USP_ViewRequest]
 @Region VARCHAR(50)=''
,@RequestNumber VARCHAR(50)=''
,@Status int=0
,@EmployeeCode VARCHAR(50)=''
,@CreatedFrom DateTime=NULL
,@CreatedTo DateTime =NULL
,@RequestedBy varchar(50)=''
, @StartRowIndex INT =0
, @MaximumRows INT =10	

AS BEGIN 

IF ISNULL(@EmployeeCode,'') !='' and ISNULL(@EmployeeCode,'0') !='0'
BEGIN
SET @Region = (SELECT  Branch  from Employee WHERE EmployeeCode = @EmployeeCode ); 
END 

; With X AS 
(
SELECT 
ROW_NUMBER() over(order by (SELECT 1)) AS [Sno]
,T.RequestNumber
 from ReviewTable T WHERE 
     (@EmployeeCode ='' OR  @EmployeeCode ='0' OR T.EmployeeCode =@EmployeeCode)
 AND (@Region ='' OR @Region ='0' OR T.Region =@Region)
 AND (@RequestNumber='' OR T.RequestNumber = @RequestNumber)
 AND (@Status=0 OR T.[Status] =@Status)
 AND (@RequestedBy ='' OR T.ActionBy =@RequestedBy)
 AND ((@CreatedFrom is null AND @CreatedTo is null ) OR Coalesce(ModifiedOn,ActionOn) BETWEEN @CreatedFrom AND @CreatedTo)
 )
 SELECT  
  
 X.sno 
 ,T.RequestNumber
,T.EmployeeCode
,T1.FirstName
,T.Remarks
,T.FeedbackRemark
,T.Region
,T.ActionBy
,T.ActionOn
,T.[Status]
  from X INNER JOIN ReviewTable T on T.RequestNumber = X.RequestNumber 
   Inner join Employee T1 on T.EmployeeCode = T1.EmployeeCode 
 WHERE X.Sno between (@startRowIndex * @MaximumRows)+1 AND ((@startRowIndex * @MaximumRows)+ (@MaximumRows))
  --Order by CAST( Coalesce(T.ModifiedOn ,T.ActionOn) AS DATE) DESC 
END 


GO
/****** Object:  StoredProcedure [dbo].[USP_ViewRequest_BKP_11NOV2019]    Script Date: 26-Nov-19 7:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--EXEC [USP_ViewRequest]  @StartRowIndex=2,@RequestedBy='b001'

CREATE Proc [dbo].[USP_ViewRequest_BKP_11NOV2019]
 @Region VARCHAR(50)=''
,@RequestNumber VARCHAR(50)=''
,@Status int=0
,@EmployeeCode VARCHAR(50)=''
,@CreatedFrom DateTime=NULL
,@CreatedTo DateTime =NULL
,@RequestedBy varchar(50)=''
, @StartRowIndex INT =0
, @MaximumRows INT =10	

AS BEGIN 

; With X AS 
(
SELECT 
ROW_NUMBER() over(order by (SELECT 1)) AS [Sno]
,T.RequestNumber
 from ReviewTable T WHERE 
     (@EmployeeCode ='' OR  @EmployeeCode ='0' OR T.EmployeeCode =@EmployeeCode)
 AND (@Region ='' OR @Region ='0' OR T.Region =@Region)
 AND (@RequestNumber='' OR T.RequestNumber = @RequestNumber)
 AND (@Status=0 OR T.[Status] =@Status)
 AND (@RequestedBy ='' OR T.ActionBy =@RequestedBy)
 AND ((@CreatedFrom is null AND @CreatedTo is null ) OR Coalesce(ModifiedOn,ActionOn) BETWEEN @CreatedFrom AND @CreatedTo)
 )
 SELECT  
  
 X.sno 
 ,T.RequestNumber
,T.EmployeeCode
,T1.FirstName
,T.Remarks
,T.FeedbackRemark
,T.Region
,T.ActionBy
,T.ActionOn
,T.[Status]
  from X INNER JOIN ReviewTable T on T.RequestNumber = X.RequestNumber 
   Inner join Employee T1 on T.EmployeeCode = T1.EmployeeCode 
 WHERE X.Sno between (@startRowIndex * @MaximumRows)+1 AND ((@startRowIndex * @MaximumRows)+ (@MaximumRows))
  --Order by CAST( Coalesce(T.ModifiedOn ,T.ActionOn) AS DATE) DESC 
END 


GO
/****** Object:  StoredProcedure [dbo].[USP_ViewRequestCount]    Script Date: 26-Nov-19 7:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE Proc [dbo].[USP_ViewRequestCount]
 @Region VARCHAR(50)=''
,@RequestNumber VARCHAR(50)=''
,@Status int=0
,@EmployeeCode VARCHAR(50)=''
,@CreatedFrom DateTime=NULL
,@CreatedTo DateTime =NULL
,@RequestedBy varchar(50)=''


AS BEGIN 

IF ISNULL(@EmployeeCode,'') !='' AND ISNULL(@EmployeeCode,'0') !='0'
BEGIN
SET @Region = (SELECT  Branch  from Employee WHERE EmployeeCode = @EmployeeCode ); 
END 

SELECT 
Count(*)  AS [TotalRecord] 
 from ReviewTable T
 Inner join Employee T1 on T.EmployeeCode = T1.EmployeeCode 
  WHERE 
    (@EmployeeCode ='' OR  @EmployeeCode ='0' OR T.EmployeeCode =@EmployeeCode)
 AND (@Region ='' OR @Region ='0' OR T.Region =@Region)
 AND (@RequestNumber='' OR T.RequestNumber = @RequestNumber)
 AND (@Status=0 OR T.[Status] =@Status)
 AND (@RequestedBy ='' OR T.ActionBy =@RequestedBy)
 AND ((@CreatedFrom is null AND @CreatedTo is null ) OR Coalesce(ModifiedOn,ActionOn) BETWEEN @CreatedFrom AND @CreatedTo)

END 
GO
/****** Object:  StoredProcedure [dbo].[USP_ViewRequestCount_BKP_11NOV2019]    Script Date: 26-Nov-19 7:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec [USP_ViewRequestCount]  @RequestedBy='b001'
CREATE Proc [dbo].[USP_ViewRequestCount_BKP_11NOV2019]
 @Region VARCHAR(50)=''
,@RequestNumber VARCHAR(50)=''
,@Status int=0
,@EmployeeCode VARCHAR(50)=''
,@CreatedFrom DateTime=NULL
,@CreatedTo DateTime =NULL
,@RequestedBy varchar(50)=''


AS BEGIN 

SELECT 
Count(*)  AS [TotalRecord] 
 from ReviewTable T
 Inner join Employee T1 on T.EmployeeCode = T1.EmployeeCode 
  WHERE 
    (@EmployeeCode ='' OR  @EmployeeCode ='0' OR T.EmployeeCode =@EmployeeCode)
 AND (@Region ='' OR @Region ='0' OR T.Region =@Region)
 AND (@RequestNumber='' OR T.RequestNumber = @RequestNumber)
 AND (@Status=0 OR T.[Status] =@Status)
 AND (@RequestedBy ='' OR T.ActionBy =@RequestedBy)
 AND ((@CreatedFrom is null AND @CreatedTo is null ) OR Coalesce(ModifiedOn,ActionOn) BETWEEN @CreatedFrom AND @CreatedTo)

END 
GO
/****** Object:  StoredProcedure [dbo].[USP_ViewRequestModification]    Script Date: 26-Nov-19 7:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USP_ViewRequestModification]
@RequestNumber VARCHAR(50)
,@ActionBy VARCHAR(10)
AS 
BEGIN   
 SELECT 
  T.RequestNumber
, T.EmployeeCode
, T1.FirstName
, T1.Department
,T1.Designation
,T1.DateofJoining
,T1.ReportingManager as[ReportingTo]
,T.Remarks
,T.Region
,T.FeedbackRemark
,T.Status
,T2.EmployeeCode+'-'+T2.FirstName as [ActionBy] --COALESCE(T.ModifiedBy, T.ActionBy) AS[ActionBy]
,COALESCE(T.ModifiedOn, T.ActionOn) AS[ActionOn]
 FROM ReviewTable T  Inner JOIN  Employee T1 
 ON T.EmployeeCode = T1.EmployeeCode
 Inner join Employee T2 ON T2.EmployeeCode = (COALESCE(T.ModifiedBy, T.ActionBy))
 WHERE T.RequestNumber = @RequestNumber AND COALESCE(T.ModifiedBy, T.ActionBy) =@ActionBy ;

 END
GO
USE [master]
GO
ALTER DATABASE [ERP_DEV] SET  READ_WRITE 
GO
