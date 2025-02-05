use hy_sql;
CREATE TABLE employees (
    personal_id INT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    age INT
);
ALTER TABLE employees
MODIFY age INT NOT NULL;
ALTER TABLE employees
MODIFY age INT;
drop table employees;
CREATE TABLE employees (
    personal_id INT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    age INT NOT NULL
);
ALTER TABLE employees
ADD UNIQUE (personal_id);
ALTER TABLE employees
ADD CHECK (age > 16);
ALTER TABLE employees
ALTER first_name SET DEFAULT 'John';
ALTER TABLE employees 
ALTER first_name DROP DEFAULT; 

CREATE TABLE employees_2 (
    personal_id INT NOT NULL UNIQUE,
    first_name VARCHAR(30) NOT NULL DEFAULT 'John',
    last_name VARCHAR(30) NOT NULL DEFAULT 'Doe',
    age INT DEFAULT 17, 
    CHECK (age > 16) 
);