-- Ο φίλος σου λέει ότι δεν έχει λεφτά. Ισχύει? για δες πόσο
-- είναι το μέγιστο ποσό που έχει χαλάσει για ενοικίαση ποδηλάτου/ πατινιού
SELECT r.rider_id, r.first_name, 
r.last_name, MAX(p.total_charge) AS max_charge
FROM rider r JOIN payment p 
	ON r.rider_id = p.rider_id
GROUP BY rider_id
ORDER BY rider_id;