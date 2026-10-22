-- create table employees

create table employees(
employee_id int primary key,
employee_name varchar(50) not null,
gender enum('M','F'),
age int check(age>=18),
hire_date date default(current_date),
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),
foreign key (department_id) references departments(department_id),
foreign key (location_id) references location(location_id)
);


