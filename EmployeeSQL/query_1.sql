select e.emp_no as "employee number",
	e.last_name as "last name",
	e.first_name as "first name",
	e.gender,
	cast(s.salary as money) as "salary"
from employee e
	left join salary s on e.emp_no = s.emp_no
	
	--select count(*) from employee --300024
	--select count(*) from salary  -- 300024
	-- Since the rowcounts are the same, and assuming a 1:1 relationship,
	-- I could have done an inner join instead of a left join.
	