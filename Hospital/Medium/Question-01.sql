/*Show unique birth years from patients and order them by ascending.*/
SELECT
  DISTINCT(YEAR(birth_date))
FROM patients
ORDER BY YEAR(birth_date) ASC
