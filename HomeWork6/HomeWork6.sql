use Academy

create table Assistants
(
Id int identity(1,1) not null primary key,
TeacherId int not null,
foreign key (TeacherId) references Teachers(Id)
)

insert into Assistants (TeacherId)
values 
	(1),
	(2),
	(3),
	(4),
	(5),
	(6),
	(7),
	(8),
	(9),
	(10),
	(11),
	(12),
	(13),
	(14),
	(15),
	(16),
	(17),
	(18),
	(19),
	(20),
	(21),
	(22),
	(23),
	(24),
	(25);

create table Curators
(
Id int identity(1,1) not null primary key,
TeacherId int not null,
foreign key (TeacherId) references Teachers(Id)
)

insert into Curators (TeacherId)
values
	(26),
	(27),
	(28),
	(29),
	(30),
	(31),
	(32),
	(33),
	(34),
	(35),
	(36),
	(37),
	(38),
	(39),
	(40),
	(41),
	(42),
	(43),
	(44),
	(45),
	(46),
	(47),
	(48),
	(49),
	(50),
	(51),
	(52),
	(53),
	(54),
	(55),
	(56),
	(57),
	(58),
	(59),
	(60),
	(61),
	(62),
	(63),
	(64),
	(65),
	(66),
	(67),
	(68),
	(69),
	(70),
	(71),
	(72),
	(73),
	(74),
	(75);

create table Deans
(
Id int identity(1,1) not null primary key,
TeacherId int not null,
foreign key (TeacherId) references Teachers(Id)
)

insert into Deans (TeacherId)
values
	(36),
	(37),
	(38),
	(39),
	(40),
	(41),
	(42),
	(43),
	(44),
	(45);


create table Departments
(
Id int identity(1,1) not null primary key,
Building int not null check(Building between 1 and 5),
Name nvarchar(100) not null unique check(Name <> ' '),
FacultyId int not null,
HeadId int not null,
foreign key (FacultyId) references Faculties(Id),
foreign key (HeadId) references Heads(Id)
)

insert into Departments (Building, Name, FacultyId, HeadId)
values 
    (1, 'Department of Mechanical Engineering', 1, 1),
    (2, 'Department of Pediatrics', 2, 2),
    (3, 'Department of English Literature', 3, 3),
    (3, 'Department of Physics', 4, 4),
    (2, 'Department of Marketing', 2, 5),
    (4, 'Department of Criminal Law', 1, 6),
    (2, 'Department of Sociology', 7, 7),
    (5, 'Department of Early Childhood Education', 8, 8),
    (5, 'Software Development', 9, 9),
    (1, 'Department of Musicology', 1, 10),
    (3, 'Department of Agronomy', 3, 11),
    (2, 'Department of Urban Planning', 4, 12),
    (2, 'Department of Pharmacology', 6, 13),
    (3, 'Department of Critical Care Nursing', 5, 14),
    (4, 'Department of Macroeconomics', 8, 15),
    (5, 'Department of Clinical Psychology', 9, 16),
    (5, 'Department of Orthodontics', 10, 17),
    (2, 'Department of Animal Science', 3, 18),
    (1, 'Department of Environmental Science', 2, 19),
    (5, 'Department of Journalism', 1, 20);

create table Faculties
(
Id int identity(1,1) not null primary key,
Building int not null check(Building between 1 and 5),
Name nvarchar(100) not null unique check(Name <> ' '),
DeanId int not null,
foreign key (DeanId) references Deans(Id)
)

insert into Faculties (Building, Name, DeanId)
values 
	(4, 'Faculty of Engineering', 1),
	(3, 'Faculty of Medicine', 2),
	(5, 'Faculty of Arts', 3),
	(5, 'Faculty of Science', 4),
	(3, 'Faculty of Business', 5),
	(1, 'Faculty of Law', 6),
	(2, 'Faculty of Social Sciences', 7),
	(5, 'Faculty of Education', 8),
	(3, 'Computer Science', 9),
	(4, 'Faculty of Music', 10);


create table Groups
(
Id int identity(1,1) not null primary key,
Name nvarchar(10) not null unique check(Name <> ' '),
Year int not null check(year between 1 and 5),
DepartmentId int not null,
foreign key (DepartmentId) references Departments(Id)
)

