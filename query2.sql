-- Βλέπουμε στον πίνακα που προκύπτει ποσους συνοδεύει ο κάθε rider
SELECT r.rider_id, CONCAT(r.first_name, ' ', r.last_name) AS rider_full_name,
COUNT(*) AS total_members
FROM rider r, group_member g
WHERE r.rider_id = g.rider_id
GROUP BY r.rider_id
ORDER BY r.rider_id;
