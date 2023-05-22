---Author:Brenton Bethel
1--List the employee number, last name, first name, sex, and salary of each employee
select last_name, first_name, sex, salary
from employee e join salary s ON s.emp_no = e.emp_no

2---List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employee
where extract(year from hire_date) = 1986

3---List the manager of each department along with their department number, 
   --department name, employee number, last name, and first name
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employee e join dept_manager dm 
on dm.emp_no = e.emp_no join department d 
on d.dept_no = dm.dept_no
order by d.dept_no

4---List the department number for each employee along with that employee’s 
   --employee number, last name, first name, and department name 
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employee e join dept_emp de 
on de.emp_no = e.emp_no join department d 
on d.dept_no = de.dept_no
order by d.dept_no

5---List the department number for each employee along with that employee’s 
   --employee number, last name, first name, and department name 
select first_name, last_name, sex
from employee 
where first_name = 'Hercules' and last_name like 'B%'

6---List the department number for each employee along with that employee’s 
   --employee number, last name, first name, and department name 
select d.dept_name, e.emp_no, e.first_name, e.last_name
from employee e join dept_emp de 
on de.emp_no = e.emp_no join department d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales'

7---List each employee in the Sales and Development departments, including their 
  --employee number, last name, first name, and department name 
select d.dept_name, e.emp_no, e.first_name, e.last_name
from employee e join dept_emp de 
on de.emp_no = e.emp_no join department d
on d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'

8---List the frequency counts, in descending order, of all the employee 
   --last names (that is, how many employees share each last name) 
select last_name, count(last_name) as frequency
from employee 
group by last_name
order by frequency desc


