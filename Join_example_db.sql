USE employees;
SHOW TABLES;
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_manager as dm
on dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'; #2 for practice

#3 for practice
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_manager as dm
on dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F'; 
#4 for practice
SELECT t.title, COUNT(*)
FROM departments as d
JOIN dept_emp as de
ON  d.dept_no = de.dept_no
join employees
on de.emp_no = employees.emp_no
JOIN titles as t
ON t.emp_no = employees.emp_no
WHERE de.to_date = '9999-01-01' AND t.to_date = '9999-01-01' AND d.dept_name = 'Customer Service' 
GROUP BY t.title;
#break
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name,s.salary
FROM employees as e
JOIN dept_manager as dm
on dm.emp_no = e.emp_no
JOIN departments as d
ON d.dept_no = dm.dept_no
JOIN salaries as s
on s.emp_no = dm.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';
#BREAK
SELECT d.dept_no, d.dept_name, count(*) as num_employees
FROM departments as d
JOIN dept_emp as de
ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01'
GROUP by d.dept_name
ORDER BY dept_no ASC;
#break
 Select AVG(s.salary) as avrg, d.dept_name
 From dept_emp as de
 join departments as d
 on d.dept_no = de.dept_no
 join salaries as s
 on de.emp_no = s.emp_no
 WHERE s.to_date = '9999-01-01'AND de.to_date = '9999-01-01'
 GROUP BY dept_name
 ORDER BY avrg DESC LIMIT 1
 ;
 #BREAK
 SELECT e.first_name,e.last_name
 from employees as e
 JOIN dept_emp as de
	using(emp_no)
 join departments as d
	using(dept_no)
join salaries as s
	using(emp_no)
 Where dept_name = 'Marketing' AND de.to_date >now() AND s.to_date > now()
 order by salary desc
 limit 1
;
#BREAK
SELECT first_name,last_name,salary,dept_name
from dept_manager dm
join employees	e
	using(emp_no)
JOIN salaries s
	using(emp_no)
Join departments d 
	using(dept_no)
where dm.to_date > now()
AND s.to_date>now()
order by salary DESC
limit 1;
#BREAK
select dept_name, round(avg(salary)) as avg_sal
from salaries
join dept_emp
	using(emp_no)
join departments
	using(dept_no)
group by dept_name
    
 
 
 










