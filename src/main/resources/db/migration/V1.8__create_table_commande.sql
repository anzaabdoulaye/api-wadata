CREATE TABLE IF NOT EXISTS commande (
    id NUMERIC PRIMARY KEY,
    libelle VARCHAR(255) NOT NULL,
    statut VARCHAR(55) NOT NULL,
    montant_total_tcc INTEGER NOT NULL,
    id_client INTEGER NOT NULL,
    id_livraison INTEGER NOT NULL,
    who_done VARCHAR(64) NOT NULL DEFAULT CURRENT_USER,
    when_done TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_id_client FOREIGN KEY (id_client) REFERENCES client(id),
    CONSTRAINT fk_id_livraison FOREIGN KEY (id_livraison) REFERENCES livraison(id),
    CONSTRAINT ck_satut_commande CHECK (statut IN ('EN_ATTENTE','PAYEE','EXPEDIEE','LIVREEE','ANNULEE'))
);