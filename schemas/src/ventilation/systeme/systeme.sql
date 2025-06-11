DROP TABLE IF EXISTS dpe_audit.ventilation_systeme;

CREATE TYPE type_systeme as ENUM(
    'ventilation_mecanique',
    'ventilation_naturelle_ouverture_fenetres',
    'ventilation_naturelle_entrees_air_hautes_basses',
    'ventilation_naturelle_conduit',
    'ventilation_naturelle_conduit_entrees_air_hygroreglables',
);

CREATE TABLE dpe_audit.ventilation_systeme (
    id UUID PRIMARY KEY,
    installation_id UUID NOT NULL,
    generateur_id UUID,
    type type_systeme NOT NULL,
    -- Reference
    --FOREIGN KEY (installation_id) REFERENCES dpe_audit.ventilation_installation(id)
    --FOREIGN KEY (generateur_id) REFERENCES dpe_audit.ventilation_generateur(id)
);