use employees;

describe employees;


# grabs the first name and last name for employees whose last name
# starts or ends with an e and then concatenates the two
select concat(first_name, ' ', last_name) from employees
where last_name like 'E%' or last_name like '%e';



# grabs employees born on christmas day that were hired in the 90s

# for each of these employees, datediff() calculates the difference between

# the current date (now()) and the date they were hired (hire_date) to find

# the total number of days that employee has spent with the company
select datediff(now(), hire_date), last_name from employees
where birth_date like '%12-25' && hire_date like '199%'
order by birth_date, hire_date desc;

select datediff(curdate(), hire_date) from employees
where birth_date like '%12-25' && hire_date like '199%'
order by hire_date desc, birth_date;



#/////////////////
# select * from employees
# where (first_name = 'Irena'
#          or first_name = 'Vidya'
#          or first_name = 'Maya')
# order by last_name, first_name;
#
# select * from employees
# where (first_name = 'Irena'
#          or first_name = 'Vidya'
#          or first_name = 'Maya')
#   and gender = 'M';
#
#
# select * from employees
# where last_name like 'E%'
# order by emp_no desc;
#
# select * from employees
# where last_name like 'E%' or last_name like '%e';
#
# select * from employees
# where last_name like '%q%' and last_name not like '%qu%';
#
# select * from employees
# where hire_date like '199%';
