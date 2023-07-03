CREATE TABLE employees(
    emp_no INT NOT NULL PRIMARY KEY,
    emp_title VARCHAR,
    birth_date DATE NOT NULL DEFAULT CURRENT_DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE NOT NULL DEFAULT CURRENT_DATE);
    
CREATE TABLE departments (
    dept_no VARCHAR NOT NULL PRIMARY KEY,
    dept_name VARCHAR NOT NULL);

CREATE TABLE dept_manager(
    dept_no VARCHAR NOT NULL,
    emp_no INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no));

CREATE TABLE salaries(
    emp_no INT,
    salaries INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE dept_emp(
    emp_no INT,
    dept_no VARCHAR,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no));

CREATE TABLE titles(
    title_id VARCHAR,
    title VARCHAR);

