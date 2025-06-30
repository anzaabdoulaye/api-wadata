CREATE TABLE IF NOT EXISTS produit (
    id SERIAL PRIMARY KEY,
    code_produit VARCHAR(255) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    categorie_id INTEGER NOT NULL ,
    boutique_id INTEGER NOT NULL,
    prix_unitaire INTEGER NOT NULL,
    quantite_en_stock INTEGER NOT NULL,
    image VARCHAR(255) NOT NULL,
    note_produit DECIMAL NOT NULL,
    who_done VARCHAR(64) NOT NULL DEFAULT CURRENT_USER,
    when_done TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_categorie_produit FOREIGN KEY (categorie_id) REFERENCES categorie(id),
    CONSTRAINT fk_boutique_produit FOREIGN KEY (boutique_id) REFERENCES boutique(id)
 );
