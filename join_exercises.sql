# # Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
# use employees;
#
# select departments.dept_name as 'Department Name', concat(employees.first_name, ' ', employees.last_name) as 'Department Manager'
# from departments
# join dept_manager
#   on dept_manager.dept_no = departments.dept_no
# join employees
#   on employees.emp_no = dept_manager.emp_no
# where dept_manager.to_date > now()
# order by `Department Name`;
#
#
# -- refactored the above using aliases
# select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
# from departments as d
# join dept_manager as dm
#   on dm.dept_no = d.dept_no
# join employees as e
#   on e.emp_no = dm.emp_no
# where dm.to_date > now()
# order by `Department Name`;

# /////////////////////////////////////
# FIRST PART OF EXERCISE
# /////////////////////////////////////
# create database if not exists join_test_db;
#
# use join_test_db;
#
# drop table if exists users;
# drop table if exists roles;
# CREATE TABLE roles (
#   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   name VARCHAR(100) NOT NULL,
#   PRIMARY KEY (id)
# );
#
# # drop table if exists users;
# CREATE TABLE users (
#   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#   name VARCHAR(100) NOT NULL,
#   email VARCHAR(100) NOT NULL,
#   role_id INT UNSIGNED DEFAULT NULL,
#   PRIMARY KEY (id),
#   FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
# ('bob', 'bob@example.com', 1),
# ('joe', 'joe@example.com', 2),
# ('sally', 'sally@example.com', 3),
# ('adam', 'adam@example.com', 3),
# ('jane', 'jane@example.com', null),
# ('mike', 'mike@example.com', 2),
# ('cindy', 'cindy@example.com', 2),
# ('bobby', 'bobby@example.com', 2),
# ('michael', 'michael@example.com', 3),
# ('kyle', 'kyle@example.com', 3);
#
# select * from users;
# select * from roles;
#
#
# select users.name, roles.name
# from users
# join roles on users.role_id = roles.id;
#
# select r.name, count(*)
# from users as u
# join roles as r
# on u.role_id = r.id
# group by r.name;
#
# select u.name as user_name, r.name as role_name
# from users as u
# right join roles as r
#     on u.role_id = r.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
# LEFT JOIN roles
# ON users.role_id = roles.id;


# select u.name as user_name, r.name as role_name
# from roles as r
# right join users as u
# on u.role_id = r.id;
-- right joining from roles is equivalent to left joining from users


#////////////////////////////////
# EMPLOYEES DATABASE EXERCISES
# //////////////////////////////
use employees;

-- 2. Using the example in the Associative Table Joins section as a guide, write a query that shows
-- each department along with the name of the current manager for that department.
select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
from departments as d
join dept_manager as dm
on dm.dept_no = d.dept_no
join employees as e
on e.emp_no = dm.emp_no
where dm.to_date > now()
order by d.dept_name;

-- 3. find the name of all departments currently managed by women
select d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Manager Name'
from employees as e
join dept_manager as dm
on e.emp_no = dm.emp_no
join departments as d
on d.dept_no = dm.dept_no
where dm.to_date > now() and e.gender = 'F'
order by d.dept_name;

-- 4. Find the current titles of employees currently working in the Customer Service department.
select t.title as 'Title', count(*) as 'Count'
from titles as t
join employees as e
on e.emp_no = t.emp_no
join dept_emp as de
on de.emp_no = e.emp_no
join departments as d
on d.dept_no = de.dept_no
where t.to_date > now() and d.dept_name = 'Customer Service'
group by t.title;

-- 5. Find the current salary of all current managers.
select d.dept_name as 'Department Name',
 concat(e.first_name, ' ', e.last_name) as 'Name',
 s.salary as 'Salary'
from departments as d
join dept_manager as dm
on dm.dept_no = d.dept_no
join employees as e
on e.emp_no = dm.emp_no
join salaries as s
on s.emp_no = e.emp_no
where dm.to_date > now() and s.to_date > now()
order by d.dept_name;

-- bonus
select concat(e.first_name, ' ', e.last_name) as 'Employee Name',
  d.dept_name as 'Department Name',
  concat(e2.first_name, ' ', e2.last_name) as 'Manager Name'
from employees as e
join dept_emp as de
on de.emp_no = e.emp_no
join departments as d
on d.dept_no = de.dept_no
join dept_manager as dm
on dm.dept_no = d.dept_no
join employees as e2
on e2.emp_no = dm.emp_no
where dm.to_date > now() and de.to_date > now()
order by d.dept_name;

select first_name, last_name
from employees
where emp_no in (
  select emp_no
  from dept_emp
  join departments as
      d on dept_emp.dept_no = d.dept_no
  where to_date > now() and d.dept_name = 'Customer Service'
);
-- display the name and the department the person works in