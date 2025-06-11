DROP TABLE IF EXISTS dpe_audit.ecs_installation;

CREATE TYPE usage as ENUM (
    'ecs',
    'chauffage_ecs',
);

CREATE TABLE dpe_audit.ecs_installation (
    id UUID PRIMARY KEY,
    ecs_id UUID NOT NULL,
    description TEXT NOT NULL,
    surface FLOAT NOT NULL,
    -- Solaire
    usage_solaire usage,
    annee_installation_solaire INT,
    fecs FLOAT,
    -- Reference
    --FOREIGN KEY (ecs_id) REFERENCES dpe_audit.ecs(id)
);