/*For each doctor, display their id, full name, and the first and last admission date they attended.*/
SELECT
  doctor_id,
  CONCAT(first_name, ' ', last_name) AS full_name,
  MIN(admission_date) AS first_admission_date,
  MAX(admission_date) AS last_admission_date
FROM doctors d
  JOIN admissions a ON a.attending_doctor_id = d.doctor_id
GROUP BY doctor_id
