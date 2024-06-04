-- Create titles table

--DROP TABLE titles
	
CREATE TABLE titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR (30)  NOT NULL,
    PRIMARY KEY (title_id)
);

SELECT * FROM titles;


-- Create employees table
--DROP TABLE employees

CREATE TABLE employees (
    emp_no VARCHAR (30) NOT NULL,
    emp_title_id VARCHAR(30) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR (3) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);

select * from employees;


-- Create departments table

--DROP TABLE departments

CREATE TABLE departments (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR (30) NOT NULL,
	PRIMARY KEY (dept_no)
);

SELECT * FROM departments;



-- Create dept_emp table
--DROP TABLE dept_emp
	
CREATE TABLE dept_emp(
    emp_no VARCHAR(30) NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);


select * from dept_emp;


-- Create dept_manager table
--DROP TABLE dept_manager

CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
    emp_no VARCHAR (30) NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from dept_manager;

-- Create salaries table
--DROP TABLE salaries

CREATE TABLE salaries (
    emp_no VARCHAR (30) NOT NULL,
    salary VARCHAR NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

select * from salaries;