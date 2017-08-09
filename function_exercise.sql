select concat(count(*),gender) from employees 
		where first_name =  'Irena'
			or first_name = 'Vidya'
			or first_name = 'Maya'
			group by gender;

SELECT * from employees
	where last_name like "e%"
	or last_name like '%e'
order by emp_no desc;
	
SELECT concat(first_name,last_name)from employees
	where last_name like "e%"
	and last_name like '%e';


select datediff(curdate(),hire_date) from employees
	where hire_date between '1990-01-01' and '1999-12-31'
	and birth_date like '%12-25'
	order by birth_date,hire_date desc;

select count(first_name),first_name,last_name from employees
	where last_name like '%q%'
	and last_name not like '%qu%'
	group by first_name,last_name
	order by first_name,last_name;

select * from employees
	where birth_date like '%12-25';

select * from employees
	where last_name like '%q%';