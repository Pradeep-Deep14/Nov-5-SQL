CREATE TABLE companies (
        company_id INT PRIMARY KEY,
        company_name VARCHAR(100)
    );

    CREATE TABLE employees (
        employee_id INT PRIMARY KEY,
        employee_name VARCHAR(100),
        company_id INT,
        salary DECIMAL(10, 2),
        FOREIGN KEY (company_id) REFERENCES companies(company_id)
    );

    INSERT INTO companies (company_id, company_name) VALUES
    (1, 'TechCorp'),
    (2, 'HealthInc'),
    (3, 'FinanceSolutions'),
    (4, 'EduGlobal'),
    (5, 'RetailWorld');

    INSERT INTO employees (employee_id, employee_name, salary, company_id) VALUES
    (1, 'Alice', 90000, 1),
    (2, 'Bob', 70000, 2),
    (3, 'Charlie', 80000, 1),
    (4, 'David', 95000, 3),
    (5, 'Eva', 65000, 4),
    (6, 'Frank', 60000, 5),
    (7, 'Grace', 72000, 2);

SELECT * FROM COMPANIES
SELECT * FROM EMPLOYEES

/*
Write a SQL query to list all employees along with their company names.
*/

SELECT E.EMPLOYEE_NAME,
	   C.COMPANY_NAME
FROM EMPLOYEES E
JOIN COMPANIES C
ON E.COMPANY_ID=C.COMPANY_ID
