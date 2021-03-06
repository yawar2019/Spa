USE [master]
GO
/****** Object:  Database [SaloonManagement]    Script Date: 25/03/2021 08:57:28 ******/
CREATE DATABASE [SaloonManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SaloonManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SaloonManagement.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SaloonManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SaloonManagement_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SaloonManagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SaloonManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SaloonManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SaloonManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SaloonManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SaloonManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SaloonManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [SaloonManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SaloonManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SaloonManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SaloonManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SaloonManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SaloonManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SaloonManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SaloonManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SaloonManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SaloonManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SaloonManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SaloonManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SaloonManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SaloonManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SaloonManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SaloonManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SaloonManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SaloonManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SaloonManagement] SET  MULTI_USER 
GO
ALTER DATABASE [SaloonManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SaloonManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SaloonManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SaloonManagement] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SaloonManagement] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SaloonManagement]
GO
/****** Object:  Table [dbo].[Degree]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Degree](
	[DegreeId] [int] IDENTITY(1,1) NOT NULL,
	[DegreeName] [varchar](100) NULL,
	[Description] [varchar](max) NULL,
	[CreatedBy] [int] NULL,
	[UpdatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Degree] PRIMARY KEY CLUSTERED 
(
	[DegreeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [varchar](20) NULL,
	[EmployeeName] [varchar](20) NULL,
	[DepartmentId] [int] NULL,
	[Emailid] [varchar](50) NULL,
	[Mobileno] [varchar](20) NULL,
	[Adress] [varchar](max) NULL,
	[Gender] [varchar](10) NULL,
	[DateOfJoining] [datetime] NULL,
	[DtaeOfReleiving] [datetime] NULL,
	[State] [varchar](50) NULL,
	[Salary] [decimal](18, 3) NULL,
	[DegreeId] [int] NULL,
	[SpecializationId] [int] NULL,
	[Photo] [varchar](max) NULL,
	[Experience] [varchar](20) NULL,
	[Fee] [decimal](18, 3) NULL,
	[Createdby] [int] NULL,
	[Createdon] [datetime] NULL,
	[Updatedby] [int] NULL,
	[Updatedon] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmployeeShift]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeShift](
	[EmployeeShiftId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [int] NULL,
	[ShiftId] [int] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_EmployeeShift] PRIMARY KEY CLUSTERED 
(
	[EmployeeShiftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeShift_old]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EmployeShift_old](
	[EmployeeShiftId] [int] NOT NULL,
	[EmployeeId] [int] NULL,
	[date] [datetime] NULL,
	[ShiftId] [varchar](100) NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdateOn] [datetime] NULL,
 CONSTRAINT [PK_EmployeShift_1] PRIMARY KEY CLUSTERED 
(
	[EmployeeShiftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ShiftTable]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShiftTable](
	[ShiftId] [int] IDENTITY(1,1) NOT NULL,
	[ShiftName] [varchar](50) NULL,
 CONSTRAINT [PK_ShiftTable] PRIMARY KEY CLUSTERED 
(
	[ShiftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Specilizations]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Specilizations](
	[SpecilizationId] [int] IDENTITY(1,1) NOT NULL,
	[SpecilizationName] [varchar](100) NULL,
	[DegreeId] [int] NULL,
	[CreatedBy] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [int] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Specilizations] PRIMARY KEY CLUSTERED 
(
	[SpecilizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Treatments]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Treatments](
	[TreatmentId] [int] IDENTITY(1,1) NOT NULL,
	[TreatmentName] [varchar](50) NULL,
	[Price] [decimal](18, 3) NULL,
	[Createdby] [int] NULL,
	[Createdon] [datetime] NULL,
	[Updatedby] [int] NULL,
	[Updatedon] [datetime] NULL,
 CONSTRAINT [PK_Treatments] PRIMARY KEY CLUSTERED 
(
	[TreatmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[createTreatmentDetails]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[createTreatmentDetails]
@TreatmentName varchar(50),
@Price decimal(18,3),
@Createdby int,
@Createdon datetime,
@Updatedby int,
@Updatedon datetime
As Begin 
Insert Treatments values(@TreatmentName, @Price,@Createdby,
		@Createdon,@Updatedby,@Updatedon)
End

GO
/****** Object:  StoredProcedure [dbo].[getEmployee]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[getEmployee]
as
begin
select *  from Employees 
end     

GO
/****** Object:  StoredProcedure [dbo].[getTreatmentdetails]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[getTreatmentdetails]
As Begin 
Select TreatmentId ,TreatmentName, Price,Createdby,
		Createdon,Updatedby,Updatedon from Treatments
End

GO
/****** Object:  StoredProcedure [dbo].[getTreatmentdetailsById]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[getTreatmentdetailsById]
@id int
As Begin 
Select TreatmentId ,TreatmentName, Price,Createdby,
		Createdon,Updatedby,Updatedon from Treatments where TreatmentId=@id
End

GO
/****** Object:  StoredProcedure [dbo].[spr_GetDegree]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spr_GetDegree]
  as
  begin
SELECT TOP 1000 [DegreeId]
      ,[DegreeName]
      ,[Description]
      ,[CreatedBy]
      ,[UpdatedBy]
      ,[CreatedOn]
      ,[UpdatedOn]
  FROM [SaloonManagement].[dbo].[Degree]
  end

GO
/****** Object:  StoredProcedure [dbo].[spr_GetDegreeById]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spr_GetDegreeById]
@DegreeId int
  as
  begin
SELECT TOP 1000 [DegreeId]
      ,[DegreeName]
      ,[Description]
      ,[CreatedBy]
      ,[UpdatedBy]
      ,[CreatedOn]
      ,[UpdatedOn]
  FROM [SaloonManagement].[dbo].[Degree] where DegreeId=@DegreeId
  end

GO
/****** Object:  StoredProcedure [dbo].[spr_GetEmployeShift]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spr_GetEmployeShift]
as 
begin
SELECT TOP 1000 [EmployeeId]
      ,[date]
      ,[ShiftId]
  FROM [SaloonManagement].[dbo].[EmployeShift]
  end

GO
/****** Object:  StoredProcedure [dbo].[spr_GetShiftDetails]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spr_GetShiftDetails]
AS
BEGIN

  SELECT  [ShiftId]
      ,[ShiftName]
   FROM [SaloonManagement].[dbo].[ShiftTable]

END

GO
/****** Object:  StoredProcedure [dbo].[spr_GetSpacilizationById]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE PROCEDURE [dbo].[spr_GetSpacilizationById]
@SpecilizationId int
AS
BEGIN
SELECT [SpecilizationId]
      ,[SpecilizationName]
      ,[DegreeId]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[UpdatedBy]
      ,[UpdatedOn]
  FROM [SaloonManagement].[dbo].[Specilizations] WHERE [SpecilizationId]=@SpecilizationId

  END

GO
/****** Object:  StoredProcedure [dbo].[spr_GetSpacilizations]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spr_GetSpacilizations]
AS
BEGIN
SELECT [SpecilizationId]
      ,[SpecilizationName]
      ,[DegreeId]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[UpdatedBy]
      ,[UpdatedOn]
  FROM [SaloonManagement].[dbo].[Specilizations]

  END

GO
/****** Object:  StoredProcedure [dbo].[spr_insertDegree]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
CREATE PROCEDURE [dbo].[spr_insertDegree]
@DegreeName varchar(100),
@Description varchar(MAX),
@CreatedBy int,
@UbdatedBy int,
@CreatedOn datetime,
@UpdatedOn datetime

AS

BEGIN
insert into Degree values(@DegreeName,@Description,
@CreatedBy ,
@UbdatedBy ,
@CreatedOn ,
@UPdatedOn
)
   select @@IDENTITY as int

END

GO
/****** Object:  StoredProcedure [dbo].[spr_insertEmployeShift]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create procedure [dbo].[spr_insertEmployeShift]
@date datetime,
@ShiftId varchar(100)

as 
begin
insert into EmployeShift values(@date,@ShiftId)
     select @@IDENTITY as int
  end

GO
/****** Object:  StoredProcedure [dbo].[spr_insertSpecilization]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spr_insertSpecilization]
 @SpecilizationName varchar(100),
 @DegreeId int,
 @CreatedBy int,
 @UpdatedBy int

AS 
BEGIN
INSERT INTO [dbo].[Specilizations] ([SpecilizationName],
                                    [DegreeId],
									[CreatedBy],
									[CreatedOn],
									[UpdatedBy],
									[UpdatedOn])
			VALUES(@SpecilizationName,@DegreeId,@CreatedBy,GETDATE(),@UpdatedBy,GETDATE())
END

GO
/****** Object:  StoredProcedure [dbo].[spr_UpdateDegree]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spr_UpdateDegree]
@DegreeId int,
@DegreeName varchar(100),
@Description varchar(MAX),
@CreatedBy int,
@UpdatedBy int,
@CreatedOn datetime,
@UpdatedOn datetime

AS

BEGIN
update Degree set DegreeName=@DegreeName,Description=@Description,
CreatedBy=@CreatedBy,UpdatedBy=@UpdatedBy,
CreatedOn=@CreatedOn,UpdatedOn=@UpdatedOn  where DegreeId=@DegreeId

END
GO
/****** Object:  StoredProcedure [dbo].[spr_updateSpecilization]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spr_updateSpecilization]
@SpecilizationId int,
@SpecilizationName varchar(100),
@DegreeId int,
@CreatedBy int,
@CreatedOn datetime,
@UpdatedBy int

AS 
BEGIN
UPDATE [dbo].[Specilizations]
     SET [SpecilizationName]=@SpecilizationName,
	     [DegreeId]=@DegreeId,
		 [CreatedBy]=@CreatedBy,
		 [CreatedOn]=@CreatedOn,
		 [UpdatedBy]=@UpdatedBy,
		 [UpdatedOn]=GETDATE()

     WHERE [SpecilizationId]=@SpecilizationId
END
GO
/****** Object:  StoredProcedure [dbo].[updateTreatment]    Script Date: 25/03/2021 08:57:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[updateTreatment]
@id int,
@TreatmentName varchar(50),
@Price decimal(18,3),
@Createdby int,
@Createdon datetime,
@Updatedby int,
@Updatedon datetime
As
Begin
  Update Treatments set TreatmentName=@TreatmentName, Price=@Price,Createdby=@Createdby,
		Createdon=@Createdon,Updatedby=@Updatedby,Updatedon=@Updatedon where TreatmentId=@id
End

GO
USE [master]
GO
ALTER DATABASE [SaloonManagement] SET  READ_WRITE 
GO
