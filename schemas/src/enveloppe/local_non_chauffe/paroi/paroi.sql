DROP TABLE IF EXISTS dpe_audit.enveloppe_local_non_chauffe_paroi;

CREATE TYPE isolation as ENUM('isole', 'non_isole');

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

CREATE TABLE dpe_audit.enveloppe_local_non_chauffe_paroi (
    id UUID PRIMARY KEY NOT NULL,
    local_non_chauffe_id UUID NOT NULL,
    description TEXT NOT NULL,
    isolation isolation,
    -- Position
    surface FLOAT NOT NULL,
    mitoyennete mitoyennete NOT NULL,
    -- Reference
    --FOREIGN KEY (local_non_chauffe_id) REFERENCES dpe_audit.enveloppe_local_non_chauffe(id)
);