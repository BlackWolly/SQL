select * from employees;
select * from salary;
select * from employee_salary;

select * from roles;
select * from roles_employee;

 -- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employees.employee_name, salary.monthly_salary 
from employees join employee_salary as es
on employees.id = es.employee_id
join salary
on es.salary_id = salary.id; 

 -- 2. Вывести всех работников у которых ЗП меньше 2000.

select employees.employee_name, salary.monthly_salary 
from employees join employee_salary as es
on employees.id = es.employee_id
join salary
on es.salary_id = salary.id
where salary.monthly_salary < 2000; 

 -- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select s.monthly_salary, e.employee_name  
from employees e right join employee_salary es 
on e.id = es.employee_id
right join salary s 
on es.salary_id = s.id
where e.employee_name is NULL;

 -- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select s.monthly_salary, e.employee_name  
from employees e right join employee_salary es 
on e.id = es.employee_id
right join salary s 
on es.salary_id = s.id
where e.employee_name is null and s.monthly_salary < 2000;

 -- 5. Найти всех работников кому не начислена ЗП.
 
select e.employee_name, e.id 
from employees e left join employee_salary es 
on e.id = es.employee_id 
where es.employee_id is null;

 -- 6. Вывести всех работников с названиями их должности.

select e.employee_name, r.role_name 
from employees e join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id;

 -- 7. Вывести имена и должность только Java разработчиков.

select e.employee_name, r.role_name 
from employees e join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id
where r.role_name like '%Java developer';

 -- 8. Вывести имена и должность только Python разработчиков.

select e.employee_name, r.role_name 
from employees e join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id
where r.role_name like '%Python developer';

 -- 9. Вывести имена и должность всех QA инженеров.

select e.employee_name, r.role_name 
from employees e join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id
where r.role_name like '%QA engineer';

 -- 10. Вывести имена и должность ручных QA инженеров.

select e.employee_name, r.role_name 
from employees e join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id
where r.role_name like '%Manual QA engineer';

 -- 11. Вывести имена и должность автоматизаторов QA

select e.employee_name, r.role_name 
from employees e join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id
where r.role_name like '%Automation QA engineer';

 -- 12. Вывести имена и зарплаты Junior специалистов

select e.employee_name, s.monthly_salary, r.role_name 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like 'Junior%';

 -- 13. Вывести имена и зарплаты Middle специалистов

select e.employee_name, s.monthly_salary, r.role_name 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like 'Middle%';

 -- 14. Вывести имена и зарплаты Senior специалистов

select e.employee_name, s.monthly_salary, r.role_name 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like 'Senior%';

 -- 15. Вывести зарплаты Java разработчиков

select s.monthly_salary, r.role_name 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like '%Java developer%';

 -- 16. Вывести зарплаты Python разработчиков

select s.monthly_salary, r.role_name 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like '%Python developer%';

 -- 17. Вывести имена и зарплаты Junior Python разработчиков

select e.employee_name, s.monthly_salary 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name = 'Junior Python developer';

 -- 18. Вывести имена и зарплаты Middle JS разработчиков

select e.employee_name, s.monthly_salary 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name = 'Middle JavaScript developer';

 -- 19. Вывести имена и зарплаты Senior Java разработчиков

select e.employee_name, s.monthly_salary 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name = 'Senior Java developer';

 -- 20. Вывести зарплаты Junior QA инженеров

select s.monthly_salary 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like 'Junior % QA engineer';

 -- 21. Вывести среднюю зарплату всех Junior специалистов

select avg(s.monthly_salary) 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like '%Junior%';

 -- 22. Вывести сумму зарплат JS разработчиков

select sum(s.monthly_salary) 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like '%JavaScript developer';

 -- 23. Вывести минимальную ЗП QA инженеров

select min(s.monthly_salary) 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like '%QA engineer';

 -- 24. Вывести максимальную ЗП QA инженеров

select max(s.monthly_salary) 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like '%QA engineer';

 -- 25. Вывести количество QA инженеров

select count(r.role_name) 
from employees e join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id
where r.role_name like '%QA engineer';

 -- 26. Вывести количество Middle специалистов.

select count(r.role_name) 
from employees e join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id
where r.role_name like 'Middle%';

 -- 27. Вывести количество разработчиков

select count(r.role_name) 
from employees e join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id
where r.role_name like '%developer';

 -- 28. Вывести фонд (сумму) зарплаты разработчиков.

select sum(s.monthly_salary) 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where r.role_name like '%developer';

 -- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию

select e.employee_name, r.role_name, s.monthly_salary 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
order by s.monthly_salary asc;

 -- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300

select e.employee_name, r.role_name, s.monthly_salary 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary asc;
 -- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

select e.employee_name, r.role_name, s.monthly_salary 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where s.monthly_salary = 2300
order by s.monthly_salary asc;
 -- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select e.employee_name, r.role_name, s.monthly_salary 
from employees e join employee_salary es 
on e.id = es.employee_id 
join salary s 
on es.salary_id = s.id 
join roles_employee re 
on e.id = re.employee_id 
join roles r 
on re.role_id = r.id 
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary asc;