insert into Groups (Name, Year, DepartmentId)
values 
	('A102', 1, 16),
	('B304', 2, 1),
	('C506', 4, 18),
	('D708', 5, 6),
	('E910', 5, 4),
	('F112', 1, 2),
	('G314', 3, 1),
	('H516', 2, 20),
	('I718', 3, 19),
	('J920', 1, 11),
	('K122', 4, 18),
	('L324', 5, 19),
	('M526', 4, 9),
	('F505', 1, 17),
	('O930', 4, 16),
	('P132', 2, 11),
	('Q334', 3, 5),
	('R536', 4, 1),
	('S738', 3, 17),
	('T940', 5, 2),
	('U142', 3, 14),
	('V344', 3, 2),
	('W546', 5, 3),
	('A104', 4, 8),
	('Y950', 3, 9),
	('Z152', 2, 8),
	('A354', 5, 7),
	('B556', 4, 5),
	('C758', 1, 6),
	('D960', 1, 18),
	('E162', 3, 3),
	('F364', 1, 2),
	('G566', 5, 5),
	('H768', 3, 5),
	('I970', 3, 17),
	('J172', 3, 11),
	('K374', 4, 8),
	('L576', 1, 8),
	('M778', 2, 17),
	('N980', 4, 9),
	('B311', 2, 14),
	('P384', 2, 1),
	('Q586', 3, 13),
	('A311', 1, 2),
	('S990', 4, 15),
	('B104', 1, 20),
	('U394', 2, 5),
	('V596', 1, 7),
	('T596', 5, 11),
	('W798', 3, 17);

create table GroupsCurators
(
Id int identity(1,1) not null primary key,
CuratorId int not null,
GroupId int not null,
foreign key (CuratorId) references Curators(Id),
foreign key (GroupId) references Groups(Id)
)

insert into GroupsCurators (CuratorId, GroupId)
values
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(11, 11),
	(12, 12),
	(13, 13),
	(14, 14),
	(15, 15),
	(16, 16),
	(17, 17),
	(18, 18),
	(19, 19),
	(20, 20),
	(21, 21),
	(22, 22),
	(23, 23),
	(24, 24),
	(25, 25),
	(26, 26),
	(27, 27),
	(28, 28),
	(29, 29),
	(30, 30),
	(31, 31),
	(32, 32),
	(33, 33),
	(34, 34),
	(35, 35),
	(36, 36),
	(37, 37),
	(38, 38),
	(39, 39),
	(40, 40),
	(41, 41),
	(42, 42),
	(43, 43),
	(44, 44),
	(45, 45),
	(46, 46),
	(47, 47),
	(48, 48),
	(49, 49),
	(50, 50);

create table GroupsLectures
(
Id int identity(1,1) not null primary key,
GroupId int not null,
LectureId int not null,
foreign key (GroupId) references Groups(Id),
foreign key (LectureId) references Lectures(Id)
)
	
insert into GroupsLectures (GroupId, LectureId)
values
	(1, 11),
	(2, 4),
	(3, 47),
	(4, 80),
	(5, 62),
	(6, 11),
	(7, 99),
	(8, 50),
	(9, 72),
	(10, 83),
	(11, 61),
	(12, 32),
	(13, 99),
	(14, 15),
	(15, 97),
	(16, 97),
	(17, 26),
	(18, 81),
	(19, 13),
	(20, 44),
	(21, 50),
	(22, 90),
	(23, 67),
	(24, 47),
	(25, 3),
	(26, 18),
	(27, 6),
	(28, 33),
	(29, 36),
	(30, 16),
	(31, 86),
	(32, 91),
	(33, 30),
	(34, 21),
	(35, 86),
	(36, 69),
	(37, 37),
	(38, 71),
	(39, 62),
	(40, 24),
	(41, 4),
	(42, 95),
	(43, 45),
	(44, 34),
	(45, 24),
	(46, 32),
	(47, 65),
	(48, 18),
	(49, 40),
	(50, 80);

create table Heads
(
Id int identity(1,1) not null primary key,
TeacherId int not null,
foreign key (TeacherId) references Teachers(Id)
)

