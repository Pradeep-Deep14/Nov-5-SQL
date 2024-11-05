CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100)
);

INSERT INTO employees (employee_id, employee_name) VALUES
(1, 'Ravi'),
(2, 'Aisha'),
(3, 'Rajesh'),
(4, 'Sita');

SELECT * FROM EMPLOYEES

/*
Write a SQL query to find the total number of employees.
*/

SELECT COUNT(*)
FROM EMPLOYEES