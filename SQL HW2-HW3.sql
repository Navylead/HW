-- Создать таблицу employees
create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

-- Наполнить таблицу employee 70 строками
insert into employees(employee_name)
values ('John Doe'),
	   ('Bill Wyman'),
	   ('Jim Reeves'),
	   ('Bill Paxton'),
	   ('John Fogerty'),
	   ('John Ritter'),
	   ('Amy Lee'),
	   ('Robert Cost'),
	   ('Angela Davis'),
	   ('Frank Dunn'),
	   ('Alex Mitchel'),
	   ('Anna Tolkunova'),
	   ('Dean James'),
	   ('Kirill Pirogov'),
	   ('Alan Fitch'),
	   ('Maria Nefedova'),
	   ('Al Green'),
	   ('Evgeny Zaitsev'),
	   ('Svetlana Dudkina'),
	   ('Anton Garanin'),
	   ('Dmitri Popov'),
	   ('Artur Bogdanov'),
	   ('Timur Shakirov'),
	   ('Vladimir Gavrilov'),
	   ('Ilia Bolotov'),
	   ('Ekaterina Lomova'),
	   ('Daria Smirnova'),
	   ('Daria Shilova'),
	   ('Maxie Devine'),
	   ('Oleg Volkov'),
	   ('Alexander Volkov'),
	   ('Kathy Delgado'),
	   ('Rebecca Williams'),
	   ('Calvin Williams'),
	   ('Clarence Thompson'),
	   ('Anna Martin'),
	   ('William Strickland'),
	   ('Diane Sherman'),
	   ('Herman Paul'),
	   ('Jorge Graham'),
	   ('Robert Baker'),
	   ('Maria Lewis'),
	   ('Bruce Adams'),
	   ('Armando Martin'),
	   ('Josephine Smith'),
	   ('David Shaw'),
	   ('Willie Adams'),
	   ('Julie Davis'),
	   ('Robert McDonald'),
	   ('Darrell Morris'),
	   ('William Daniels'),
	   ('Janet Hill'),
	   ('Esther West'),
	   ('Marlene Sanders'),
	   ('Cheryl Brooks'),
	   ('Jim Cole'),
	   ('Nancy Campbell'),
	   ('Kimberly Harris'),
	   ('John Carpenter'),
	   ('Margie Baker'),
	   ('Sam Neil'),
	   ('Jean Cross'),
	   ('James King'),
	   ('Robert Fisher'),
	   ('Katie Perry'),
	   ('Wanda Shelton'),
	   ('Michael Wells'),
	   ('Walter Fuller'),
	   ('Sheila Jones'),
	   ('Carl Bradley');
	  
	  
	 
-- Создать таблицу salary
create table salary(
	id serial primary key,
	monthly_salary int not null
);

-- Наполнить таблицу salary 15 строками
insert into salary (monthly_salary)
	values (1000),
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
		   (2400);
		  
-- Создать таблицу employee_salary
create table employee_salary (
	id serial  primary key,
	employee_id int not null unique,
	salary_id int not null
);
select * from employee_salary;
select * from employees;
select * from salary;

-- Наполнить таблицу employee_salary 40 строками (в 10 строк из 40 вставить несуществующие employee_id)
insert into employee_salary (employee_id, salary_id)
	values (71, 15),
		   (81, 2),
		   (91, 6),
		   (72, 6),
		   (82, 1),
		   (92, 1),
		   (100, 12),
		   (111, 7),
		   (99, 5),
		   (77, 4),
		   (7, 2),
		   (55, 1),
		   (44, 6),
		   (15, 9),
		   (69, 8),
		   (42, 7),
		   (13, 6),
		   (25, 11),
		   (46, 15),
		   (41, 12),
		   (5, 13),
		   (10, 13),
		   (16, 13),
		   (22, 14),
		   (23, 7),
		   (50, 1),
		   (63, 3),
		   (47, 5),
		   (14, 7),
		   (4, 9),
		   (1, 11),
		   (45, 13),
		   (48, 15),
		   (19, 2),
		   (58, 4),
		   (43, 6),
		   (34, 8),
		   (32, 10),
		   (24, 12),
		   (8, 14);
		  
-- Создать таблицу roles
create table roles(
id serial primary key,
role_name int not null unique 
);
select * from roles;
-- Поменять тип столба role_name с int на varchar(30)
alter table roles alter column role_name type varchar(30) using role_name::varchar(30);

-- Наполнить таблицу roles 20 строками
insert into roles(role_name)
	values ('Junior Python developer'),
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

-- Создать таблицу roles_employee
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees(id),
foreign key (role_id)
references roles(id)
);
select * from roles_employee;

--Наполнить таблицу roles_employee 40 строками:
insert into roles_employee(employee_id, role_id)
values (2, 2),
	   (4, 2),
	   (6, 4),
	   (8, 16),
	   (10, 20),
	   (12, 3),
	   (14, 11),
	   (16, 3),
	   (18, 13),
	   (20, 4),
	   (1, 7),
	   (3, 7),
	   (5, 14),
	   (7, 15),
	   (9, 1),
	   (11, 12),
	   (13, 20),
	   (15, 18),
	   (17, 19),
	   (19, 6),
	   (22, 6),
	   (24, 5),
	   (26, 5),
	   (28, 4),
	   (30, 11),
	   (21, 19),
	   (23, 15),
	   (25, 10),
	   (27, 14),
	   (29, 10),
	   (32, 9),
	   (34, 7),
	   (36, 5),
	   (38, 1),
	   (40, 4),
	   (31, 8),
	   (33, 15),
	   (35, 16),
	   (37, 3),
	   (39, 4);

	   
