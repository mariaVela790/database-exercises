# select * from employees;
describe titles;
select distinct title from titles;

select last_name from employees
where last_name like 'E%e'
group by last_name, first_name;

select last_name, count(*) from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name
order by count(last_name);

select count(*), gender from employees
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender;

select count(first_name), first_name from employees
group by first_name;