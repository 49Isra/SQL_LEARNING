 CREATE DATABASE Emp_Details;
 USE Emp_Details;
--  
 CREATE TABLE employees (
  emp_id INT ,
  emp_name VARCHAR(50),
  emp_salary INT ,
  join_date DATE, 
  emp_dept VARCHAR(100),
  emp_age INT
 );
 SELECT * FROM employees;
INSERT INTO employees values 
(1 , "alice" , 34000 , "2022-2-21" , "Enginerring" , 26 ),
(2, "alina" , 44000 , "2022-6-01" , "Enginerring" , 27 ),
(3, "bob" , 34000 , "2023-2-20" , "IT" , 26 ),
(4 , "Krish" , 50000 , "2022-6-2" , "IT" , 24 ),
(5 , "Asish" , 38000 , "2023-12-21" , "sales" , 24),
(6 , "anish" , 60000 , "2021-2-21" , "sales" , 26 ),
(7 , "sehar" , 32000 , "2020-3-1" , "data engineering" , 28 ),
(8 , "samaira" , 55000 , "2024-2-21" , "data engineering" , 26 ),
(9 , "alvina" , 34000 , "2025-2-21" , "web dev" , 27 ),
(10 , "nouran" , 85000, "2024-2-21" , "web dev" , 26 ); 
-- -- Show all employees.
 SELECT * FROM employees; 

-- -- Show only employee names and salaries.
 SELECT emp_name , emp_salary FROM employees; 

-- -- Show employees who work in 'IT' department. 
 SELECT * FROM employees WHERE emp_dept = "IT";

--  Show employees with salary greater than 50000. 

SELECT * FROM employees WHERE emp_salary >50000;  

-- -- Show employees sorted by salary (highest first).
 SELECT * FROM employees ORDER BY emp_salary DESC; 
-- -- Show top 3 highest paid employees. 
SELECT * FROM employees ORDER BY emp_salary DESC LIMIT 3 ; 

-- -- Show unique departments. 
 SELECT DISTINCT emp_dept FROM employees;  

-- -- Count total number of employees
SELECT COUNT(*) AS total_emp FROM employees;







