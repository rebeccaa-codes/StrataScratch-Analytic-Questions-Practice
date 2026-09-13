WITH sent_req AS
(SELECT date, user_id_sender, user_id_receiver from fb_friend_requests
where action='sent'),

accepted_req AS
(SELECT date, user_id_sender, user_id_receiver from fb_friend_requests
where action='accepted')

SELECT a.date, COUNT(b.user_id_receiver)/CAST(COUNT(a.user_id_sender) AS decimal) AS acceptance_rate from sent_req a
LEFT JOIN accepted_req b 
on a.user_id_sender=b.user_id_sender
and a.user_id_receiver=b.user_id_receiver
group by a.date
