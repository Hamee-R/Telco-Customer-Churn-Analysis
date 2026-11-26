#CREATING DATABASE
CREATE DATABASE Dev_recruit_training;
USE Dev_recruit_training;

#CREATING TABLE
create table employee_demographics
(
employee_id INT NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT,
gender VARCHAR(10),
birth_date DATE,
PRIMARY KEY (employee_id)
);

 #SELECT STATEMENT
SELECT * FROM employee_demographics;


#INSERT STATEMENT
Insert into employee_demographics(employee_id,first_name,last_name,age,gender,birth_date)
VALUES
(1,'Leslie', 'Knope', 44, 'Female','1979-09-25'),
(3,'Tom', 'Haverford', 36, 'Male', '1987-03-04'),
(4, 'April', 'Ludgate', 29, 'Female', '1994-03-27'),
(5, 'Jerry', 'Gergich', 61, 'Male', '1962-08-28'),
(6, 'Donna', 'Meagle', 46, 'Female', '1977-07-30'),
(7, 'Ann', 'Perkins', 35, 'Female', '1988-12-01'),
(8, 'Chris', 'Traeger', 43, 'Male', '1980-11-11'),
(9, 'Ben', 'Wyatt', 38, 'Male', '1985-07-26'),
(10, 'Andy', 'Dwyer', 34, 'Male', '1989-03-25'),
(11, 'Mark', 'Brendanawicz', 40, 'Male', '1983-06-14'),
(12, 'Craig', 'Middlebrooks', 37, 'Male', '1986-07-27');


#CREATING employee_salary TABLE
create table employee_salary
(
employee_id INT NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50),
occupation VARCHAR(50),
salary INT,
dept_id INT
);

#CREATING employee_salary TABLE
create table employee_salary
(
employee_id INT NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50),
occupation VARCHAR(50),
salary INT,
dept_id INT
);

#INSERT STATEMENT
INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES
(1, 'Leslie', 'Knope', 'Deputy Director of Parks and Recreation', 75000,1),
(2, 'Ron', 'Swanson', 'Director of Parks and Recreation', 70000,1),
(3, 'Tom', 'Haverford', 'Entrepreneur', 50000,1),
(4, 'April', 'Ludgate', 'Assistant to the Director of Parks and Recreation', 25000,1),
(5, 'Jerry', 'Gergich', 'Office Manager', 50000,1),
(6, 'Donna', 'Meagle', 'Office Manager', 60000,1),
(7, 'Ann', 'Perkins', 'Nurse', 55000,4),
(8, 'Chris', 'Traeger', 'City Manager', 90000,3),
(9, 'Ben', 'Wyatt', 'State Auditor', 70000,6),
(10, 'Andy', 'Dwyer', 'Shoe Shiner and Musician', 20000, NULL),
(11, 'Mark', 'Brendanawicz', 'City Planner', 57000, 3),
(12, 'Craig', 'Middlebrooks', 'Parks Director', 65000,1);


#CREATING parks_departments TABLE
create table parks_departments
(
department_id INT NOT NULL auto_increment,
department_name VARCHAR(50)  NOT NULL,
primary key (department_id)
);


#INSERT STATEMENT
INSERT INTO parks_departments (department_name)
VALUES
('Parks and Recreation'),
('Animal Control'),
('Public Works'),
('Healthcare'),
('Library'),
('Finance');

#SELECT STATEMENT
select * from parks_departments;

#ORDER BY AND LIMIT
select employee_id, first_name, last_name, salary, salary * 100 as salarymultiplied, (salary+1) * 100 as incremented_salary from employee_salary
Order by first_name limit 4, 5 ;

select gender, AVG(age) from employee_demographics
Group by gender
having  AVG(age) > 10;

#COUNT, GROUP BY STATEMENT
select count(first_name) from employee_demographics;
select first_name, count(*) from employee_demographics
group by first_name;

#ORDER BY DESC
select * from employee_demographics
order by age desc, gender;

#AGGREGATE FUNCTION
select avg(salary) from employee_salary;


#LIKE
select * from employee_demographics
where first_name like 'u%';

#OPERATIONS
select * from employee_demographics
where age >= 10 AND gender = 'Female';

#IS NULL AND IS NOT NULL
select count(last_name) from employee_demographics
where last_name IS NOT NULL

select * from employee_demographics
where last_name IS NULL

