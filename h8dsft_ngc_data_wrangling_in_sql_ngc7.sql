-- Non-Graded Challenge 7
-- Nama: Muhammad Nur Alamsyah
-- Batch: RMT-023
-- Objective: Membuat SQL query untuk menampilkan data secara kumulatif berdasarkan bulan dan tahun

SELECT 
  year, month, COUNT(*) AS total_patent
FROM (
  SELECT *,
  CAST(SUBSTR(Filing_Date, 1, 4) AS INT) AS year,
  CAST(SUBSTR(Filing_Date, 5, 2) AS INT) AS month
  FROM `patents-public-data.uspto_oce_cancer.publications`) AS edited
WHERE (year BETWEEN 2012 AND 2023) 
AND (Patent_Title LIKE "%data mining%")
GROUP BY
  year, month
ORDER BY
  year DESC,
  month ASC;