/*Display the total amount of patients for each province. Order by descending.*/
SELECT
  province_name,
  COUNT(*) AS patient_count
FROM patients pt
  JOIN province_names pr ON pt.province_id = pr.province_id
GROUP BY province_name
ORDER BY patient_count DESC