insert into Heads (TeacherId)
values
	(46),
	(47),
	(48),
	(49),
	(50),
	(51),
	(52),
	(53),
	(54),
	(55),
	(56),
	(57),
	(58),
	(59),
	(60),
	(61),
	(62),
	(63),
	(64),
	(65);


create table LectureRooms
(
Id int identity(1,1) not null primary key,
Building int not null check(Building between 1 and 5),
Name nvarchar(10) not null unique check(Name <> ' '),
)

insert into LectureRooms (Building, Name)
values
	(1, '201B'),
	(4, '101A'),
	(5, '512F'),
	(1, '812E'),
	(2, '643R'),
	(4, '754J'),
	(1, '936G'),
	(5, '285M'),
	(2, '481L'),
	(4, '759W'),
	(3, '654K'),
	(3, '893S'),
	(3, '174F'),
	(2, '983C'),
	(2, '738K'),
	(3, '523H'),
	(5, '468E'),
	(2, '379A'),
	(2, '475N'),
	(3, '289O'),
	(2, '734T'),
	(4, '695P'),
	(2, '948Q'),
	(2, '731J'),
	(2, '816U'),
	(5, '294R'),
	(2, '561W'),
	(4, '834D'),
	(4, '637Y'),
	(2, '943O'),
	(2, '687B'),
	(5, '182F'),
	(2, '425T'),
	(4, '729V'),
	(5, '346S'),
	(4, '537L'),
	(2, '684Q'),
	(5, '958M'),
	(1, '312K'),
	(2, '739P'),
	(4, '852I'),
	(5, '967C'),
	(2, '542E'),
	(1, '289X'),
	(5, '734W'),
	(2, '496G'),
	(1, '726Z'),
	(2, '417D'),
	(4, '895N'),
	(1, '986H');

create table Lectures
(
Id int identity(1,1) not null primary key,
SubjectId int not null,
TeacherId int not null,
foreign key (TeacherId) references Teachers(Id),
foreign key (SubjectId) references Subjects(Id)
)

insert into Lectures (TeacherId, SubjectId)
values
	(1, 14),
	(2, 6),
	(3, 16),
	(4, 4),
	(5, 11),
	(6, 5),
	(7, 7),
	(8, 6),
	(9, 13),
	(10, 12),
	(11, 11),
	(12, 11),
	(13, 3),
	(14, 12),
	(15, 6),
	(16, 9),
	(17, 8),
	(18, 6),
	(19, 14),
	(20, 15),
	(21, 17),
	(22, 7),
	(23, 9),
	(24, 12),
	(25, 11),
	(26, 8),
	(27, 20),
	(28, 9),
	(29, 1),
	(30, 3),
	(31, 18),
	(32, 10),
	(33, 2),
	(34, 2),
	(35, 12),
	(36, 1),
	(37, 4),
	(38, 4),
	(39, 1),
	(40, 10),
	(41, 16),
	(42, 18),
	(43, 20),
	(44, 10),
	(45, 11),
	(46, 11),
	(47, 20),
	(48, 11),
	(49, 3),
	(50, 13),
	(51, 14),
	(52, 13),
	(53, 5),
	(54, 17),
	(55, 18),
	(56, 6),
	(57, 20),
	(58, 6),
	(59, 16),
	(60, 9),
	(61, 4),
	(62, 3),
	(63, 19),
	(64, 3),
	(65, 2),
	(66, 2),
	(67, 13),
	(68, 16),
	(69, 7),
	(70, 2),
	(71, 12),
	(72, 4),
	(73, 17),
	(74, 7),
	(75, 8),
	(76, 4),
	(77, 18),
	(78, 4),
	(79, 17),
	(80, 14),
	(81, 6),
	(82, 20),
	(83, 3),
	(84, 20),
	(85, 11),
	(86, 3),
	(87, 18),
	(88, 3),
	(89, 6),
	(90, 8),
	(91, 11),
	(92, 4),
	(93, 11),
	(94, 11),
	(95, 18),
	(96, 9),
	(97, 1),
	(98, 11),
	(99, 8),
	(100, 6);

