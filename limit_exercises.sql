use employees;
# describe titles;
-- grabs only unique employee last names
-- orders those names alphabetically
-- and only grabs first ten of the distinct ordered names
select distinct last_name from employees
order by last_name desc
limit 10;

# grabs employees with christmas birthday and hired in the 90s
# orders the employees by birth date(year) and then
# within that ordered set, orders employees by the
select * from employees
where birth_date like '%12-25' && hire_date like '199%'
order by birth_date, hire_date desc
limit 5 offset 45;
