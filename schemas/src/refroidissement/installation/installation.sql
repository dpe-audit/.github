DROP TABLE IF EXISTS dpe_audit.refroidissement_installation;

CREATE TABLE dpe_audit.refroidissement_installation (
    id UUID PRIMARY KEY,
    refroidissement_id UUID NOT NULL,
    description TEXT NOT NULL,
    surface FLOAT NOT NULL,
    -- Reference
    --FOREIGN KEY (refroidissement_id) REFERENCES dpe_audit.refroidissement(id)
);