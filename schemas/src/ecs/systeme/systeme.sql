DROP TABLE IF EXISTS dpe_audit.ecs_systeme;

CREATE TYPE isolation as ENUM(
    'non_isole',
    'isole',
);

CREATE TYPE bouclage as ENUM(
    'non_boucle',
    'boucle',
    'trage'
);

CREATE TABLE dpe_audit.ecs_systeme (
    id UUID PRIMARY KEY,
    installation_id UUID NOT NULL,
    generateur_id UUID NOT NULL,
    -- Réseau
    alimentation_contigue BOOLEAN NOT NULL,
    niveaux_desservis INTEGER NOT NULL,
    isolation isolation,
    bouclage bouclage,
    -- Stockage
    volume_stockage FLOAT,
    position_volume_chauffe_stockage BOOLEAN,
    -- Reference
    --FOREIGN KEY (installation_id) REFERENCES dpe_audit.ecs_installation(id)
    --FOREIGN KEY (generateur_id) REFERENCES dpe_audit.ecs_generateur(id)
);