create table Schedules
(
Id int identity(1,1) not null primary key,
Class int not null check(Class between 1 and 8),
DayOfWeek int not null check(DayOfWeek between 1 and 7),
Week int not null check(Week between 1 and 52),
LectureId int not null,
LectureRoomId int not null,
foreign key (LectureId) references Lectures(Id),
foreign key (LectureRoomId) references LectureRooms(Id)
)

insert into Schedules (Class, DayOfWeek, Week, LectureId, LectureRoomId)
values
	(1, 2, 12, 26, 13),
	(2, 3, 39, 64, 2),
	(3, 3, 9, 44, 14),
	(1, 1, 41, 81, 46),
	(8, 1, 29, 80, 48),
	(2, 3, 40, 96, 29),
	(2, 2, 29, 17, 31),
	(4, 7, 34, 9, 1),
	(3, 3, 32, 38, 39),
	(6, 4, 1, 24, 37),
	(2, 6, 49, 32, 13),
	(2, 7, 26, 91, 42),
	(4, 2, 47, 52, 11),
	(5, 6, 38, 34, 17),
	(5, 7, 10, 75, 26),
	(6, 7, 15, 38, 18),
	(3, 1, 27, 43, 29),
	(5, 3, 31, 63, 37),
	(2, 7, 30, 33, 43),
	(3, 4, 25, 28, 4),
	(4, 4, 51, 71, 27),
	(4, 5, 42, 45, 21),
	(3, 1, 30, 38, 29),
	(4, 3, 31, 87, 37),
	(1, 1, 26, 39, 43),
	(6, 2, 31, 47, 48),
	(1, 3, 37, 72, 13),
	(8, 4, 25, 87, 46),
	(7, 3, 6, 86, 49),
	(6, 4, 17, 57, 4),
	(5, 7, 4, 87, 16),
	(4, 6, 25, 62, 26),
	(7, 6, 22, 99, 33),
	(8, 3, 33, 54, 17),
	(3, 7, 16, 13, 18),
	(2, 7, 10, 57, 27),
	(4, 6, 28, 79, 5),
	(6, 1, 1, 66, 42),
	(8, 4, 52, 18, 33),
	(6, 3, 52, 63, 21),
	(3, 4, 10, 3, 30),
	(7, 1, 27, 90, 42),
	(3, 2, 34, 69, 45),
	(3, 1, 26, 84, 30),
	(5, 2, 39, 55, 11),
	(5, 4, 21, 22, 7),
	(3, 2, 44, 53, 2),
	(7, 4, 41, 40, 3),
	(2, 1, 14, 34, 29),
	(2, 4, 11, 83, 24),
	(8, 5, 33, 66, 41),
	(8, 2, 18, 16, 38),
	(7, 5, 34, 22, 35),
	(4, 7, 10, 57, 13),
	(8, 1, 38, 51, 13),
	(3, 6, 32, 60, 49),
	(6, 2, 22, 87, 33),
	(1, 2, 34, 82, 16),
	(4, 5, 40, 32, 9),
	(4, 6, 1, 73, 14),
	(6, 4, 46, 18, 27),
	(5, 7, 34, 60, 19),
	(5, 1, 9, 17, 30),
	(3, 1, 1, 95, 50),
	(5, 7, 9, 99, 25),
	(2, 3, 9, 67, 50),
	(6, 3, 4, 9, 35),
	(4, 1, 6, 79, 41),
	(6, 3, 16, 10, 20),
	(3, 2, 1, 55, 25),
	(1, 2, 33, 69, 43),
	(8, 1, 29, 66, 32),
	(1, 5, 29, 47, 18),
	(7, 5, 19, 97, 25),
	(5, 4, 1, 21, 47),
	(5, 5, 46, 59, 27),
	(8, 3, 16, 94, 21),
	(2, 3, 12, 72, 34),
	(3, 4, 43, 56, 16),
	(2, 1, 6, 3, 14),
	(2, 2, 50, 68, 27),
	(1, 6, 31, 14, 32),
	(5, 7, 47, 78, 30),
	(5, 6, 16, 22, 24),
	(2, 1, 45, 29, 27),
	(8, 7, 5, 54, 26),
	(4, 2, 6, 72, 8),
	(1, 4, 38, 94, 26),
	(8, 7, 3, 43, 3),
	(8, 7, 25, 82, 33),
	(2, 3, 26, 4, 27),
	(6, 7, 1, 76, 29),
	(1, 3, 22, 6, 28),
	(5, 6, 44, 91, 39),
	(2, 4, 36, 79, 7),
	(8, 1, 51, 53, 33),
	(8, 3, 19, 33, 46),
	(4, 5, 50, 70, 3),
	(7, 2, 21, 42, 19),
	(4, 1, 33, 85, 27),
	(2, 4, 3, 29, 1),
	(2, 7, 29, 48, 47),
	(2, 4, 31, 97, 14),
	(3, 5, 1, 4, 12),
	(8, 6, 32, 1, 1),
	(2, 2, 11, 82, 43),
	(7, 1, 40, 7, 15),
	(1, 3, 44, 31, 20),
	(6, 1, 41, 62, 44),
	(7, 7, 18, 75, 2),
	(5, 1, 11, 63, 14),
	(1, 6, 17, 64, 30),
	(5, 2, 20, 12, 29),
	(5, 7, 28, 44, 39),
	(6, 3, 40, 83, 5),
	(4, 3, 44, 67, 25),
	(2, 1, 20, 25, 46),
	(5, 1, 10, 44, 30),
	(3, 7, 35, 45, 26),
	(2, 5, 46, 10, 49),
	(8, 6, 43, 56, 9),
	(1, 4, 13, 20, 39),
	(4, 1, 20, 54, 33),
	(1, 1, 12, 46, 21),
	(5, 3, 45, 3, 12),
	(3, 7, 51, 19, 48),
	(8, 3, 10, 82, 35),
	(8, 4, 41, 97, 39),
	(1, 2, 25, 51, 50),
	(4, 7, 25, 98, 3),
	(5, 5, 18, 46, 29),
	(1, 5, 2, 48, 40),
	(3, 4, 34, 10, 14),
	(4, 4, 42, 11, 35),
	(1, 2, 26, 6, 42),
	(1, 1, 42, 31, 19),
	(6, 1, 31, 26, 23),
	(6, 7, 19, 73, 27),
	(3, 6, 50, 52, 34),
	(6, 7, 7, 86, 20),
	(5, 2, 9, 49, 2),
	(5, 5, 44, 77, 24),
	(5, 5, 43, 57, 17),
	(8, 5, 17, 89, 35),
	(2, 3, 34, 75, 49),
	(8, 3, 16, 5, 43),
	(6, 7, 10, 73, 47),
	(8, 6, 21, 64, 3),
	(7, 5, 12, 11, 48),
	(1, 6, 36, 85, 47),
	(8, 2, 33, 64, 18),
	(4, 4, 39, 77, 20),
	(3, 2, 32, 9, 39),
	(6, 3, 1, 91, 30),
	(7, 3, 4, 97, 32),
	(8, 6, 43, 24, 42),
	(5, 7, 46, 48, 25),
	(4, 6, 48, 70, 27),
	(1, 1, 24, 28, 34),
	(4, 7, 29, 98, 7),
	(1, 6, 4, 10, 24),
	(7, 7, 9, 4, 4),
	(5, 4, 7, 70, 48),
	(8, 1, 21, 86, 17),
	(7, 6, 7, 43, 24),
	(8, 4, 21, 91, 42),
	(3, 2, 5, 20, 46),
	(3, 5, 3, 84, 38),
	(5, 4, 49, 3, 20),
	(2, 6, 33, 5, 35),
	(7, 4, 19, 58, 16),
	(2, 2, 34, 91, 28),
	(3, 5, 34, 24, 35),
	(6, 7, 48, 21, 41),
	(2, 6, 23, 26, 14),
	(7, 4, 21, 82, 1),
	(6, 5, 1, 56, 26),
	(4, 3, 35, 40, 44),
	(8, 2, 33, 79, 18),
	(8, 1, 18, 86, 30),
	(7, 7, 22, 43, 20),
	(2, 5, 34, 90, 15),
	(4, 7, 46, 6, 7),
	(3, 3, 36, 11, 1),
	(3, 1, 41, 49, 41),
	(8, 6, 52, 23, 45),
	(4, 5, 43, 31, 6),
	(7, 4, 6, 22, 27),
	(5, 5, 14, 64, 16),
	(7, 5, 1, 12, 47),
	(4, 1, 51, 88, 7),
	(5, 6, 42, 47, 41),
	(1, 2, 44, 46, 17),
	(7, 6, 24, 9, 6),
	(4, 1, 37, 78, 10),
	(2, 1, 46, 39, 34),
	(4, 4, 40, 2, 36),
	(5, 5, 19, 21, 24),
	(4, 4, 18, 20, 32),
	(6, 7, 37, 12, 9);


