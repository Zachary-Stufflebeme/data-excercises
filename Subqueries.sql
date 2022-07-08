use employees;
SELECT CONCAT(first_name, " ", last_name) as full_name
 FROM employees	
 where hire_date = (select hire_date where emp_no = 101010)
 ;
#break
SELECT title
from titles
where emp_no IN 
(select emp_no 
from employees 
where first_name = 'Aamod') 
AND emp_no IN
(select emp_no from salaries 
where to_date > curdate())
;
Select count(*)
From employees
where
emp_no not in
(select emp_no
from salaries
where to_date > curdate())
;
#59900
#break
select CONCAT(first_name, " ",last_name) as full_name
from employees
where emp_no IN
(select emp_no
from dept_manager
where emp_no IN
(select emp_no 
from employees
where 
gender = 'F' AND to_date > curdate()))
;
#Isamu Legleitner, Karsten Sigstam, Leon DasSarma, Hilary Kambil
#break 
select CONCAT(first_name, " ", last_name) as full_name
from employees
where emp_no IN
(select emp_no 
from salaries
where salary >
(select AVG(salary) from salaries)
AND
to_date > curdate())
;
#break
select max(salary)
from salary
where to_date>now()
;
select stddev(salary)
from salaries
where salary >(
select max(salary)
from salary
where to_date>now())





