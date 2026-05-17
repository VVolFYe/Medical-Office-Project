-- Automatic ID Generation
-- PL/SQL expression used inside a Pre-Computation Process to calculate the next available Primary Key (CODPRO).
BEGIN
    SELECT NVL(MAX(CODPRO), 0) + 1 INTO :P11_CODPRO FROM CBPROGRAMARE;
END;