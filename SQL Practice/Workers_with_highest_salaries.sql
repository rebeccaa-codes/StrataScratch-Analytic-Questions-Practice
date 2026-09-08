select t.worker_title AS most_paid_title from title t
join worker w on w.worker_id=t.worker_ref_id where
w.salary in 
(select Max(a.salary) from worker a 
join title b
on a.worker_id=b.worker_ref_id
where b.worker_title IS NOT NULL) 
order by most_paid_title;
