-- 1. List EE Number, Last Name, First Name, Gender, Salary

select employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary 
from employees 
join salaries 
on salaries.emp_no = employees.emp_no;  

-- 2. List EE hired in 1986

select first_name, last_name, hire_date
from employees 
where hire_date between '1986-01-01' and '1986-12-31';

-- 3. List the Manager of each Department: EE Number, Last Name, First Name, Department Name
select * from dept_manager;
select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from departments
join dept_manager
on departments.dept_no = dept_manager.dept_no
join employees on dept_manager.emp_no=employees.emp_no;

-- 4. List the Department of each employee: EE Number, Last Name, First Name, Department Name

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from departments
join dept_emp
on departments.dept_no = dept_emp.dept_no
join employees on dept_emp.emp_no=employees.emp_no;

-- 5. List all employees whose first name is "Hercules" and last name begins with "B"

select first_name, last_name
from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6. List all employees in the Sales Department: EE Number, Last Name, First Name, Department Name

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from departments
join dept_emp
on departments.dept_no = dept_emp.dept_no
join employees on dept_emp.emp_no=employees.emp_no
where departments.dept_name = 'Sales';


-- 7. List all employees in the Sales and Development Department: EE Number, Last Name, First Name, Department Name

select employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
from departments
join dept_emp
on departments.dept_no = dept_emp.dept_no
join employees on dept_emp.emp_no=employees.emp_no
where departments.dept_name = 'Sales'
or departments.dept_name = 'Development';

-- 8. In descending order, list frequency count of EE Last Name.

select last_name, count(last_name) as frequency
from employees
group by last_name
order by frequency desc;

