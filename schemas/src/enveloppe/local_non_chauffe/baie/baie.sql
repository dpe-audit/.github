DROP TABLE IF EXISTS dpe_audit.enveloppe_local_non_chauffe_baie;

CREATE TYPE type_baie as ENUM(
    'polycarbonate',
    'fenetre_battante',
    'fenetre_coulissante',
    'porte_fenetre_coulissante',
    'porte_fenetre_battante'
);

CREATE TYPE materiau as ENUM(
    'pvc',
    'bois',
    'bois_metal',
    'metal'
);

CREATE TYPE type_vitrage as ENUM(
    'simple_vitrage',
    'double_vitrage',
    'double_vitrage_fe',
    'triple_vitrage',
    'triple_vitrage_fe'
);

CREATE TYPE mitoyennete as ENUM(
    'exterieur',
    'enterre',
    'vide_sanitaire',
    'terre_plein',
    'sous_sol_non_chauffe',
    'local_non_chauffe',
    'local_non_residentiel',
    'local_residentiel',
    'local_non_accessible'
);

CREATE TABLE dpe_audit.enveloppe_local_non_chauffe_baie (
    id UUID PRIMARY KEY NOT NULL,
    local_non_chauffe_id UUID NOT NULL,
    description TEXT NOT NULL,
    type_baie type_baie NOT NULL,
    materiau materiau,
    type_vitrage type_vitrage,
    presence_rupteur_pont_thermique BOOLEAN,
    -- Position
    surface FLOAT NOT NULL,
    mitoyennete mitoyennete NOT NULL,
    orientation FLOAT,
    inclinaison FLOAT NOT NULL,
    paroi_id UUID,
    -- Reference
    --FOREIGN KEY (paroi_id) REFERENCES dpe_audit.enveloppe_local_non_chauffe_paroi(id)
    --FOREIGN KEY (local_non_chauffe_id) REFERENCES dpe_audit.enveloppe_local_non_chauffe(id)
);