create table Subjects
(
Id int identity(1,1) not null primary key,
Name nvarchar(100) not null unique check(Name <> ' '),
)

insert into Subjects (Name)
values
	('Mathematics'),
	('Physics'),
	('Chemistry'),
	('Biology'),
	('Computer Science'),
	('History'),
	('Literature'),
	('Art'),
	('Music'),
	('Physical Education'),
	('Geography'),
	('Economics'),
	('Psychology'),
	('Sociology'),
	('Political Science'),
	('Philosophy'),
	('Anthropology'),
	('Languages'),
	('Religious Studies'),
	('Environmental Science');

create table Teachers
(
Id int identity(1,1) not null primary key,
Name nvarchar(max) not null check(Name <> ' '),
Surname nvarchar(max) not null check(Surname <> ' '),
)

insert into Teachers (Name, Surname)
values 
	('Samuele', 'Wiggans'),
	('Leonhard', 'Heckney'),
	('Artemas', 'Buddington'),
	('Matthiew', 'Meace'),
	('Eldin', 'Fitzackerley'),
	('Jenni', 'Cristofari'),
	('Murvyn', 'D''Alessio'),
	('Dorthy', 'Camerana'),
	('Debi', 'Phipps'),
	('Ginnie', 'Lowdes'),
	('Seward', 'Ebunoluwa'),
	('Maisey', 'Ollin'),
	('Shea', 'Syres'),
	('Orsola', 'Schultes'),
	('Aime', 'Riggert'),
	('Mallorie', 'Frisel'),
	('Marita', 'Coupar'),
	('Legra', 'Byk'),
	('Caesar', 'Saintpierre'),
	('Paxton', 'Kingham'),
	('Electra', 'Dunnan'),
	('Aileen', 'Sykes'),
	('Babette', 'Bracer'),
	('Jocelyn', 'Guerin'),
	('Jordan', 'Halfacre'),
	('Normie', 'Gossop'),
	('Culver', 'Brickell'),
	('Kean', 'Gorsse'),
	('Adeline', 'Mattessen'),
	('Kiley', 'Legier'),
	('Gordan', 'Loadsman'),
	('Maxwell', 'Noddings'),
	('Jodi', 'Smoth'),
	('Mathe', 'Patillo'),
	('Danni', 'Boram'),
	('Craggy', 'Blinder'),
	('Korie', 'Rawcliff'),
	('Stevena', 'Benedyktowicz'),
	('Tory', 'Vassman'),
	('Kelley', 'Cockerell'),
	('Llywellyn', 'Sambath'),
	('Randi', 'Hounsom'),
	('Juditha', 'McCollum'),
	('Lodovico', 'Fleckney'),
	('Celesta', 'Michiel'),
	('Balduin', 'McCarroll'),
	('Charlie', 'Massel'),
	('Eddie', 'Raggett'),
	('Rustin', 'Abley'),
	('Zaccaria', 'Chattelaine'),
	('Nicolais', 'Howlings'),
	('Abbye', 'Symms'),
	('Royce', 'Tuckley'),
	('Benedicta', 'Wettern'),
	('Hedvige', 'Corker'),
	('Bartolemo', 'Toone'),
	('Kristi', 'Woodwind'),
	('Kirstin', 'Werndley'),
	('Jens', 'Gealle'),
	('Nikolas', 'Ganford'),
	('Rad', 'Biggerdike'),
	('Emmy', 'Harbor'),
	('Gianina', 'Lowfill'),
	('Josepha', 'Ceccoli'),
	('Mavra', 'Reyna'),
	('Ole', 'Hecks'),
	('Clotilda', 'Betz'),
	('Mela', 'Burbridge'),
	('Derril', 'Coenraets'),
	('Myrvyn', 'Keeton'),
	('Janean', 'Cranstone'),
	('Veriee', 'Melly'),
	('Bard', 'Clendennen'),
	('Tait', 'Lapham'),
	('Kalli', 'Tomczykowski'),
	('Georg', 'Dahlman'),
	('Margi', 'Collough'),
	('Marysa', 'Brimmell'),
	('Perl', 'Doucette'),
	('Mordy', 'Shillabeare'),
	('Alex', 'Carmack'),
	('Nonna', 'Buxam'),
	('Rebeka', 'Winders'),
	('Nedi', 'McTrustrie'),
	('Jobie', 'Skyram'),
	('Gillian', 'Borghese'),
	('Lezley', 'Cassedy'),
	('Barbaraanne', 'Reynalds'),
	('Karla', 'Shafe'),
	('Angelico', 'Rapp'),
	('Alissa', 'Crinidge'),
	('Carling', 'Mackie'),
	('Irene', 'Jindrak'),
	('Daisey', 'Guiton'),
	('Ruggiero', 'Sutheran'),
	('Lammond', 'Sneesby'),
	('Edward', 'Hopper'),
	('Skye', 'Skate'),
	('Cirillo', 'Mowat'),
	('Heidie', 'Brazur');


