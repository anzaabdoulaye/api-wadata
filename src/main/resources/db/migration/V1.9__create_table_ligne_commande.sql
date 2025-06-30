CREATE TABLE IF NOT EXISTS ligne_commande (
    id NUMERIC PRIMARY KEY,
    prix_unitaire INTEGER NOT NULL,
    quantite INTEGER NOT NULL,
    id_produit INTEGER NOT NULL,
    id_commande INTEGER NOT NULL,
    statut_ligne VARCHAR(55) NOT NULL,
    who_done VARCHAR(64) NOT NULL DEFAULT CURRENT_USER,
    when_done TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_id_produit FOREIGN KEY (id_produit) REFERENCES produit (id),
    CONSTRAINT fk_id_commande FOREIGN KEY (id_commande) REFERENCES commande (id),
    CONSTRAINT ck_statut_ligne CHECK (statut_ligne IN ('CONFIRMER','ANNULER','REMBOURSER'))
);