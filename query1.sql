-- Οι σταθμοί οι οποίοι έχουν ηλεκτρικά οχήματα, ταξινομημένοι με βάση το id
SELECT *
FROM `mydb`.`parking_station`
WHERE station_type = 'electric'
ORDER BY station_id;