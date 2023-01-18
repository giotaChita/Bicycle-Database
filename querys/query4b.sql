-- Όσοι δεν είναι από το Παρίσι
SELECT *
FROM rider
WHERE rider.is_paris_resident = FALSE
ORDER BY rider.rider_id;
