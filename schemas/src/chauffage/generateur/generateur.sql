DROP TABLE IF EXISTS dpe_audit.chauffage_generateur;

CREATE TYPE type_generateur as ENUM(
    'chaudiere',
    'convecteur_bi_jonction',
    'convecteur_electrique',
    'cuisiniere',
    'foyer_ferme',
    'generateur_air_chaud',
    'insert',
    'pac_air_air',
    'pac_air_eau',
    'pac_eau_eau',
    'pac_eau_glycolee_eau',
    'pac_geothermique',
    'pac_hybride_air_eau',
    'pac_hybride_eau_eau',
    'pac_hybride_eau_glycolee_eau',
    'pac_hybride_geothermique',
    'panneau_rayonnant_electrique',
    'plafond_rayonnant_electrique',
    'plancher_rayonnant_electrique',
    'poele',
    'poele_bouilleur',
    'radiateur_electrique',
    'radiateur_electrique_accumulation',
    'radiateur_gaz',
    'reseau_chaleur',
);

CREATE TYPE type_chaudiere as ENUM(
    'chaudiere_murale',
    'chaudiere_sol',
);

CREATE TYPE label as ENUM(
    'flamme_verte',
    'nf_performance',
);

CREATE TYPE mode_combustion as ENUM(
    'standard',
    'basse_temperature',
    'condensation',
);

CREATE TABLE dpe_audit.chauffage_generateur (
    id UUID PRIMARY KEY,
    chauffage_id UUID NOT NULL,
    reseau_chaleur_id UUID,
    generateur_mixte_id UUID,
    description TEXT NOT NULL,
    type type_generateur NOT NULL,
    energie energie NOT NULL,
    generateur_collectif BOOLEAN NOT NULL,
    generateur_multi_batiment BOOLEAN NOT NULL,
    position_volume_chauffe BOOLEAN NOT NULL,
    annee_installation INTEGER,
    -- Signalétique
    pn FLOAT,
    scop FLOAT,
    rpn FLOAT,
    rpint FLOAT,
    qp0 FLOAT,
    pveilleuse FLOAT,
    tfonc30 FLOAT,
    tfonc100 FLOAT,
    presence_ventouse BOOLEAN,
    presence_regulation_combustion BOOLEAN,
    label label,
    type_chaudiere type_chaudiere,
    mode_combustion mode_combustion,
    -- Reference
    --FOREIGN KEY (chauffage_id) REFERENCES dpe_audit.chauffage(id)
);