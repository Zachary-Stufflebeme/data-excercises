USE employees;
	SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
    SELECT * FROM employees WHERE first_name = "Irena" OR "Vidya" OR "Maya"; #does not match number returned in previous question. 
    SELECT * FROM employees WHERE (first_name = 'Irena' OR 'Vidya' OR 'Maya') AND gender = 'M';# 144 rows returned. 
    SELECT * FROM employees WHERE last_name LIKE 'E%'; # 7330 rows returned
    SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e'; #30,723 returned. How many have last name that ends w e but doesnt start? 
    SELECT * FROM employees WHERE last_name NOT LIKE 'E%' AND last_name LIKE '%e'; # 23,393
    SELECT * FROM employees WHERE (last_name LIKE 'E%' AND last_name LIKE '%e'); #899 Start and end with e
    SELECT * FROM employees WHERE last_name LIKE '%e'; #24,292 people have last name ending in e 
    SELECT * FROM employees WHERE hire_date LIKE '199%'; #135214 RETURNED. 
    SELECT * FROM employees WHERE birth_date LIKE '%12-25';#842 returned.
    SELECT * FROM employees WHERE hire_date LIKE '199%' AND (birth_date LIKE '%12-25') ;# 362 returned
    SELECT * FROM employees WHERE last_name LIKE '%q' OR (last_name LIKE 'Q%');#907 returned. 
    SELECT * FROM employees WHERE last_name LIKE '%q' OR (last_name LIKE 'Q%') AND (last_name NOT LIKE '%qu' AND last_name NOT LIKE 'Qu%'); #357 results. 
    
    
    