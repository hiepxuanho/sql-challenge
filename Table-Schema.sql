/* Create a table schema for employees.csv */
CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id CHAR(5),
    birth_date DATE,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex CHAR(1),
    hire_date DATE
);

/* Create a table schema for departments.csv */
CREATE TABLE departments (
    dept_no CHAR(4) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

/* Create a table schema for dept_emp.csv */
CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no CHAR(4),
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

/* Create a table schema for dept_manager.csv */
CREATE TABLE dept_manager (
    dept_no CHAR(4),
    emp_no INTEGER,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

/* Create a table schema for salaries.csv */
CREATE TABLE salaries (
    emp_no INTEGER PRIMARY KEY,
    salary INTEGER,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

/* Create a table schema for titles.csv */
CREATE TABLE titles (
    title_id CHAR(5) PRIMARY KEY,
    title VARCHAR(50) NOT NULL
);

