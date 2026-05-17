DROP TABLE cbReteta CASCADE CONSTRAINTS;
DROP TABLE cbProgramare CASCADE CONSTRAINTS;
DROP TABLE cbMedic CASCADE CONSTRAINTS;
DROP TABLE cbSpecialitate CASCADE CONSTRAINTS;
DROP TABLE cbGrad CASCADE CONSTRAINTS;

-- Folosim CASCADE CONSTRAINTS ca sa putem sterge tabela chiar daca depind alte tabele de ea. Asa ne este cumva mai usor sa dam reset ca sa le putem crea de la 0.

CREATE TABLE cbSpecialitate (
    codSpec VARCHAR2(20),
    denumire VARCHAR2(100) NOT NULL,
    coefPlata NUMBER(4,2) NOT NULL,

    CONSTRAINT pk_cbSpecialitate PRIMARY KEY (codSpec),
    CONSTRAINT ck_cbSpecialitate_coefPlata CHECK (coefPlata > 0)
);

CREATE TABLE cbGrad (
    codGrad VARCHAR2(10),
    denumire VARCHAR2(50) NOT NULL,
    tarif NUMBER(8,2) NOT NULL,

    CONSTRAINT pk_cbGrad PRIMARY KEY (codGrad),
    CONSTRAINT ck_cbGrad_tarif CHECK (tarif > 0)
);

CREATE TABLE cbMedic (
    medID VARCHAR2(10),
    nume VARCHAR2(100) NOT NULL,
    codSpec VARCHAR2(20) NOT NULL,
    codGrad VARCHAR2(10) NOT NULL,

    CONSTRAINT pk_cbMedic PRIMARY KEY (medID),
    CONSTRAINT fk_cbMedic_cbSpecialitate 
        FOREIGN KEY (codSpec) REFERENCES cbSpecialitate(codSpec),
    CONSTRAINT fk_cbMedic_cbGrad 
        FOREIGN KEY (codGrad) REFERENCES cbGrad(codGrad)
);

CREATE TABLE cbProgramare (
    codPro NUMBER,
    data DATE NOT NULL,
    cnp VARCHAR2(13) NOT NULL,
    nume VARCHAR2(100) NOT NULL,
    medID VARCHAR2(10) NOT NULL,
    cabinet VARCHAR2(20) NOT NULL,

    CONSTRAINT pk_cbProgramare PRIMARY KEY (codPro),
    CONSTRAINT fk_cbProgramare_cbMedic 
        FOREIGN KEY (medID) REFERENCES cbMedic(medID),
    CONSTRAINT ck_cbProgramare_cnp CHECK (LENGTH(cnp) = 13)
);

CREATE TABLE cbReteta (
    codPro NUMBER,
    nrItem NUMBER,
    medicament VARCHAR2(100) NOT NULL,
    doza_zi VARCHAR2(20) NOT NULL,
    durata_zile NUMBER NOT NULL,

    CONSTRAINT pk_cbReteta PRIMARY KEY (codPro, nrItem),
    CONSTRAINT fk_cbReteta_cbProgramare 
        FOREIGN KEY (codPro) REFERENCES cbProgramare(codPro),
    CONSTRAINT ck_cbReteta_durata CHECK (durata_zile > 0)
);