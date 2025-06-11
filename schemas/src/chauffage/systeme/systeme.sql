DROP TABLE IF EXISTS dpe_audit.chauffage_systeme;

CREATE TYPE type_systeme as ENUM(
    'chauffage_central',
    'chauffage_divise',
);

CREATE TYPE type_distribution as ENUM(
    'hydraulique',
    'aeraulique',
    'fluide_frigorigene'
);

CREATE TYPE isolation as ENUM(
    'non_isole',
    'isole',
);

CREATE TABLE dpe_audit.chauffage_systeme (
    id UUID PRIMARY KEY,
    installation_id UUID NOT NULL,
    generateur_id UUID NOT NULL,
    type type_systeme NOT NULL,
    -- Réseau
    type_distribution type_distribution,
    presence_circulateur_externe BOOLEAN,
    niveaux_desservis INTEGER,
    isolation isolation,
    -- Stockage
    volume_stockage FLOAT,
    position_volume_chauffe_stockage BOOLEAN,
    -- Reference
    --FOREIGN KEY (installation_id) REFERENCES dpe_audit.chauffage_installation(id)
    --FOREIGN KEY (generateur_id) REFERENCES dpe_audit.chauffage_generateur(id)
);