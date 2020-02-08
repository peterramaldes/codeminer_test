CREATE DATABASE codeminer_test;
CREATE USER codeminer_user WITH PASSWORD 'codeminer_pass';
GRANT ALL PRIVILEGES ON DATABASE "codeminer_test" to codeminer_user;

\c codeminer_test;

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE SURVIVOR (id uuid DEFAULT uuid_generate_v4(),
                       name VARCHAR NOT NULL,
                       age INTEGER NOT NULL,
                       gender CHAR(1) NOT NULL,
                       latitude INTEGER NOT NULL,
                       longitude INTEGER NOT NULL,
                       PRIMARY KEY (id));

CREATE TABLE ITEM_SPECIFICATION (id uuid DEFAULT uuid_generate_v4(),
                                 name VARCHAR NOT NULL,
                                 point INTEGER NOT NULL,
                                 PRIMARY KEY (id));

CREATE TABLE INVENTORY (id_survivor uuid NOT NULL,
                        id_item uuid NOT NULL,
                        amount INTEGER NOT NULL,
                        PRIMARY KEY (id_survivor, id_item),
                        FOREIGN KEY (id_survivor) REFERENCES SURVIVOR (id),
                        FOREIGN KEY (id_item)     REFERENCES ITEM_SPECIFICATION (id));