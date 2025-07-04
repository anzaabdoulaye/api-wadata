CREATE TABLE IF NOT EXISTS paiement (
    id NUMERIC PRIMARY KEY,
    statut VARCHAR(55) NOT NULL,
    mode VARCHAR(55) NOT NULL,
    reference_externe VARCHAR(255) NOT NULL,
    id_commande INTEGER NOT NULL,
    who_done VARCHAR(64) NOT NULL DEFAULT CURRENT_USER,
    when_done TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    last_update TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_id_commande FOREIGN KEY (id_commande) REFERENCES commande (id),
    CONSTRAINT ck_statut_paiement CHECK (statut IN ('REUSSI','ECHOUE','EN_ATTENTE')),
    CONSTRAINT ck_mode_paiement CHECK (mode IN ('CARTE','MOBILE MONEY','PAY PAL','CASH','VIREMENT'))
);