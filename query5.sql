-- Επειδή βαριόμαστε να κάνουμε ποδήλατο, θα μας πονέσει ο ποπός, θα 
-- θέλαμε να ξέρουμε πόσα ποδήλατα ηλεκτρικά ή σκουτερ υπάρχουν
SELECT *
FROM vehicle
WHERE vehicle.vehicle_type = 'electric bicycle' 
	OR vehicle.vehicle_type = 'scooter'
ORDER BY vehicle.vehicle_id;