select lr.Name as LectureRoomName
from Schedules as s
join LectureRooms as lr on s.LectureRoomId = lr.Id
join Lectures as l on s.LectureId = l.Id
join Teachers as t on l.TeacherId = t.Id
where t.Name = 'Edward' and t.Surname = 'Hopper'

select t.Surname as AssistantSurname
from Groups as g
join GroupsLectures as gl on g.Id = gl.GroupId
join Lectures as l on gl.LectureId = l.Id
join Assistants as a on l.TeacherId = a.TeacherId
join Teachers as t on a.TeacherId = t.Id
where g.Name = 'F505'

select s.Name as SubjectName
from Lectures as l
join Subjects as s on l.SubjectId = s.Id
join Teachers as t on l.TeacherId = t.Id
join Groups as g on s.Id = g.DepartmentId
where t.Name = 'Alex' and t.Surname = 'Carmack' and g.Year = 5

select t.Surname as TeacherSurname
from Teachers as t
where t.Id not in (
select l.TeacherId
from Schedules as s
join Lectures as l on s.LectureId = l.Id
where s.DayOfWeek = 1
)

select lr.Name as LectureRoomName, lr.Building as BuildingNumber
from LectureRooms as lr
where lr.Id not in (
select s.LectureRoomId
from Schedules as s
where s.DayOfWeek = 3
and s.Week = 2
and s.Class = 3
)

