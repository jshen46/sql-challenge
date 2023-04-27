-- Question 1
select e.emp_no, last_name, first_name, sex, salary 
from employees e left join salaries s
on e.emp_no = s.emp_no;

-- Question 2
select first_name, last_name, hire_date 
from employees 
where hire_date >= '1986-01-01' and hire_Date <= '1986-12-31';

-- Question 3
select dm.dept_no, dept_name, e.emp_no, last_name, first_name 
from dept_manager dm inner join departments d
on dm.dept_no = d.dept_no 
inner join employees e
on dm.emp_no = e.emp_no;

-- Question 4
select de.dept_no, de.emp_no, last_name, first_name, dept_name
from dept_emp de inner join employees e 
on de.emp_no = e.emp_no
inner join departments d
on de.dept_no = d.dept_no;

-- Question 5
select first_name, last_name, sex 
from employees 
where first_name = 'Hercules' and last_name like 'B%';

-- Question 6
select e.emp_no, last_name, first_name 
from employees e inner join dept_emp de
on e.emp_no = de.emp_no 
inner join departments d
on de.dept_no = d.dept_no
where d.dept_name = 'Sales';

-- Question 7
select de.emp_no, last_name, first_name, dept_name 
from employees e inner join dept_emp de
on e.emp_no = de.emp_no 
inner join departments d
on de.dept_no = d.dept_no
where d.dept_name in ('Sales', 'Development');

-- Question 8
select last_name, count(last_name) as counts 
from employees 
group by last_name
order by counts desc;