--	  Home work 3 -------------------------------------------------------------------------------------------
	  select * from roles_employee;
	  select * from employees;
	  select * from roles;
	  select * from salary;
	  select * from employee_salary;
	 
--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary from employee_salary es
	join employees e on es.employee_id = e.id
	join salary s on es.salary_id = s.id;

--2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name, monthly_salary from employee_salary es
    join employees e on es.employee_id = e.id
	join salary s on es.salary_id = s.id
where s.monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select es.salary_id, s.monthly_salary, es.employee_id from employee_salary es
join salary s on es.salary_id = s.id
where es.employee_id > 70;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select es.salary_id, s.monthly_salary, es.employee_id from employee_salary es
join salary s on es.salary_id = s.id
where es.employee_id > 70 and monthly_salary < 2000;

--5. Найти всех работников кому не начислена ЗП.
select employee_name, salary_id from employee_salary es
right join employees e on employee_id = e.id
where salary_id is null;

--6. Вывести всех работников с названиями их должности.
select employee_name, role_name from roles_employee re
join employees e on employee_id = e.id
join roles r on role_id = r.id;

--7. Вывести имена и должность только Java разработчиков.
select employee_name, role_name from roles_employee re
join employees e on employee_id = e.id
join roles r on role_id = r.id
where role_name like '%Java%';

--8. Вывести имена и должность только Python разработчиков.
select employee_name, role_name from roles_employee re
join employees e on employee_id = e.id
join roles r on role_id = r.id
where role_name like '%Python%';

--9. Вывести имена и должность всех QA инженеров.
select employee_name, role_name from roles_employee re
join employees e on employee_id = e.id
join roles r on role_id = r.id
where role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.
select employee_name, role_name from roles_employee re
join employees e on employee_id = e.id
join roles r on role_id = r.id
where role_name like '%QA%' and role_name like '%Manual%';

--11. Вывести имена и должность автоматизаторов QA
select employee_name, role_name from roles_employee re
join employees e on re.employee_id = e.id
join roles r on re.role_id = r.id
where role_name like '%QA%' and role_name like '%Automation%';

select * from roles_employee;
select * from employees;
select * from roles;
select * from salary;
select * from employee_salary;

--12. Вывести имена и зарплаты Junior специалистов
select employee_name, monthly_salary, role_name from employee_salary es 
join employees e on e.id = es.employee_id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where role_name like '%Junior%';

--13. Вывести имена и зарплаты Middle специалистов
select employee_name, monthly_salary, role_name from employee_salary es 
join employees e on e.id = es.employee_id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов
select employee_name, monthly_salary, role_name from employee_salary es 
join employees e on e.id = es.employee_id
join salary s on s.id = es.salary_id
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков
select monthly_salary, role_name from employee_salary es 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
--where role_name like '%Java%';

--16. Вывести зарплаты Python разработчиков
select monthly_salary, role_name from employee_salary es 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where role_name like '%Python%';

--17. Вывести имена и зарплаты Junior Python разработчиков
select monthly_salary, role_name from employee_salary es 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where role_name like '%Junior%' and role_name like '%Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков
select monthly_salary, role_name from employee_salary es 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where role_name like '%Middle%' and role_name like '%JavaScript%';

--19. Вывести имена и зарплаты Senior Java разработчиков
select monthly_salary, role_name from employee_salary es 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where role_name like '%Senior%' and role_name like '%Java%';

--20. Вывести зарплаты Junior QA инженеров
select monthly_salary, role_name from employee_salary es 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where role_name like '%Junior%' and role_name like '%QA%';

--21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary) from employee_salary es 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where role_name like '%Junior%';

--22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) from employee_salary es 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where role_name like '%JavaScript%';

--23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) from employee_salary es 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where role_name like '%QA%';

--24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) from employee_salary es 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id
where role_name like '%QA%';

--25. Вывести количество QA инженеров
select count(role_name) from roles_employee re 
join roles r on r.id = re.role_id
where role_name like '%QA%';

--26. Вывести количество Middle специалистов.
select count(role_name) from roles_employee re 
join roles r on r.id = re.role_id
where role_name like '%Middle%';

--27. Вывести количество разработчиков
select count(role_name) from roles_employee re 
join roles r on r.id = re.role_id
where role_name like '%developer%';

--28. Вывести фонд (сумму) зарплаты всех работников разработчиков.
select sum(monthly_salary) from employee_salary es 
join salary s on s.id = es.salary_id
join roles_employee re on es.employee_id = re.employee_id 
join roles r on r.id = re.role_id
where role_name like '%developer%'

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary from roles_employee re 
join employees e on e.id = re.employee_id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
order by monthly_salary asc;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary from roles_employee re 
join employees e on e.id = re.employee_id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where monthly_salary between 1700 and 2300
order by monthly_salary asc;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary from roles_employee re 
join employees e on e.id = re.employee_id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where monthly_salary < 2300
order by monthly_salary asc;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary from roles_employee re 
join employees e on e.id = re.employee_id 
join roles r on r.id = re.role_id
join employee_salary es on es.employee_id = re.employee_id 
join salary s on s.id = es.salary_id
where monthly_salary in (1100,1500,2000)
order by monthly_salary asc;