select t.Name, t.Surname
from Teachers as t
join Faculties as f on t.Name = 'Computer Science'
where not exists (
    select 1
    from GroupsCurators as gc
    join Groups as g on gc.GroupId = g.Id
    join Teachers as tc on gc.CuratorId = tc.Id
    join Departments as d on g.DepartmentId = d.Id
    where tc.Id = t.Id and d.Name = 'Software Development'
)

select Building 
from (
    select Building from Faculties
    union
    select Building from Departments
    union
    select Building from LectureRooms
) as AllBuildings


select concat(t.Name, ' ', t.Surname) as FullName
from Deans as d
join Teachers as t on d.TeacherId = t.Id

union all

select concat(t.Name, ' ', t.Surname) as FullName
from Heads as h
join Teachers as t on h.TeacherId = t.Id

union all

select concat(t.Name, ' ', t.Surname) as FullName
from Teachers as t

union all

select concat(t.Name, ' ', t.Surname) as FullName
from Curators as c
join Teachers as t on c.TeacherId = t.Id

union all

select concat(t.Name, ' ', t.Surname) as FullName
from Assistants as a
join Teachers as t on a.TeacherId = t.Id

select distinct DayOfWeek
from Schedules
where LectureRoomId in (
    select Id
    from LectureRooms
    where Name in ('A311', 'A104')
)