/*For every admission, display the patient's full name, their admission diagnosis, and their doctor's full name who diagnosed their problem.*/
SELECT
  CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
  a.diagnosis,
  CONCAT(d.first_name, ' ', d.last_name) AS doctors_name
FROM patients p
  JOIN admissions a ON a.patient_id = p.patient_id
  JOIN doctors d ON d.doctor_id = a.attending_doctor_id
