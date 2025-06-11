DROP TABLE IF EXISTS dpe_audit.enveloppe_plancher_haut;

CREATE TYPE configuration as ENUM('combles_perdus', 'rampants', 'terrasse');

CREATE TYPE type_structure as ENUM(
    'plafond_avec_ou_sans_remplissage',
    'plafond_entre_solives_metalliques',
    'plafond_entre_solives_bois',
    'plafond_bois_sur_solives_metalliques',
    'plafond_bois_sous_solives_metalliques',
    'bardeaux_et_remplissage',
    'plafond_bois_sur_solives_bois',
    'plafond_bois_sous_solives_bo',
    'dalle_beton',
    'plafond_lourd',
    'combles_amenages_sous_rampant',
    'toiture_chaume',
    'plafond_patre',
    'bac_acier'
);

CREATE TYPE inertie as ENUM('lourde', 'legere');

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

CREATE TYPE etat_isolation as ENUM('isole', 'non_isole');

CREATE TYPE type_isolation as ENUM('iti', 'ite', 'itr', 'iti_ite', 'itr_iti', 'itr_ite', 'itr_iti_ite');

CREATE TABLE dpe_audit.enveloppe_plancher_haut (
    id UUID PRIMARY KEY NOT NULL,
    enveloppe_id UUID NOT NULL,
    description TEXT NOT NULL,
    configuration configuration,
    type_structure type_structure,
    inertie inertie,
    annee_construction INTEGER,
    annee_renovation INTEGER,
    u0 FLOAT,
    u FLOAT,
    -- Position
    surface FLOAT NOT NULL,
    mitoyennete mitoyennete NOT NULL,
    orientation FLOAT,
    local_non_chauffe_id UUID,
    -- Isolation
    etat_isolation etat_isolation NOT NULL,
    type_isolation type_isolation,
    annee_isolation INTEGER,
    epaisseur_isolation FLOAT,
    resistance_thermique_isolation FLOAT
    -- Reference
    --FOREIGN KEY (enveloppe_id) REFERENCES dpe_audit.enveloppe(id)
    --FOREIGN KEY (local_non_chauffe_id) REFERENCES dpe_audit.enveloppe_local_non_chauffe(id)
);