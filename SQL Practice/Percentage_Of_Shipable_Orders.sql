SELECT (SUM(CASE WHEN c.address IS NOT NULL THEN 1 ELSE 0 END)*100/CAST(COUNT(*) AS decimal))
AS shipable_percent
FROM orders o
JOIN customers c
ON c.id=o.cust_id;
