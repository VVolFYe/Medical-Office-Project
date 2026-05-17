SELECT 
    m.medID AS id_medic,
    m.nume AS nume_medic,
    s.denumire AS specialitate,
    g.denumire AS grad,
    g.tarif,
    s.coefPlata,
    g.tarif * s.coefPlata AS plata_consultatie
FROM cbMedic m
JOIN cbSpecialitate s ON m.codSpec = s.codSpec
JOIN cbGrad g ON m.codGrad = g.codGrad
ORDER BY m.nume