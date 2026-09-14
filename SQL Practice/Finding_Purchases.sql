SELECT distinct a.user_id FROM amazon_transactions a
JOIN amazon_transactions b
ON a.user_id=b.user_id
WHERE DATEDIFF(day,a.created_at,b.created_at)<=7
and DATEDIFF(day,a.created_at,b.created_at)>0;
