DROP TABLE IF EXISTS dpe_audit.enveloppe_baie_masque_lointain;

CREATE TYPE type_masque as ENUM(
    'masque_lointain',
);

CREATE TYPE type_masque_lointain as ENUM(
    'homogene',
    'non_homogene',
);

CREATE TABLE dpe_audit.enveloppe_baie_masque_lointain (
    id UUID PRIMARY KEY NOT NULL,
    baie_id UUID NOT NULL,
    description TEXT NOT NULL,
    type_masque type_masque NOT NULL,
    type_masque_lointain type_masque_lointain NOT NULL,
    hauteur FLOAT NOT NULL,
    orientation FLOAT NOT NULL,
    -- Reference
    --FOREIGN KEY (baie_id) REFERENCES dpe_audit.enveloppe_baie(id)
);