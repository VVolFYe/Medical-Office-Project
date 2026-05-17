SELECT 
    m.nume AS nume_medic,
    s.denumire AS specialitate,
    g.denumire AS grad,
    COUNT(p.codPro) AS numar_programari
FROM cbMedic m
JOIN cbSpecialitate s ON m.codSpec = s.codSpec
JOIN cbGrad g ON m.codGrad = g.codGrad
LEFT JOIN cbProgramare p ON m.medID = p.medID
GROUP BY 
    m.medID,
    m.nume,
    s.denumire,
    g.denumire
ORDER BY numar_programari DESC, m.nume