CREATE TABLE adresa
(
    id    IDENTITY PRIMARY KEY,
    ulice VARCHAR(255) NOT NULL,
    obec  VARCHAR(255) NOT NULL,
    psc   CHAR(5)      NOT NULL
);

CREATE TABLE osoba
(
    id             IDENTITY PRIMARY KEY,
    jmeno          VARCHAR(100) NOT NULL,
    prijmeni       VARCHAR(100) NOT NULL,
    datum_narozeni DATE         NOT NULL,
    adresa_id      BIGINT       NOT NULL,
    FOREIGN KEY (adresa_id) REFERENCES adresa (id)
);

CREATE INDEX ON adresa (obec);
CREATE INDEX ON osoba (prijmeni);
CREATE INDEX ON osoba (datum_narozeni, prijmeni);
