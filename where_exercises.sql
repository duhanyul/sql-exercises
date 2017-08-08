use employees;

select * from employees 
	where gender = 'm'
		and (first_name =  'Irena'
			or first_name = 'Vidya'
			or first_name = 'Maya');

SELECT * from employees
	where last_name like "e%"
	or last_name like '%e';
	
SELECT * from employees
	where last_name like "e%"
	and last_name like '%e';


select * from employees
	where hire_date between '1990-01-01' and '1999-12-31'
	and birth_date like '%12-25';
	
select * from employees
	where last_name like '%q%'
	and last_name not like '%qu%';

select * from employees
	where birth_date like '%12-25';

select * from employees
	where last_name like '%q%';