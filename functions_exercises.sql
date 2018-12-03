use employees;

describe employees;

# select * from employees
# where first_name in ('Irena', 'Vidya', 'Maya');
select * from employees
where (first_name = 'Irena'
         or first_name = 'Vidya'
         or first_name = 'Maya')
order by last_name, first_name;

select * from employees
where (first_name = 'Irena'
         or first_name = 'Vidya'
         or first_name = 'Maya')
  and gender = 'M';


select * from employees
where last_name like 'E%'
order by emp_no desc;

select * from employees
where last_name like 'E%' or last_name like '%e';

select concat(first_name, ' ', last_name) from employees
where last_name like 'E%' or last_name like '%e';

select * from employees
where hire_date like '199%';
#
# select * from employees
# where birth_date like '%-12-25';
select datediff(curdate(), hire_date) from employees
where birth_date like '%12-25' && hire_date like '199%'
order by birth_date, hire_date desc;

select * from employees
where last_name like '%q%' and last_name not like '%qu%';

