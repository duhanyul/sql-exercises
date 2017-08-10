
select emp_no
from employees
where hire_date = '1990-10-22'
 and emp_no 
 in (
	select emp_no
	from employees
);

select title
from titles
where emp_no 
in(
	select emp_no
	from employees
	where first_name = 'Aamod'
)
group by title;

select first_name , last_name
from employees
where gender = 'f'
and emp_no 
in
(
	select emp_no
	from dept_manager
	where to_date like '9999%'
);

select dept_name
from departments
where dept_no
in(
	select dept_no
	from dept_manager
	where to_date like '9999%'
	and emp_no
	in(
		select emp_no
		from employees
		where gender = 'f'
	)
);
-- avg salaray of current managers by gender --
select employees.gender as Gender, avg(salaries.salary)
from salaries
join dept_manager on dept_manager.emp_no = salaries.emp_no
join employees on employees.emp_no = dept_manager.emp_no
where dept_manager.to_date like '9999%'
and salaries.to_date like '9999%'
group by gender;
-- historical average salary of managers by gender
select employees.gender as Gender, avg(salaries.salary)
from salaries
join dept_manager on dept_manager.emp_no = salaries.emp_no
join employees on employees.emp_no = dept_manager.emp_no
group by gender;

-- average salary by gender for current employees
select employees.gender as Gender, avg(salaries.salary)
from salaries
join employees on employees.emp_no = salaries.emp_no
where salaries.to_date like '9999%'
group by gender;
-- average salary by gender historically 
select employees.gender as Gender, avg(salaries.salary)
from salaries
join employees on employees.emp_no = salaries.emp_no
group by gender;

-- most common birthdate
select birth_date, count(birth_date)
from employees
group by birth_date
order by count(birth_date) desc
limit 1;
-- least common birthdate
select birth_date, count(birth_date)
from employees
group by birth_date
order by count(birth_date)
limit 1;

-- avg salary of managers by department
select departments.dept_name, avg(salaries.salary)
from salaries
join dept_manager on dept_manager.emp_no = salaries.emp_no
join departments on departments.dept_no = dept_manager.dept_no
group by departments.dept_name;

-- Current number of employees per department
select departments.dept_name as Department, count(dept_emp.emp_no) as Current_Employees
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
where dept_emp.to_date like '9999%'
group by departments.dept_name;


select departments.dept_name as Department , avg(salaries.salary) as Average_Salary
from salaries
join dept_emp on dept_emp.emp_no = salaries.emp_no
join departments on departments.dept_no = dept_emp.dept_no
group by departments.dept_name;


select departments.dept_name as Department , avg(salaries.salary) as Average_Salary
from salaries
join dept_emp on dept_emp.emp_no = salaries.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where dept_emp.to_date between '1980-01-01' and '1989-12-31'
group by departments.dept_name;



