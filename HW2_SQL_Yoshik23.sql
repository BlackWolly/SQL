/* SQL_DDL
Первая часть.

Таблица employees

Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками. */


create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(employee_name)
values 
		('Aisha Begley'), 
		('Alma Sebastian'), 
		('Ben Ochoa'), 
		('Cian Loper'), 
		('Diego Truitt'), 
		('Emily Mcculley'), 
		('Gracie Crum'), 
		('Hector Gervais'), 
		('Jayce Suiter'),
		('Juniper Piercy'),
		('Keagan Million'), 
		('Khloe Machado'), 
		('Lincoln Cobbs'), 
		('Makayla Bender'), 
		('Maya Mudd'), 
		('Micheal Peavy'), 
		('Miranda Cantor'), 
		('Olivia Mcguire'), 
		('Sammy Mcnamara'),
		('Soren Anton'), 
		('Tatum Schnell'),
		('Zion Matney'), 
		('Anne Gifford'), 
		('Asa Worthy'),
		('Ashley Bolling'),
		('Briella Newlin'),
		('Chace Luevano'), 
		('Chiara Friel'),
		('Dean Witter'), 
		('Dhruv Kyle'),
		('Diana Coon'), 
		('Eva Jones'), 
		('Gabriel Yager'),
		('Jaime Oberg'), 
		('Kaiya Cornejo'), 
		('Khadija Harr'), 
		('Leia Talley'), 
		('Lyla Sherrill'), 
		('Macey Rudy'),
		('Madilynn Knox'), 
		('Marissa Chism'), 
		('Niko Beery'), 
		('Nolan Gil'), 
		('Reuben Carmona'), 
		('Saif Mix'), 
		('Sloane Yount'),
		('Thiago Rock'),
		('Vivaan Bayne'), 
		('Breanna Waldon'),
		('Byron Bisson'), 
		('Byron Hand'), 
		('Chad Garnett'), 
		('Christina Coon'),
		('Cullen Louis'),
		('Dakota Hash'), 
		('Devin Dooley'), 
		('Elise Sweat'),
		('Emerson Gower'), 
		('Grace Haire'), 
		('Isaac Suzuki'), 
		('Isis Haro'), 
		('Jackson Luckey'),
		('James Honea'),
		('Kali Marriott'), 
		('Kara Race'),
		('Karlee Moffitt'), 
		('Kenneth Mackay'),
		('Leo Converse'),
		('Liam Titus'),
		('Luca Chavis');
	
/* Таблица salary

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
*/

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values
		(1000),	
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500);

/* Таблица employee_salary

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id */
	
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values 
		(68, 5),
		(2, 14),
		(50, 10),
		(45, 8),
		(33, 3),
		(12, 1),
		(7, 5),
		(59, 12),
		(25, 15),
		(35, 1),
		(28, 3),
		(15, 7),
		(11, 9),
		(3, 16),
		(31, 10),
		(67, 12),
		(55, 9),
		(49, 11),
		(46, 14),
		(36, 1),
		(21, 6),
		(37, 7),
		(60, 10),
		(66, 9),
		(18, 8),
		(24, 16),
		(14, 13),
		(4, 4),
		(53, 13),
		(70, 10),
		(71, 4),
		(85, 9),
		(105, 13),
		(79, 3),
		(80, 1),
		(99, 16),
		(206, 7),
		(100, 4),
		(120, 9),
		(72, 10);
	
/* Таблица roles

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:
*/

create table roles(
	id serial primary key,
	role_name int not null unique
);

alter table roles 
alter column role_name type varchar(30);
		
insert into roles(role_name)
values 
		('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');

/* Таблица roles_employee

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:
*/
	
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key(employee_id) references employees(id),
	foreign key(role_id) references roles(id)	
);

insert into roles_employee(employee_id, role_id)
values 
		(6, 16),
		(20, 15),
		(21, 15),
		(16, 13),
		(38, 7),
		(48, 12),
		(3, 17),
		(5, 18),
		(55, 18),
		(70, 10),
		(10, 4),
		(15, 5),
		(22, 6),
		(32, 11),
		(39, 20),
		(40, 19),
		(56, 13),
		(8, 9),
		(17, 14),
		(27, 10),
		(37, 1),
		(47, 2),
		(57, 5),
		(67, 9),
		(36, 10),
		(12, 9),
		(61, 1),
		(51, 4),
		(41, 18),
		(31, 19),
		(24, 20),
		(44, 14),
		(34, 17),
		(58, 12),
		(14, 15),
		(4, 4),
		(19, 1),
		(29, 7),
		(50, 8),
		(53, 18);	
