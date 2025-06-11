DROP TABLE IF EXISTS dpe_audit.ventilation_installation;

CREATE TABLE dpe_audit.ventilation_installation (
    id UUID PRIMARY KEY,
    ventilation_id UUID NOT NULL,
    description TEXT NOT NULL,
    surface FLOAT NOT NULL,
    -- Reference
    --FOREIGN KEY (ventilation_id) REFERENCES dpe_audit.ventilation(id)
);