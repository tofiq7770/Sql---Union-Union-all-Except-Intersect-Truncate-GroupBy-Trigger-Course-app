
--Task-1--
create database Kurs

use Kurs


create table Students
(
  [Id] int primary key identity(1,1),
  [Name] nvarchar(25),
  [Surname] nvarchar(50),
  [Age] int,
  [Address] nvarchar(80),
  [Email] nvarchar(250) unique
)

create table StudentsArchive
(
  [Id] int,
  [Name] nvarchar(50),
  [Surname] nvarchar(50),
  [Age] int,
  [Email] nvarchar(50) unique,
  [Address] nvarchar(50),
  [Operation] nvarchar(50),
  [Date] datetime
)

insert into Students
  ([Name],[Surname],[Email],[Age],[Address])
values
  ('Ali', 'Huseynov', 'ali@gmail.com', 19, 'Hazi')

select * from Students
select * from StudentsArchive

-- CREATE PROCEDURE usp_arcStudsss
-- @Id int as
-- begin
--   insert into StudentsArchive
--     ([Id],[Name],[Surname],[Age],[Email],[Address],[Operation],[Date])
--   select [Id], [Name], [Surname], [Age], [Email], [Address], 'Delete', getDate()
--   from Students
--   where [Id] = @Id
--   delete from Students where [Id] = @Id
-- end


-- exec usp_arcStudsss @Id = 1






------Practice------
------Practice------
------Practice------
------Practice------

-- create database Course

-- use Course

-- create table Employees(
-- [Id] int primary key identity(1,1),
-- [FullName] nvarchar(100),
-- [Age] int
-- )


-- create table Parents(
-- [Id] int primary key identity(1,1),
-- [FullName] nvarchar(100),
-- [Age] int
-- )

-- select * from Employees
-- union
-- select * from Parents




-- select * from Employees
-- union all
-- select * from Parents



-- select * from Employees
-- intersect
-- select * from Parents



-- select * from Employees
-- except
-- select * from Parents



-- truncate table Employees


-- select COUNT(*) Age
-- From Employees
-- Group By Age;



-- declare @number int
-- set @number=1
-- while (@number <= 10)
-- begin
-- print 'Number is =' + convert(nvarchar,(@number))
-- set @number = @number + 1
-- end




-- select GETDATE()


-- create table EmployeeLogs(
-- [Id] int primary key identity(1,1),
-- [EmployeeId] int,
-- [Operation] nvarchar(100),
-- [Date] datetime
-- )



-- --create trigger trg_writeLogAfterCreate on Employees
-- --after insert
-- --as
-- --begin
-- --insert into EmployeeLogs([EmployeeId],[Operation],[Date])
-- --select [Id],'Insert',GETDATE() from inserted
-- --end


-- --insert into Employees([FullName],[Age])
-- --values('Huseynov Ali',19)


-- --select * from Employees
-- --select * from EmployeeLogs







-- create trigger trg_writeLogAfterEdit on Employees
-- after update
-- as
-- begin
-- insert into EmployeeLogs([EmployeeId],[Operation],[Date])
-- select [Id],'Update',GETDATE() from deleted
-- end


-- update Employees
-- set [Age] = 37
-- where [Id] = 2


-- select * from Employees
-- select * from EmployeeLogs



-- select * from EmployeeLogs where [Operation] = 'Update'
-- order by [Date] desc





-- create table EmployeeDatas(
-- [Id] int primary key identity(1,1),
-- [FullName] nvarchar(100),
-- [OldAge] int,
-- [NewAge]int,
-- [Operation] nvarchar(100),
-- [Date] datetime
-- )

-- select * from EmployeeDatas



-- --create trigger trg_writeLogAfterEditAge on Employees
-- --after update
-- --as
-- --begin
-- --declare @oldAge int = (select [Age] from Employees  where [Id] = 2)
-- --insert into EmployeeDatas([FullName],[OldAge],[NewAge],[Operation],[Date])
-- --select [FullName],[OldAge],[NewAge],'Update',GETDATE() from deleted
-- --end

-- --update Employees
-- --set [Age]= 19
-- --where [Id]= 2


-- create table Sportmans(
-- [Id] int primary key identity(1,1),
-- [Email] nvarchar(100)
-- )

-- select * from Sportmans


-- create table SportmansLog(
-- [Id] int primary key identity(1,1),
-- [oldEmail] nvarchar(100),
-- [newEmail] nvarchar(100),
-- [Operation] nvarchar(100),
-- [Date] datetime
-- )


-- select * from SportmansLog


-- create trigger trg_writeLogAfterEditEmail on Sportmans
-- after update
-- as
-- begin
--     declare @oldEmail nvarchar(100) = (select [Email] from  deleted)
--     declare @newEmail nvarchar(100) = (select [Email] from  inserted)
--     insert into SportmansLog ([oldEmail],[newEmail],[Operation],[Date])
--     values (@oldEmail, @newEmail,'Update',GETDATE())
-- end



-- update Sportmans
-- set [Email] = 'huseynov@mail.ru'
-- where [Id] = 1


-- select * from Sportmans
-- select * from SportmansLog

