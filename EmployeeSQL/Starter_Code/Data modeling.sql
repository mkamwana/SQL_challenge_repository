CREATE TABLE "departments" (
    "dept_no" VARCHAR   PRIMARY KEY,
    "dept_name" VARCHAR(20)   NOT NULL    
);

CREATE TABLE "employees" (
    "emp_no" INT   PRIMARY KEY,
    "emp_title" VARCHAR(6)   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(20)   NOT NULL,
    "sex" VARCHAR(1)   NOT NULL,
    "hire_date" DATE   NOT NULL
);


CREATE TABLE "dept_employee" (
    "emp_no" INT   PRIMARY KEY,
    "dept_no" VARCHAR   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INT   NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE "salaries" (
    "emp_no" INT   PRIMARY KEY,
    "salary" INT   NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE "titles" (
    "title_id" VARCHAR(5)   PRIMARY KEY,
    "title" VARCHAR(20)   NOT NULL
);