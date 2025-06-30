CREATE TABLE IF NOT EXISTS boutique (
    id NUMERIC PRIMARY KEY,
    nom_boutique VARCHAR(255) NOT NULL,
    type_activite VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    statut VARCHAR(255) NOT NULL,
    telephone INTEGER NOT NULL,
    note_boutique DECIMAL NOT NULL,
    id_utilisateur INTEGER NOT NULL,
    who_done VARCHAR(64) NOT NULL DEFAULT CURRENT_USER,
    when_done TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_id_utilisateur FOREIGN KEY (id_utilisateur) REFERENCES utilisateur (id),
    CONSTRAINT ck_satut_boutique CHECK (statut IN ('actif','suspendu'))
);
