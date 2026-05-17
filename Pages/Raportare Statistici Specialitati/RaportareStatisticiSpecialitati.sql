-- Specialty Statistics Report
-- Aggregates data to show the total number of unique doctors and unique patients per medical specialty.
-- Note: Uses LEFT JOIN to include specialties with 0 records, and COUNT(DISTINCT) to prevent duplicate counting.
SELECT S.CODSPEC AS SPECIALITATE,
       S.DENUMIRE AS DENUMIRE_SPECIALITATE,
       COUNT(DISTINCT M.MEDID) AS TOTAL_MEDICI,
       COUNT(DISTINCT P.CNP) AS TOTAL_PACIENTI
FROM CBSPECIALITATE S
LEFT JOIN CBMEDIC M ON S.CODSPEC = M.CODSPEC
LEFT JOIN CBPROGRAMARE P ON M.MEDID = P.MEDID
GROUP BY S.CODSPEC, S.DENUMIRE
ORDER BY S.DENUMIRE