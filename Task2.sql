--Task-2--

create database Kurs
use Kurs

create table Countries(
    [Id] int primary key identity(1,1),
    [Name] nvarchar(80)
)


insert into Countries([Name])
values('Italy'),
    ('Japan'),
    ('Usa'),
    ('Ukraine')

select * from Countries


create table Cities
(
    [Id] int primary key identity(1,1),
    [Name] nvarchar(80),
    [CountryId] int,
    foreign key (CountryId) references Countries(Id)
)


insert into Cities([Name],[CountryId])
values('Rome', 1),
    ('New York', 3),
    ('Tokyo', 2),
    ('Kiev', 4),
    ('Seul', 2)

select * from Cities

create table Teachers
(
    [Id] int primary key identity(1,1),
    [Name] nvarchar(255),
    [Surname] nvarchar(255),
    [Address] nvarchar(255),
    [Age] int,
    [Email] nvarchar(255),
    [Salary] decimal,
    [CityId] int,
    foreign key (CityId) references Cities(Id)
)



insert into Teachers
    ([Name],[Surname],[Age],[Address],[Email],[Salary],[CityId])
values('Cavid', 'Bashirov', 30, 'Ehmedli', 'cavid@gmail.com', 12800, 3),
    ('Sabir', 'Guluyev', 25, 'Inshaatcilar', 'Sa1@gmail.com', 2000, 2),
    ('Ali', 'Huseynov', 37, 'Hazi', 'ali@gmail.com', 400, 3)
select * from Teachers




create table Studs
(
    [Id] int primary key identity(1,1),
    [Name] nvarchar(255),
    [Surname] nvarchar(255),
    [Age] int,
    [Address] nvarchar(255),
    [Email] nvarchar(255),
    [CityId] int,
    foreign key (CityId) references Cities(Id)
)


insert into Studs
    ([Name],[Surname],[Age],[Address],[Email],[CityId])
values('Tofiq', 'Nasibli', 19, 'Hazi', 'tofiq@gmail.com', 1),
    ('Ali', 'Huseynov', 19, 'Hazi', 'ali@gmail.com', 2)


select * from Studs
create table Rooms
(
    [Id] int primary key identity(1,1),
    [Name] nvarchar(255),
    [Capacity] int
)
insert into Rooms
    ([Name],[Capacity])
values('n01', 12),
    ('n02', 71),
    ('n03', 41),
    ('n04', 12)
select * from Rooms
create table Grups
(
    [Id] int primary key identity(1,1),
    [Name] nvarchar(255),
    [MembersCount] int,
    [RoomId] int,
    foreign key (RoomId) references Rooms(Id)
)
insert into Grups
    ([Name],[MembersCount],[RoomId])
values('P418', 11, 1),
    ('P412', 55, 2)
select * from Grups
create table TeacherGroups
(
    [Id] int primary key identity(1,1),
    [TeacherId] int,
    [GroupId] int,
    foreign key (TeacherId) references Teachers(Id),
    foreign key (GroupId) references Grups(Id),
)
select * from TeacherGroups
create table StudsGrups
(
    [Id] int primary key identity(1,1),
    [StudentId] int,
    [GroupId] int,
    foreign key (StudentId) references Studs(Id),
    foreign key (GroupId) references Grups(Id)
)
    