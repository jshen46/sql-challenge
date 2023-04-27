create table departments(
dept_no varchar(4) not null,
dept_name varchar(50) not null,
primary key (dept_no)
);

create table salaries(
emp_no int,
salary int,
primary key (emp_no)
);

create table titles(
title_id varchar(6),
title varchar (50),
primary key (title_id) 
);

create table employees(
emp_no int,
emp_title varchar (5),
birth_date date,
first_name varchar(30),
last_name varchar(30),
sex varchar(1),
hire_date date,
primary key (emp_no),
foreign key	(emp_title) REFERENCES titles(title_id)
);

create table dept_emp (
emp_no int,
dept_no varchar(4),
foreign key (emp_no) REFERENCES employees(emp_no),
foreign key (dept_no) REFERENCES departments(dept_no)
);

create table dept_manager(
dept_no varchar(4),
emp_no int,
foreign key (emp_no) REFERENCES employees(emp_no),
foreign key (dept_no) REFERENCES departments(dept_no)
);
