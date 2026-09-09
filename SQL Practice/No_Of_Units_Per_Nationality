SELECT ah.nationality, COUNT(DISTINCT au.unit_id) AS apt_count
FROM airbnb_units au 
JOIN airbnb_hosts ah 
ON au.host_id = ah.host_id 
WHERE ah.age<30 
AND au.unit_type='Apartment'
GROUP BY ah.nationality 
ORDER BY apt_count DESC
