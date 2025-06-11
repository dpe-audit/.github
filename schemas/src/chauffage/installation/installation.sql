DROP TABLE IF EXISTS dpe_audit.chauffage_installation;

CREATE TYPE usage as ENUM (
    'chauffage',
    'chauffage_ecs',
);

CREATE TABLE dpe_audit.chauffage_installation (
    id UUID PRIMARY KEY,
    chauffage_id UUID NOT NULL,
    description TEXT NOT NULL,
    surface FLOAT NOT NULL,
    comptage_individuel BOOLEAN NOT NULL,
    -- Solaire
    usage_solaire usage,
    annee_installation_solaire INT,
    fch FLOAT,
    -- Régulation
    presence_regulation_centrale BOOLEAN NOT NULL,
    minimum_temperature_regulation_centrale BOOLEAN NOT NULL,
    detection_presence_regulation_centrale BOOLEAN NOT NULL,
    presence_regulation_terminale BOOLEAN NOT NULL,
    minimum_temperature_regulation_terminale BOOLEAN NOT NULL,
    detection_presence_regulation_terminale BOOLEAN NOT NULL,
    -- Reference
    --FOREIGN KEY (chauffage_id) REFERENCES dpe_audit.chauffage(id)
);