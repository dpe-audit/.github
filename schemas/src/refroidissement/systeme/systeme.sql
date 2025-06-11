DROP TABLE IF EXISTS dpe_audit.refroidissement_systeme;

CREATE TABLE dpe_audit.refroidissement_systeme (
    id UUID PRIMARY KEY,
    installation_id UUID NOT NULL,
    generateur_id UUID NOT NULL,
    --FOREIGN KEY (installation_id) REFERENCES dpe_audit.refroidissement_installation(id)
    --FOREIGN KEY (generateur_id) REFERENCES dpe_audit.refroidissement_generateur(id)
);