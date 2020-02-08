\c codeminer_test;

INSERT INTO ITEM_SPECIFICATION (name, point) VALUES ('Water', 4);
INSERT INTO ITEM_SPECIFICATION (name, point) VALUES ('Food', 3);
INSERT INTO ITEM_SPECIFICATION (name, point) VALUES ('Medication', 2);
INSERT INTO ITEM_SPECIFICATION (name, point) VALUES ('Ammunition', 1);

INSERT INTO SURVIVOR (name, age, gender, latitude, longitude) VALUES ('Peter A. Ramaldes', 24, 'M', 50, 100);
INSERT INTO SURVIVOR (name, age, gender, latitude, longitude) VALUES ('Pamela A. Fracalossi', 25, 'F', 250, 300);

INSERT INTO INVENTORY (id_survivor, id_item, amount) VALUES ((SELECT ID FROM SURVIVOR WHERE name = 'Peter A. Ramaldes'), (SELECT ID FROM ITEM_SPECIFICATION WHERE name = 'Water'), 0);
INSERT INTO INVENTORY (id_survivor, id_item, amount) VALUES ((SELECT ID FROM SURVIVOR WHERE name = 'Peter A. Ramaldes'), (SELECT ID FROM ITEM_SPECIFICATION WHERE name = 'Food'), 0);
INSERT INTO INVENTORY (id_survivor, id_item, amount) VALUES ((SELECT ID FROM SURVIVOR WHERE name = 'Peter A. Ramaldes'), (SELECT ID FROM ITEM_SPECIFICATION WHERE name = 'Medication'), 0);
INSERT INTO INVENTORY (id_survivor, id_item, amount) VALUES ((SELECT ID FROM SURVIVOR WHERE name = 'Peter A. Ramaldes'), (SELECT ID FROM ITEM_SPECIFICATION WHERE name = 'Ammunition'), 0);

INSERT INTO INVENTORY (id_survivor, id_item, amount) VALUES ((SELECT ID FROM SURVIVOR WHERE name = 'Pamela A. Fracalossi'), (SELECT ID FROM ITEM_SPECIFICATION WHERE name = 'Water'), 0);
INSERT INTO INVENTORY (id_survivor, id_item, amount) VALUES ((SELECT ID FROM SURVIVOR WHERE name = 'Pamela A. Fracalossi'), (SELECT ID FROM ITEM_SPECIFICATION WHERE name = 'Food'), 0);
INSERT INTO INVENTORY (id_survivor, id_item, amount) VALUES ((SELECT ID FROM SURVIVOR WHERE name = 'Pamela A. Fracalossi'), (SELECT ID FROM ITEM_SPECIFICATION WHERE name = 'Medication'), 0);
INSERT INTO INVENTORY (id_survivor, id_item, amount) VALUES ((SELECT ID FROM SURVIVOR WHERE name = 'Pamela A. Fracalossi'), (SELECT ID FROM ITEM_SPECIFICATION WHERE name = 'Ammunition'), 0);