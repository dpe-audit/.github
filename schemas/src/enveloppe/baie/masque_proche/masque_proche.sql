DROP TABLE IF EXISTS dpe_audit.enveloppe_baie_masque_proche;

CREATE TYPE type_masque as ENUM(
    'baie_masque_proche',
);

CREATE TYPE type_masque_proche as ENUM(
    'fond_balcon',
    'fond_et_flanc_loggias',
    'balcon_ou_auvent',
    'paroi_laterale_sans_obstacle_au_sud',
    'paroi_laterale_avec_obstacle_au_sud'
);

CREATE TABLE dpe_audit.enveloppe_baie_masque_proche (
    id UUID PRIMARY KEY NOT NULL,
    baie_id UUID NOT NULL,
    description TEXT NOT NULL,
    type_masque type_masque NOT NULL,
    type_masque_proche type_masque_proche NOT NULL,
    profondeur FLOAT,
    -- Reference
    --FOREIGN KEY (baie_id) REFERENCES dpe_audit.enveloppe_baie(id)
);