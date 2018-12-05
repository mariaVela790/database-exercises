use employees;

select first_name, last_name, birth_date
from employees
where emp_no in (
    select emp_no
    from dept_manager
)
limit 10;



-- Solving the problem in two parts:

-- grabs the hire_date for employee 101010, which is 1990-10-22
select hire_date from employees
where emp_no = '101010';

-- uses the date we found from before (1990-10-22) to grab employee names with
-- that same hire_date
select concat(first_name, ' ', last_name) as 'Name'
from employees
where hire_date in ('1990-10-22');


-- This sub-query replaces the two part way to solve the problem
select concat(first_name, ' ', last_name) as 'Name'
from employees
where hire_date in(
    -- this creates that set containing the hire_date
    -- of employee 101010, which is 1990-10-22
    select hire_date
    from employees
    where emp_no = '101010'
          );-- this outer where grabs the employees whose hire_date matches
          -- the hire_date in the set

select title from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
    );

select title from titles
where emp_no in (
    select emp_no
    from employees
    where first_name = 'Aamod'
    )
group by title;

select concat(first_name, ' ', last_name)
from employees
where emp_no in (
    select emp_no
    from dept_manager
    where to_date > now()
    ) and gender = 'F';

select dept_name
from departments
where dept_no in (
    select dept_no from dept_manager
    where emp_no in(
        select emp_no from employees
        where gender = 'F'
        )
      and to_date > now()
    );

select first_name, last_name
from employees
where emp_no in (
    select emp_no
    from salaries
    where salary in (
        select max(salary) from salaries
        )
    );
