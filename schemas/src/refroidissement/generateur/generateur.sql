DROP TABLE IF EXISTS dpe_audit.refroidissement_generateur;

CREATE TYPE type_generateur as ENUM(
    'pac_air_air',
    'pac_air_eau',
    'pac_eau_eau',
    'pac_eau_glycolee_eau',
    'pac_geothermique',
    'autre_systeme_thermodynamique',
    'autre',
    'reseau_froid',
);

CREATE TABLE dpe_audit.refroidissement_generateur (
    id UUID PRIMARY KEY,
    refroidissement_id UUID NOT NULL,
    reseau_froid_id UUID,
    description TEXT NOT NULL,
    type type_generateur NOT NULL,
    energie energie NOT NULL,
    seer FLOAT,
    -- Reference
    --FOREIGN KEY (refroidissement_id) REFERENCES dpe_audit.refroidissement(id)
);