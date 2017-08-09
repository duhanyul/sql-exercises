select  departments. as Department, concat(employees.first_name, ' ', employees.last_name) as Full_Name
from employees
join dept_emp on dept_emp.emp_no =  employees.emp_no
join departments on departments.dept_no = dept_emp.dept_no
join dept_manager on dept_manager.emp_no = dept_emp.emp_no
where dept_manager.to_date like '9999%';

select titles.title as titles, count(titles.emp_no) as Count
from titles
join dept_emp on dept_emp.emp_no = titles.emp_no
join departments on departments.dept_no = dept_emp.dept_no
where titles.to_date like '9999%'
and departments.dept_name = 'Customer Service'
group by titles.title;

select departments.dept_name as Department_Name, concat(employees.first_name, ' ',employees.last_name) as Name, salaries.salary as Salary
from employees
join dept_manager on dept_manager.emp_no = employees.emp_no
join departments on departments.dept_no = dept_manager.dept_no
join salaries on salaries.emp_no = dept_manager.emp_no
where dept_manager.to_date like '9999%'
and salaries.to_date like '9999%';
