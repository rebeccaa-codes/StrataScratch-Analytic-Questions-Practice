SELECT e1.department, e1.first_name, e1.salary, e2.avg_sal FROM employee e1
JOIN ( SELECT department, avg(salary) AS avg_sal FROM employee GROUP BY department ) e2
ON e1.department=e2.department;
