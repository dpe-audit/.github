DROP TABLE IF EXISTS dpe_audit.enveloppe_porte;

CREATE TYPE type_pose as ENUM('nu_exterieur', 'nu_interieur', 'tunnel');

CREATE TYPE etat_isolation as ENUM('isole', 'non_isole');

CREATE TYPE materiau as ENUM('pvc', 'bois', 'bois_metal', 'metal');

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

CREATE TYPE type_vitrage as ENUM('simple_vitrage', 'double_vitrage', 'triple_vitrage');

CREATE TABLE dpe_audit.enveloppe_porte (
    id UUID PRIMARY KEY,
    enveloppe_id UUID NOT NULL,
    description VARCHAR(255) NOT NULL,
    type_pose type_pose NOT NULL,
    isolation etat_isolation,
    materiau materiau,
    presence_sas BOOLEAN NOT NULL,
    annee_installation INT,
    u FLOAT,
    -- Position
    paroi_id UUID,
    local_non_chauffe_id UUID,
    surface FLOAT NOT NULL,
    mitoyennete mitoyennete NOT NULL,
    orientation FLOAT,
    -- Menuiserie
    largeur_dormant FLOAT,
    presence_joint BOOLEAN,
    presence_retour_isolation BOOLEAN,
    -- Vitrage
    taux_vitrage FLOAT NOT NULL,
    type_vitrage type_vitrage,
    -- Reference
    --FOREIGN KEY (enveloppe_id) REFERENCES dpe_audit.enveloppe(id)
);