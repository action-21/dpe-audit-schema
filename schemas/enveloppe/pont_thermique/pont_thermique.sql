DROP TABLE IF EXISTS dpe_audit.enveloppe_pont_thermique;

CREATE TYPE type_liaison as ENUM(
    'plancher_bas_mur',
    'plancher_haut_mur',
    'refend_mur',
    'plancher_intermediaire_mur',
    'menuiserie_mur'
);

CREATE TABLE dpe_audit.enveloppe_pont_thermique (
    id UUID PRIMARY KEY NOT NULL,
    enveloppe_id UUID NOT NULL,
    description TEXT NOT NULL,
    longueur FLOAT NOT NULL,
    kpt FLOAT,
    -- Liaison
    type_liaison type_liaison NOT NULL,
    pont_thermique_partiel BOOLEAN,
    mur_id UUID NOT NULL,
    plancher_bas_id UUID,
    plancher_haut_id UUID,
    baie_id UUID porte_id UUID
    -- Reference
    --FOREIGN KEY (enveloppe_id) REFERENCES dpe_audit.enveloppe(id)
    --FOREIGN KEY (mur_id) REFERENCES dpe_audit.enveloppe_mur(id)
    --FOREIGN KEY (plancher_bas_id) REFERENCES dpe_audit.enveloppe_plancher_bas(id)
    --FOREIGN KEY (plancher_haut_id) REFERENCES dpe_audit.enveloppe_plancher_haut(id)
    --FOREIGN KEY (baie_id) REFERENCES dpe_audit.enveloppe_baie(id)
    --FOREIGN KEY (porte_id) REFERENCES dpe_audit.enveloppe_baie(id)
);