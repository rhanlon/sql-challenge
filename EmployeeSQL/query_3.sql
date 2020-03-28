select d.dept_no as "department number", 
	d.dept_name as "department name",
	e.emp_no as "manager''s employee number", 
	e.last_name as "last name", 
	e.first_name as "first name",
	dm.from_date as "start employment date", 
	dm.to_date as "end employment date"
from department d
	inner join department_manager dm on d.dept_no = dm.dept_no
	inner join employee e on dm.emp_no = e.emp_no
order by d.dept_no, dm.from_date
