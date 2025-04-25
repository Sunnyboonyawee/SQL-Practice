/*Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table.
(Their patient_id does not exist in any admissions.patient_id rows.)*/
SELECT
  patients.patient_id,
  patients.first_name,
  patients.last_name
FROM patients
WHERE patients.patient_id NOT IN (
    SELECT admissions.patient_id
    FROM admissions
  )
