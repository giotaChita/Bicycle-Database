-- Όσοι είναι από το Παρίσι
SELECT *
FROM rider
WHERE rider.is_paris_resident = TRUE
ORDER BY rider.rider_id;
