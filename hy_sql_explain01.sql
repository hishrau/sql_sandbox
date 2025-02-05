SELECT *
FROM employee e,
     salary s
WHERE birth_date BETWEEN '1960-01-01' AND '1969-12-31'
    AND e.id = s.employee_id
    AND to_date IS NULL
    AND salary_amount >
        (SELECT avg(salary_amount)
         FROM salary
         WHERE to_date IS NULL);
         
EXPLAIN FORMAT=TREE
SELECT *
FROM employee e,
     salary s
WHERE birth_date BETWEEN '1960-01-01' AND '1969-12-31'
    AND e.id = s.employee_id
    AND to_date IS NULL
    AND salary_amount >
        (SELECT avg(salary_amount)
         FROM salary
         WHERE to_date IS NULL);
         
CREATE INDEX birth_day_index ON employee(birth_date);

EXPLAIN ANALYZE
SELECT *
FROM employee e,
     salary s
WHERE birth_date BETWEEN '1960-01-01' AND '1969-12-31'
    AND e.id = s.employee_id
    AND to_date IS NULL
    AND salary_amount >
        (SELECT avg(salary_amount)
         FROM salary
         WHERE to_date IS NULL);
         
EXPLAIN ANALYZE
SELECT *
FROM employee e USE INDEX(birth_day_index),
     salary s USE INDEX(ak_salary)
WHERE birth_date BETWEEN '1960-01-01' AND '1969-12-31'
    AND e.id = s.employee_id
    AND to_date IS NULL
    AND salary_amount >
        (SELECT avg(salary_amount)
         FROM salary
         WHERE to_date IS NULL);
         
