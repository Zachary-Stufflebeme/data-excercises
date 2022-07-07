USE employees;
SELECT DISTINCT title FROM titles; # 7 distict titles
#break 
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE 'E%e'
GROUP BY last_name; #unique last names starting and ending w e
#break
SELECT last_name, first_name FROM employees WHERE last_name LIKE 'E%e'
GROUP BY last_name, first_name;#all unique combinations of first last name where last name starts and ends with e
#break 
SELECT last_name FROM employees WHERE ((last_name LIKE '%q%' AND last_name LIKE 'Q%') AND (last_name NOT LIKE 'Qu%') AND (last_name NOT LIKE '%qu%'));
#last name has q but not qu
SELECT last_name, COUNT(*) as numb FROM employees WHERE ((last_name LIKE '%q%' AND last_name LIKE 'Q%') AND (last_name NOT LIKE 'Qu%') AND (last_name NOT LIKE '%qu%'))
GROUP BY last_name
HAVING numb; #168 people w same last name
SELECT gender, COUNT(*) as wow FROM employees WHERE first_name ='Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
GROUP BY gender
HAVING wow; # 441 males 268 females
#break

SELECT username, COUNT(*) as same FROM employee
GROUP BY username


