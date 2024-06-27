# List the frequency counts, in descending order, of all the employee last names.

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;