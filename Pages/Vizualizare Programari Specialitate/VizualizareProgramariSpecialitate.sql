-- View Appointments by Specialty - Parameterized Report
-- Dynamically filters appointments based on the selected specialty from the screen parameter (:P12_SPECIALITATE).
SELECT P.CODPRO,
       P.DATA,
       P.CNP,
       P.NUME AS PACIENT,
       M.NUME AS MEDIC
FROM CBPROGRAMARE P
JOIN CBMEDIC M ON P.MEDID = M.MEDID
WHERE M.CODSPEC = :P12_SPECIALITATE


-- View Appointments by Specialty
-- Populates the parameter list selection dropdown with all available specialties from the database.
SELECT DISTINCT DENUMIRE AS D, CODSPEC AS R
FROM CBSPECIALITATE
ORDER BY 1