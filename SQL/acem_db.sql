
CREATE OR REPLACE TABLE users (
    id_user             INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    num_passeport       VARCHAR(10) UNIQUE NOT NULL,
    id_cin              VARCHAR(8) UNIQUE NULL,
    mat_amci            INTEGER UNIQUE NULL,
    id_ville            INTEGER, 
    id_formation        INTEGER, 
    fname               VARCHAR(20),
    lname               VARCHAR(20),
    birthdate           DATE,
    email               VARCHAR(20),
    id_role             INTEGER,
    adherant            BOOLEAN, 
    autre               TEXT
) ENGINE = InnoDB;

CREATE OR REPLACE TABLE cartes_sejours (
    id_cin              VARCHAR(8) PRIMARY KEY,
    id_user             INTEGER,
    id_ville            INTEGER,
    annee_obtention     DATE,
    annee_expiration    DATE,
    adresse             VARCHAR(45),
    pin_sejour          INTEGER
) ENGINE = InnoDB;

CREATE OR REPLACE TABLE villes (
    id_ville            INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_region           INTEGER,
    nom_ville           VARCHAR(20)
            
) ENGINE = InnoDB;


CREATE OR REPLACE TABLE facultes_instituts (
    id_fac_inst         INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_ville            INTEGER,
    nom_fac_inst        VARCHAR(20)

) ENGINE = InnoDB;


CREATE OR REPLACE TABLE formations (
    id_formation        INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    id_fac_inst         INTEGER,
    intitule_formation  VARCHAR(45),
    duration            INTEGER,
    dropped_years       INTEGER

) ENGINE = InnoDB;

CREATE OR REPLACE TABLE roles (
    id_role             INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
    role_name           VARCHAR(20),
    sesion_start        TIMESTAMP,
    session_end         TIMESTAMP

) ENGINE = InnoDB;

CREATE OR REPLACE TABLE regions (
    id_region           INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name_region         VARCHAR(20)

) ENGINE = InnoDB;

#### FOREIGN KEYS ####

ALTER TABLE users ADD CONSTRAINT fk_id_cin FOREIGN KEY (id_cin) REFERENCES cartes_sejours (id_cin) ON DELETE SET NULL ON UPDATE CASCADE;

ALTER TABLE users ADD CONSTRAINT fk_id_ville_user FOREIGN KEY (id_ville) REFERENCES villes (id_ville) ON UPDATE CASCADE;

ALTER TABLE users ADD CONSTRAINT fk_id_formation FOREIGN KEY (id_formation) REFERENCES formations (id_formation) ON UPDATE CASCADE;

ALTER TABLE users ADD CONSTRAINT fk_id_role FOREIGN KEY (id_role) REFERENCES roles (id_role) 
ON UPDATE CASCADE;

ALTER TABLE cartes_sejours ADD CONSTRAINT fk_id_user FOREIGN KEY (id_user) REFERENCES users (id_user) ON DELETE CASCADE;

ALTER TABLE cartes_sejours ADD CONSTRAINT fk_id_ville_sejour FOREIGN KEY (id_ville) REFERENCES villes (id_ville) ON UPDATE CASCADE;

ALTER TABLE facultes_instituts ADD CONSTRAINT fk_id_ville_fac FOREIGN KEY (id_ville) REFERENCES villes (id_ville) ON UPDATE CASCADE;

ALTER TABLE formations ADD CONSTRAINT fk_id_fac_inst FOREIGN KEY (id_fac_inst) REFERENCES facultes_instituts (id_fac_inst) ON UPDATE CASCADE;

ALTER TABLE villes ADD CONSTRAINT fk_id_region FOREIGN KEY (id_region) REFERENCES regions (id_region) ON UPDATE CASCADE;

