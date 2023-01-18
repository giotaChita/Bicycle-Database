-- Θέλουμε να πάρουμε οπωσδήποτε ένα σκουτεράκι αυτή την στιγμή
SELECT *
FROM vehicle
WHERE vehicle.vehicle_type = 'scooter' 
	AND vehicle.vehicle_is_available = TRUE
ORDER BY vehicle_id;