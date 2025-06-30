CREATE TABLE IF NOT EXISTS ligne_panier (
    id NUMERIC PRIMARY KEY,
    quantite INTEGER NOT NULL,
    prix_unitaire_ht INTEGER NOT NULL,
    prix_unitaire_tcc INTEGER NOT NULL,
    sous_total INTEGER NOT NULL,
    id_produit INTEGER NOT NULL,
    id_panier INTEGER NOT NULL,
    who_done VARCHAR(64) NOT NULL DEFAULT CURRENT_USER,
    when_done TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_id_produit FOREIGN KEY (id_produit) REFERENCES produit (id),
    CONSTRAINT fk_id_panier FOREIGN KEY (id_panier) REFERENCES panier (id)
);