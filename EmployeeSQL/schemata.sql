-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/UTT92A
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE department (
    dept_no char(4)   NOT NULL,
    dept_name varchar(50)   NOT NULL,
    CONSTRAINT pk_department PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE employee (
    emp_no int   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    gender char(1)   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_employee PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE department_employee (
    emp_no int   NOT NULL,
    dept_no char(4)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE department_manager (
    dept_no char(4)   NOT NULL,
    emp_no int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE salary (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE title (
    emp_no int   NOT NULL,
    title varchar(100)   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

ALTER TABLE department_employee ADD CONSTRAINT fk_department_employee_emp_no FOREIGN KEY(emp_no)
REFERENCES employee (emp_no);

ALTER TABLE department_employee ADD CONSTRAINT fk_department_employee_dept_no FOREIGN KEY(dept_no)
REFERENCES department (dept_no);

ALTER TABLE department_manager ADD CONSTRAINT fk_department_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES department (dept_no);

ALTER TABLE department_manager ADD CONSTRAINT fk_department_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employee (emp_no);

ALTER TABLE salary ADD CONSTRAINT fk_salary_emp_no FOREIGN KEY(emp_no)
REFERENCES employee (emp_no);

ALTER TABLE title ADD CONSTRAINT fk_title_emp_no FOREIGN KEY(emp_no)
REFERENCES employee (emp_no);

