SELECT 
    p.codPro,
    p.data,
    p.cnp,
    p.nume AS pacient,
    m.nume AS medic,
    s.denumire AS specialitate,
    g.denumire AS grad,
    p.cabinet,
    g.tarif * s.coefPlata AS plata_consultatie
FROM cbProgramare p
JOIN cbMedic m ON p.medID = m.medID
JOIN cbSpecialitate s ON m.codSpec = s.codSpec
JOIN cbGrad g ON m.codGrad = g.codGrad
WHERE p.cnp = :P7_CNP --PageItem
ORDER BY p.data