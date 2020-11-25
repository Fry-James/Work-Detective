create database [WD]
go
use [WD]
go
----- Авторизация
create table [dbo].[Authorisation]
(
	[ID_Authorisation] [int] not null identity(1,1),
	[Login] [varchar] (25) not null,
	[Password] [varchar] (25) not null
	constraint [PK_Authorisation] primary key clustered ([ID_Authorisation] ASC) on [PRIMARY],
	constraint [UQ_Login] unique ([Login]) 
)
go

create procedure [dbo].[Authorisation_Insert]
	@Login [varchar] (25), @Password [varchar] (25)
as
	 insert into [dbo].[Authorisation] ([Login], [Password]) 
	 values (@Login, @Password)
go

create procedure [dbo].[Authorisation_Update]
@ID_Authorisation [int], @Login [varchar] (25), @Password [varchar] (25)
as
	update [dbo].[Authorisation] set
	[Login] = @Login,
	[Password] = @Password
	where
		[ID_Authorisation] = @ID_Authorisation
go

create procedure [dbo].[Authorisation_Delete]
@ID_Authorisation [int]
as
	delete from  [dbo].[Authorisation]
	where
		[ID_Authorisation] = @ID_Authorisation
go

------Должность
Create table [dbo].[Position]
(
	[ID_Position] [int] not null identity(1,1),
	[PositionName] [varchar] (25) not null,
	[Salary] [int] not null,
	constraint [UQ_Position] unique ([PositionName]) ,
	constraint [PK_Position] primary key clustered ([ID_Position] ASC) on [PRIMARY]
)
go

create procedure [dbo].[Position_Insert]
	@PositionName[varchar] (25), @Salary [int]
as
	 insert into [dbo].[Position] ([PositionName], [Salary]) 
	 values (@PositionName, @Salary)
go

create procedure [dbo].[Position_Update]
@ID_Position [int], @PositionName [varchar] (25), @Salary [int]
as
	update [dbo].[Position] set
	[PositionName] = @PositionName,
	[Salary] = @Salary
	where
		[ID_Position] = @ID_Position
go

create procedure [dbo].[Position_Delete]
@ID_Position [int]
as
	delete from  [dbo].[Position]
	where
		[ID_Position] = @ID_Position
go

----- Сотрудники

create table [dbo].[Employee]
(
	[Authorisation_ID] [int] not null,
	[FirstName] [varchar] (25) not null,
	[MidleName] [varchar] (25) not null,
	[LastName] [varchar] (25) not null,
	[Email] [varchar] (25) not null,
	[Position_ID] [int] not null,
	[Admin] [bit] not null default (0),
	constraint [PK_Employee] primary key clustered ([Authorisation_ID] ASC) on [PRIMARY],
	constraint [FK_Autorisation] foreign key ([Authorisation_ID]) references [dbo].[Position] ([ID_Position]),
	constraint [FK_Position] foreign key ([Position_ID]) references [dbo].[Position] ([ID_Position])
)
go

create procedure [dbo].[Employee_Insert]
	@FirstName [varchar] (25), @MidleName [varchar] (25), @LastName [varchar] (25), @Email [varchar], @Position_ID [int], @Admin [bit]
as
	 insert into [dbo].[Employee] ([FirstName], [MidleName], [LastName], [Email], [Position_ID], [Admin]) 
	 values (@FirstName, @MidleName, @LastName, @Email, @Position_ID, @Admin)
go

create procedure [dbo].[Employee_Update]
@Authorisation_ID [int], @FirstName [varchar] (25), @MidleName [varchar] (25), @LastName [varchar] (25),@Email [varchar] (25), @Position_ID [int], @Admin [bit]
as
	update [dbo].[Employee] set
	[FirstName] = @FirstName,
	[MidleName] = @MidleName,
	[LastName] = @LastName,
	[Email] = @Email,
	[Position_ID] = @Position_ID,
	[Admin] = @Admin
	where
		[Authorisation_ID] = @Authorisation_ID
go

create procedure [dbo].[Employee_Delete]
@Authorisation_ID [int]
as
	delete from  [dbo].[Employee]
	where
		[Authorisation_ID] = @Authorisation_ID
go

----- Отчёт
create table [dbo].[Report]
(
	[ID_Report] [int] not null identity(1,1),
	[ReportDate] [varchar] (25) not null,
	[ComputerName] [varchar] (25) not null,
	[CharCount] [int] not null,
	[LazyTime]  [varchar] (25) not null,
	[Autorisation_ID] [int] not null,
	constraint [PK_Report] primary key clustered ([ID_Report] ASC) on [PRIMARY],
	constraint [FK_Autorisation_Report] foreign key ([Autorisation_ID]) references [dbo].[Position] ([ID_Position])
)
go

create procedure [dbo].[Report_Insert]
	@ReportDate [varchar] (25), @ComputerName [varchar] (25), @CharCount [int], @LazyTime [varchar] (25), @Autorisation_ID [int] 
as
	 insert into [dbo].[Report] ([ReportDate], [ComputerName], [CharCount], [LazyTime], [Autorisation_ID]) 
	 values (@ReportDate, @ComputerName, @CharCount, @LazyTime, @Autorisation_ID)
go

create procedure [dbo].[Report_Update]
@ID_Report [int] , @ReportDate [varchar] (25), @ComputerName [varchar] (25), @CharCount [int], @LazyTime [varchar] (25), @Autorisation_ID [int]
as
	update [dbo].[Report] set
	[ReportDate] = @ReportDate,
	[ComputerName] = @ComputerName,
	[CharCount] = @CharCount,
	[LazyTime] = @LazyTime,
	[Autorisation_ID] = @Autorisation_ID
	where
		[ID_Report] = @ID_Report
go

create procedure [dbo].[Report_Delete]
@ID_Report [int]
as
	delete from  [dbo].[Report]
	where
		[ID_Report] = @ID_Report
go
