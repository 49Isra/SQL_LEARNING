CREATE DATABASE EMP;
USE EMP;

 CREATE TABLE emp (
  emp_id INT ,
  emp_name VARCHAR(50),
  emp_salary INT ,
  join_date DATE, 
  emp_dept VARCHAR(100),
  emp_age INT
 ); 
 
 SELECT * FROM emp;
INSERT INTO emp values 
(1 , "alice" , 34000 , "2022-2-21" , "Enginerring" , 26 ),
(2, "alina" , 44000 , "2022-6-01" , "Enginerring" , 27 ),
(3, "bob" , 34000 , "2023-2-20" , "IT" , 26 ),
(4 , "Krish" , 50000 , "2022-6-2" , "IT" , 24 ),
(5 , "Asish" , 38000 , "2023-12-21" , "sales" , 24),
(6 , "anish" , 60000 , "2021-2-21" , "sales" , 26 ),
(7 , "sehar" , 32000 , "2020-3-1" , "data engineering" , 28 ),
(8 , "samaira" , 55000 , "2024-2-21" , "data engineering" , 26 ),
(9 , "alvina" , 34000 , "2025-2-21" , "web dev" , 27 ),
(10 , "nouran" , 85000, "2024-2-21" , "web dev" , 26 ),
(11, "rahul", 47000, "2023-05-10", "IT", 25),
(12, "priya", 52000, "2022-11-15", "sales", 27),
(13, "arjun", 39000, "2024-01-20", "Engineering", 24),
(14, "meena", 61000, "2021-09-12", "data engineering", 29),
(15, "karan", 45000, "2023-07-18", "web dev", 26),
(16, "sneha", 70000, "2020-12-05", "IT", 30),
(17, "rohit", 48000, "2022-03-22", "sales", 28),
(18, "pooja", 53000, "2023-06-30", "Engineering", 26),
(19, "vikram", 65000, "2021-04-14", "data engineering", 31),
(20, "neha", 58000, "2024-02-01", "web dev", 25);

SELECT * FROM EMP;

 -- 1. Find average salary of employees 
 
SELECT AVG(emp_salary) AS avg_salary FROM emp;

-- 2. maximum salary
SELECT MAX(emp_salary) AS max_salary FROM emp; 
 
--   -- 3. manimum salary
SELECT MIN(emp_salary) AS min_salary FROM emp; 
 
-- 4. Count employees in each department
SELECT emp_dept, COUNT(*) AS total_emp
FROM emp
GROUP BY emp_dept
ORDER BY emp_dept;


-- 5. Find average salary in each department
SELECT emp_dept, AVG(emp_salary) AS avg_salary
FROM emp
GROUP BY emp_dept;


-- 6. Show departments with more than 2 employees
SELECT emp_dept, COUNT(*) AS total_employees
FROM emp
GROUP BY emp_dept
HAVING COUNT(*) > 2; 

-- 7. Show employees whose name starts with 'a'
SELECT *
FROM emp
WHERE emp_name LIKE 'a%';


-- 8. Show employees whose name starts with 'n'
SELECT *
FROM emp
WHERE emp_name LIKE 'n%';
