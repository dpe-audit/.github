DROP TABLE IF EXISTS dpe_audit.enveloppe_baie;

CREATE TYPE type_baie as ENUM(
    'brique_verre_pleine',
    'brique_verre_creuse',
    'polycarbonate',
    'fenetre_battante',
    'fenetre_coulissante',
    'porte_fenetre_coulissante',
    'porte_fenetre_battante'
);

CREATE TYPE type_pose as ENUM('nu_exterieur', 'nu_interieur', 'tunnel');

CREATE TYPE materiau as ENUM('pvc', 'bois', 'bois_metal', 'metal');

CREATE TYPE type_vitrage as ENUM(
    'simple_vitrage',
    'double_vitrage',
    'double_vitrage_fe',
    'triple_vitrage',
    'triple_vitrage_fe'
);

CREATE TYPE nature_gaz_lame as ENUM(
    'air',
    'argon',
    'krypton'
);

CREATE TYPE type_survitrage as ENUM(
    'survitrage_simple',
    'survitrage_fe'
);

CREATE TYPE type_fermeture as ENUM(
    'sans_fermeture',
    'jalousie_accordeon',
    'fermeture_lames_orientables',
    'venitiens_exterieurs_metal',
    'volet_battant_avec_ajours_fixes',
    'persiennes_avec_ajours_fixes',
    'fermeture_sans_ajours',
    'volets_roulants_aluminium',
    'volets_roulants_pvc_bois_epaisseur_lte_12_mm',
    'volets_roulants_pvc_bois_epaisseur_gt_12_mm',
    'persienne_coulissante_epaisseur_lte_22_mm',
    'persienne_coulissante_epaisseur_gt_22_mm',
    'volet_battant_pvc_bois_epaisseur_lte_22_mm',
    'volet_battant_pvc_bois_epaisseur_gt_22_mm',
    'fermeture_isolee_sans_ajours'
);

CREATE TYPE mitoyennete as ENUM(
    'exterieur',
    'enterre',
    'vide_sanitaire',
    'terre_plein',
    'sous_sol_non_chauffe',
    'local_non_chauffe',
    'local_non_residentiel',
    'local_residentiel',
    'local_non_accessible'
);

CREATE TABLE dpe_audit.enveloppe_baie (
    id UUID PRIMARY KEY,
    enveloppe_id UUID NOT NULL,
    description VARCHAR(255) NOT NULL,
    type_pose type_pose NOT NULL,
    type_baie type_baie NOT NULL,
    materiau materiau,
    presence_protection_solaire BOOLEAN NOT NULL,
    type_fermeture type_fermeture NOT NULL,
    annee_installation INT,
    ug FLOAT,
    uw FLOAT,
    ujn FLOAT,
    sw FLOAT,
    -- Position
    paroi_id UUID,
    local_non_chauffe_id UUID,
    surface FLOAT NOT NULL,
    mitoyennete mitoyennete NOT NULL,
    inclinaison FLOAT NOT NULL,
    orientation FLOAT,
    -- Vitrage
    type_vitrage type_vitrage,
    nature_gaz_lame nature_gaz_lame,
    epaisseur_lame FLOAT,
    -- Survitrage
    survitrage_type_survitrage type_survitrage,
    survitrage_epaisseur_lame FLOAT,
    -- Menuiserie
    largeur_dormant FLOAT,
    presence_joint BOOLEAN,
    presence_retour_isolation BOOLEAN,
    presence_rupteur_pont_thermique BOOLEAN,
    -- Double fenêtre
    double_fenetre_type_pose type_pose,
    double_fenetre_type_baie type_baie,
    double_fenetre_materiau materiau,
    double_fenetre_ug FLOAT,
    double_fenetre_uw FLOAT,
    double_fenetre_sw FLOAT,
    -- Double fenêtre - Vitrage
    double_fenetre_type_vitrage type_vitrage,
    double_fenetre_nature_gaz_lame nature_gaz_lame,
    double_fenetre_epaisseur_lame FLOAT,
    -- Double fenêtre - Survitrage
    double_fenetre_survitrage_type_survitrage type_survitrage,
    double_fenetre_survitrage_epaisseur_lame FLOAT,
    -- Double fenêtre - Menuiserie
    double_fenetre_largeur_dormant FLOAT,
    double_fenetre_presence_joint BOOLEAN,
    double_fenetre_presence_retour_isolation BOOLEAN,
    double_fenetre_presence_rupteur_pont_thermique BOOLEAN,
    -- Reference
    --FOREIGN KEY (enveloppe_id) REFERENCES dpe_audit.enveloppe(id)
    --FOREIGN KEY (local_non_chauffe_id) REFERENCES dpe_audit.enveloppe_local_non_chauffe(id)
);