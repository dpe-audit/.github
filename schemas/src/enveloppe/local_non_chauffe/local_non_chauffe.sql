DROP TABLE IF EXISTS dpe_audit.enveloppe_local_non_chauffe;

CREATE TYPE type_lnc as ENUM(
    'garage',
    'cellier',
    'espace_tampon_solarise',
    'comble_fortement_ventile',
    'comble_faiblement_ventile',
    'comble_tres_faiblement_ventile',
    'circulation_sans_ouverture_exterieure',
    'circulation_avec_ouverture_exterieure',
    'circulation_avec_bouche_ou_gaine_desenfumage_ouverte',
    'hall_entree_avec_fermeture_automatique',
    'hall_entree_sans_fermeture_automatique',
    'garage_collectif',
    'autres'
);

CREATE TABLE dpe_audit.enveloppe_local_non_chauffe (
    id UUID PRIMARY KEY NOT NULL,
    enveloppe_id UUID NOT NULL,
    description TEXT NOT NULL,
    type type_lnc NOT NULL,
    -- Reference
    --FOREIGN KEY (enveloppe_id) REFERENCES dpe_audit.enveloppe(id)
);