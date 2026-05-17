-- 1. Page: View All Appointments (Requirement 2.3 / Page 10)
-- Description: Fetches all appointments, joining with the doctor table to display the doctor's name instead of their ID.
-- Note: Uses column aliases (PACIENT, MEDIC) to resolve duplicate "NUME" column name conflicts.
SELECT P.CODPRO,
       P.DATA,
       P.CNP,
       P.NUME AS PACIENT,
       M.NUME AS MEDIC
FROM CBPROGRAMARE P
JOIN CBMEDIC M ON P.MEDID = M.MEDID;