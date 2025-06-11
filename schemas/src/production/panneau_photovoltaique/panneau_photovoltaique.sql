DROP TABLE IF EXISTS dpe_audit.production_panneau_photovoltaique;

CREATE TABLE dpe_audit.production_panneau_photovoltaique (
    id UUID PRIMARY KEY,
    production_id UUID NOT NULL,
    description TEXT NOT NULL,
    orientation FLOAT NOT NULL,
    inclinaison FLOAT NOT NULL,
    modules INT NOT NULL,
    surface FLOAT,
    -- Reference
    --FOREIGN KEY (production_id) REFERENCES dpe_audit.production(id)
);