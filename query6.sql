-- Πόσοι συνοδεύουν ανήλικους
SELECT CONCAT(r.first_name, ' ', r.last_name) AS rider_full_name, r.rider_id,
	CONCAT(g.member_name, ' ', g.member_last_name) AS rider_full_name, g.member_age
FROM rider r JOIN group_member g
	ON r.rider_id = g.rider_id
WHERE g.member_age < 18;