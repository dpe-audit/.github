DROP TABLE IF EXISTS dpe_audit.enveloppe;

CREATE TYPE exposition as ENUM('exposition_simple', 'exposition_multiple');

CREATE TYPE inertie as ENUM('lourde', 'légère');

CREATE TABLE dpe_audit.enveloppe (
    id UUID PRIMARY KEY,
    exposition exposition NOT NULL,
    q4pa_conv FLOAT
    presence_brasseurs_air BOOLEAN NOT NULL,
);

CREATE TABLE dpe_audit.enveloppe_niveau (
    enveloppe_id UUID NOT NULL,
    surface FLOAT NOT NULL,
    inertie_paroi_verticale inertie NOT NULL,
    inertie_plancher_bas inertie NOT NULL,
    inertie_plancher_haut inertie NOT NULL,
    --FOREIGN KEY (enveloppe_id) REFERENCES dpe_audit.enveloppe(id)
);