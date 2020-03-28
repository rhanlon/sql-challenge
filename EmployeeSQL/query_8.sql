select last_name, count(emp_no) as "frequency count of last name"
from employee
group by last_name
order by count(emp_no) desc
