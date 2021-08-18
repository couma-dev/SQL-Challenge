--creating the tables to hold the data.
--creating department table
DROP TABLE departments CASCADE
CREATE TABLE departments(
	dept_no VARCHAR (6) PRIMARY KEY,
	dept_name VARCHAR (40) NOT NULL
)
--creating titles table
DROP TABLE titles CASCADE
CREATE TABLE titles(
	title_id VARCHAR PRIMARY KEY,
	title VARCHAR (25) NOT NULL
)
DROP TABLE employees CASCADE
CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR (7),
	birth_date DATE NOT NULL,
	first_name VARCHAR (40),
	last_name VARCHAR (40),
	sex VARCHAR (2),
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
)
DROP TABLE dept_emp CASCADE
--creating dept_emp table
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR (6) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
	
)
--creating dept_manager table
DROP TABLE dept_manager CASCADE
CREATE TABLE dept_manager (
	dept_no VARCHAR (6) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	
)
--creating salaries table
DROP TABLE salaries CASCADE
CREATE TABLE salaries(
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)

)

