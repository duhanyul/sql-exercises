use employees;

select distinct title from titles
	order by title;

select * from employees
	where last_name like "e%"
	and last_name like '%e'
	and first_name like "e%"
	and first_name like "%e"
	group by last_name;
	
select * from employees
	where last_name like '%q%'
	and last_name not like '%qu%'
	GROUP BY last_name;