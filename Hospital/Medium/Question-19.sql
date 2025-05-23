/*Show first_name, last_name, and the total number of admissions attended for each doctor.
Every admission has been attended by a doctor.*/
SELECT
  doctors.first_name,
  doctors.last_name,
  COUNT(*) AS admissions_total
FROM admissions
  JOIN doctors ON doctors.doctor_id = admissions.attending_doctor_id
GROUP BY admissions.attending_doctor_id
