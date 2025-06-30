CREATE TABLE IF NOT EXISTS utilisateur (
    id NUMERIC PRIMARY KEY,
    nom VARCHAR(255),
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    etat_compte VARCHAR(55) NOT NULL DEFAULT 'actif',
    role VARCHAR(55) NOT NULL,
    who_done VARCHAR(64) NOT NULL DEFAULT CURRENT_USER,
    when_done TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT ck_etat_compte CHECK (etat_compte IN ('actif','inactif')),
    CONSTRAINT ck_role_user CHECK (role in ('administrateur','gestionnaire'))
);