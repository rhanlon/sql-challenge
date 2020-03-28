select e.emp_no as "employee number",
	e.last_name as "last name",
	e.first_name as "first name",
	d.dept_name as "department name"
from employee e
	inner join department_employee de on e.emp_no = de.emp_no
	inner join department d on de.dept_no = d.dept_no
where d.dept_name = 'Sales'