-- Asta e un script care verifica daca exista suficiente randuri si daca au fost create tabelele cu succes.

-- Check in SQL Commands (nu am mai salvat scriptul, dar e bine sa fie aici pentru debugging)

SELECT 'CBSPECIALITATE' AS tabela, COUNT(*) AS nr_randuri FROM cbSpecialitate
UNION ALL
SELECT 'CBGRAD', COUNT(*) FROM cbGrad
UNION ALL
SELECT 'CBMEDIC', COUNT(*) FROM cbMedic
UNION ALL
SELECT 'CBPROGRAMARE', COUNT(*) FROM cbProgramare
UNION ALL
SELECT 'CBRETETA', COUNT(*) FROM cbReteta;