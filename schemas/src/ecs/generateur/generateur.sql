DROP TABLE IF EXISTS dpe_audit.ecs_generateur;

CREATE TYPE type_generateur as ENUM(
    'accumulateur',
    'chauffe_eau_instantane',
    'chauffe_eau_vertical',
    'chauffe_eau_horizontal',
    'chaudiere',
    'cet_air_ambiant',
    'cet_air_exterieur',
    'cet_air_extrait',
    'pac_double_service',
    'poele_bouilleur',
    'reseau_chaleur',
);

CREATE TYPE type_chaudiere as ENUM(
    'chaudiere_murale',
    'chaudiere_sol',
);

CREATE TYPE label as ENUM(
    'ne_performance_a',
    'ne_performance_b',
    'ne_performance_c',
);

CREATE TYPE mode_combustion as ENUM(
    'standard',
    'basse_temperature',
    'condensation',
);

CREATE TABLE dpe_audit.ecs_generateur (
    id UUID PRIMARY KEY,
    ecs_id UUID NOT NULL,
    reseau_chaleur_id UUID,
    generateur_mixte_id UUID,
    description TEXT NOT NULL,
    type type_generateur NOT NULL,
    energie energie NOT NULL,
    volume_stockage FLOAT NOT NULL,
    generateur_collectif BOOLEAN NOT NULL,
    generateur_multi_batiment BOOLEAN NOT NULL,
    position_volume_chauffe BOOLEAN NOT NULL,
    annee_installation INTEGER,
    -- Signalétique
    pn FLOAT,
    cop FLOAT,
    rpn FLOAT,
    qp0 FLOAT,
    pveilleuse FLOAT,
    label label,
    type_chaudiere type_chaudiere,
    mode_combustion mode_combustion,
    -- Reference
    --FOREIGN KEY (ecs_id) REFERENCES dpe_audit.ecs(id)
);