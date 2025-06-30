CREATE TABLE IF NOT EXISTS categorie (
    id NUMERIC PRIMARY KEY,
    code_categorie VARCHAR(255) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    slug VARCHAR(255) NOT NULL,
    who_done VARCHAR(64) NOT NULL DEFAULT CURRENT_USER,
    when_done TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT ck_nom_categorie CHECK(nom IN ('electronique','alimentation','cosmetique','vetement'))
    );