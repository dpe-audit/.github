DROP TABLE IF EXISTS dpe_audit.chauffage_emetteur;

CREATE TYPE type_emetteur as ENUM(
    'plancher_chauffant',
    'plafond_chauffant',
    'radiateur_monotube',
    'radiateur_bitube',
    'radiateur',
);

CREATE TYPE temperature_distribution as ENUM(
    'basse',
    'moyenne',
    'haute'
);

CREATE TABLE dpe_audit.chauffage_emetteur (
    id UUID PRIMARY KEY,
    chauffage_id UUID NOT NULL,
    description TEXT NOT NULL,
    type type_emetteur NOT NULL,
    temperature_distribution temperature_distribution NOT NULL,
    presence_robinet_thermostatique BOOLEAN NOT NULL,
    annee_installation INTEGER,
    -- Reference
    --FOREIGN KEY (chauffage_id) REFERENCES dpe_audit.chauffage(id)
);