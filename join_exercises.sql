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
