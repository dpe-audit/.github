DROP TABLE IF EXISTS dpe_audit.audit;

CREATE TYPE type_batiment as ENUM(
    'maison',
    'immeuble',
);

CREATE TYPE position_logement as ENUM(
    'rdc',
    'etage_intermediaire',
    'dernier_etage',
);

CREATE TYPE typologie_logement as ENUM(
    'T1',
    'T2',
    'T3',
    'T4',
    'T5',
    'T6',
    'T7',
);

CREATE TABLE dpe_audit.audit (
    id UUID PRIMARY KEY,
    date_creation DATE NOT NULL,
    date_etablissement DATE NOT NULL,
    -- Adresse
    numero_adresse TEXT,
    nom_adresse TEXT NOT NULL,
    code_postal_adresse TEXT NOT NULL,
    code_commune_adresse TEXT NOT NULL,
    commune_adresse TEXT NOT NULL,
    ban_id UUID,
    -- Bâtiment
    type_batiment type_batiment NOT NULL,
    annee_construction INTEGER NOT NULL,
    altitude FLOAT NOT NULL,
    logements INTEGER NOT NULL,
    surface_habitable FLOAT NOT NULL,
    hauteur_sous_plafond FLOAT NOT NULL,
    materiaux_anciens BOOLEAN NOT NULL,
    rnb_id UUID,
    -- Reference
    enveloppe_id UUID NOT NULL,
    chauffage_id UUID NOT NULL,
    ecs_id UUID NOT NULL,
    ventilation_id UUID NOT NULL,
    refroidissement_id UUID NOT NULL,
    eclairage_id UUID NOT NULL,
    production_id UUID NOT NULL,
    --FOREIGN KEY (enveloppe_id) REFERENCES dpe_audit.enveloppe(id)
    --FOREIGN KEY (chauffage_id) REFERENCES dpe_audit.chauffage(id)
    --FOREIGN KEY (ecs_id) REFERENCES dpe_audit.ecs(id)
    --FOREIGN KEY (ventilation_id) REFERENCES dpe_audit.ventilation(id)
    --FOREIGN KEY (refroidissement_id) REFERENCES dpe_audit.refroidissement(id)
    --FOREIGN KEY (eclairage_id) REFERENCES dpe_audit.eclairage(id)
    --FOREIGN KEY (production_id) REFERENCES dpe_audit.production(id)
);

CREATE TABLE dpe_audit.audit_logement (
    id UUID PRIMARY KEY,
    audit_id UUID NOT NULL,
    description TEXT NOT NULL,
    surface_habitable FLOAT NOT NULL,
    hauteur_sous_plafond FLOAT NOT NULL,
    position position_logement NOT NULL,
    typologie typologie_logement NOT NULL,
    -- Reference
    --FOREIGN KEY (audit_id) REFERENCES dpe_audit.audit(id)
);