/*Based on the cities that our patients live in, show unique cities that are in province_id 'NS'.*/
SELECT
  DISTINCT(city) AS unique_cities
FROM patients
WHERE province_id = 'NS'
