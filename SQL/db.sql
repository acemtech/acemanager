
CREATE OR REPLACE TABLE users (
    id_user             INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    
    num_passeport       VARCHAR(10) UNIQUE NOT NULL,
    id_cin              VARCHAR(8) UNIQUE NULL  CONSTRAINT 'fk_id_cin' FOREIGN KEY (id_cin) REFERENCES cartes_sejours (id_cin) 
    ON DELETE SET NULL ON UPDATE CASCADE,

    mat_amci            INTEGER UNIQUE NULL,
    id_ville            INTEGER CONSTRAINT 'fk_id_ville' FOREIGN KEY (id_ville) REFERENCES villes (id_ville) ON UPDATE CASCADE,

    id_formation        INTEGER CONSTRAINT 'fk_id_formation' FOREIGN KEY (id_formation) REFERENCES formations (id_formation) ON UPDATE CASCADE, 
    fname               VARCHAR(20),
    lname               VARCHAR(20),
    birthdate           DATE,
    email               VARCHAR(20),
    id_role             INTEGER  CONSTRAINT 'fk_id_role' FOREIGN KEY (id_role) REFERENCES roles (id_role) ON UPDATE CASCADE,
    adherant            BOOLEAN, 
    autre               TEXT,
) ENGINE = InnoDB;

CREATE OR REPLACE TABLE cartes_sejours (
    id_cin              INTEGER PRIMARY KEY,
    id_user             INTEGER CONSTRAINT 'fk_id_user' FOREIGN KEY (id_user) REFERENCES users (id_user) ON DELETE CASCADE,
    id_ville            INTEGER CONSTRAINT 'fk_id_ville_cin' FOREIGN KEY (id_ville) REFERENCES villes (id_ville) ON UPDATE CASCADE,
    annee_obtention     DATE,
    annee_expiration    DATE,
    adresse             VARCHAR(45),
    pin_sejour          INTEGER,
) ENGINE = InnoDB;

CREATE OR REPLACE TABLE villes (
    id_ville            INTEGER PRIMARY KEY,
    nom_ville           VARCHAR(20),
    nom_region          VARCHAR(20)         
) ENGINE = InnoDB;


CREATE OR REPLACE TABLE facultes_instituts (
    id_fac_inst         INTEGER PRIMARY KEY,
    id_ville            INTEGER CONSTRAINT 'fk_id_ville_fac' FOREIGN KEY (id_ville) REFERENCES villes (id_ville) ON UPDATE CASCADE,
    nom_fac_inst        VARCHAR(20),

) ENGINE = InnoDB;


CREATE OR REPLACE TABLE formations (
    id_formation        INTEGER PRIMARY KEY,
    id_fac_inst         INTEGER CONSTRAINT 'fk_id_fac_inst' FOREIGN KEY (id_fac_inst) REFERENCES faultes_institus (id_fac_inst) ON UPDATE CASCADE,
    intitule_formation  VARCHAR(45),
    duration            INTEGER,
    dropped_years       INTEGER,

) ENGINE = InnoDB;

CREATE OR REPLACE TABLE roles (
    id_role             INTEGER PRIMARY KEY,
    role_name           VARCHAR(20)
    sesion_start        TIMESTAMP,
    session_end         TIMESTAMP,

) ENGINE = InnoDB;

