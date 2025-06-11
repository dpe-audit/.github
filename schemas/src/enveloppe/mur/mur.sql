DROP TABLE IF EXISTS dpe_audit.enveloppe_mur;

CREATE TYPE type_structure as ENUM(
    'pierre_moellons',
    'pierre_moellons_avec_remplissage',
    'pise_ou_beton_terre',
    'pan_bois_sans_remplissage',
    'pan_bois_avec_remplissage',
    'bois_rondin',
    'brique_pleine_simple',
    'brique_pleine_double_avec_lame_air',
    'brique_creuse',
    'bloc_beton_plein',
    'bloc_beton_creux',
    'beton_banche',
    'beton_machefer',
    'brique_terre_cuite_alveolaire',
    'sandwich_beton_isolant_beton_sans_isolation_rapportee',
    'cloison_platre',
    'ossature_bois_sans_remplissage',
    'ossature_bois_avec_remplissage_tout_venant',
    'ossature_bois_avec_remplissage_isolant'
);

CREATE TYPE type_doublage as ENUM(
    'sans_doublage',
    'indetermine',
    'lame_air_inferieur_15mm',
    'lame_air_superieur_15mm',
    'materiaux_connu'
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

CREATE TABLE dpe_audit.enveloppe_mur (
    id UUID PRIMARY KEY NOT NULL,
    enveloppe_id UUID NOT NULL,
    description TEXT NOT NULL,
    type_structure type_structure,
    epaisseur_structure FLOAT,
    type_doublage type_doublage,
    presence_enduit_isolant BOOLEAN,
    paroi_ancienne BOOLEAN,
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