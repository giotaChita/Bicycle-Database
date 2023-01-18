-- Θέλουμε να δούμε τι ενοικιάσεις έχει κάνει ο κάθε rider
-- SELECT *
-- FROM rider r JOIN payment p
-- 	ON r.rider_id = p.rider_id
-- ORDER BY r.rider_id;
-- Τελικά δεν είναι τόσο κουλ όσο νόμιζα. Τελικά έκανα ένα group by και να βλέπαμε
-- μέσο όρο που πλήρωσε ο καθένας και πόσες ενοικιάσεις έκανε
SELECT r.rider_id, r.first_name, r.last_name,
 COUNT(*) AS total_payments, AVG(p.total_charge) AS average_charge
FROM rider r JOIN payment p 
	ON r.rider_id = p.rider_id
GROUP BY rider_id
ORDER BY rider_id;