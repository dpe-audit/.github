DROP TABLE IF EXISTS dpe_audit.ventilation_generateur;

CREATE TYPE type_generateur as ENUM(
    'vmc_simple_flux',
    'vmc_simple_flux_gaz',
    'vmc_basse_pression',
    'vmc_double_flux',
    'ventilation_hybride',
    'ventilation_mecanique',
    'puit_climatique',
    'vmi',
    'vmr',
);

CREATE TYPE type_vmc as ENUM(
    'autoreglable',
    'hygroreglable_type_a',
    'hygroreglable_type_b',
);

CREATE TABLE dpe_audit.ventilation_generateur (
    id UUID PRIMARY KEY,
    ventilation_id UUID NOT NULL,
    description TEXT NOT NULL,
    type type_generateur NOT NULL,
    generateur_collectif BOOLEAN NOT NULL,
    presence_echangeur_thermique BOOLEAN,
    annee_installation INTEGER,
    type_vmc type_vmc,
    -- Reference
    --FOREIGN KEY (ventilation_id) REFERENCES dpe_audit.ventilation(id)
);