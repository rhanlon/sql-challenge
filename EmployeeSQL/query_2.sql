select e.emp_no as "employee number",
	e.last_name as "last name",
	e.first_name as "first name",
	e.hire_date as "hire date"
from employee e
where extract(year from e.hire_date) = 1986
order by e.hire_date, e.last_name
