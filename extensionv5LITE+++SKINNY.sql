-- =======================================================
-- SCRIPT D'EXTENSION DE LA BASE (DATES SUR 10 ANS)
-- =======================================================

-- =======================================================
-- TABLE : Grade
-- =======================================================
INSERT INTO Grade VALUES (1, 'Affilie');
INSERT INTO Grade VALUES (2, 'Sympathisant');
INSERT INTO Grade VALUES (3, 'Adherent');
INSERT INTO Grade VALUES (4, 'Chevalier');
INSERT INTO Grade VALUES (5, 'Dame');
INSERT INTO Grade VALUES (6, 'Grand Croix');


-- =======================================================
-- TABLE : Croyances
-- =======================================================
INSERT INTO Croyances VALUES (1, 'Vegan');
INSERT INTO Croyances VALUES (2, 'Casher');
INSERT INTO Croyances VALUES (3, 'Halal');
INSERT INTO Croyances VALUES (4, 'Culte');


-- =======================================================
-- TABLE : Allergenes
-- =======================================================
INSERT INTO Allergenes VALUES (1, 'Lactose');
INSERT INTO Allergenes VALUES (2, 'Arachide');
INSERT INTO Allergenes VALUES (3, 'Gluten');
INSERT INTO Allergenes VALUES (4, 'Noix');
INSERT INTO Allergenes VALUES (5, 'Moutarde');
INSERT INTO Allergenes VALUES (6, 'Venin');


-- =======================================================
-- TABLE : Ingredient
-- =======================================================
INSERT INTO Ingredient VALUES (1, 'sauce');
INSERT INTO Ingredient VALUES (2, 'moutarde');
INSERT INTO Ingredient VALUES (3, 'ketchup');
INSERT INTO Ingredient VALUES (4, 'beurre');
INSERT INTO Ingredient VALUES (5, 'sel');
INSERT INTO Ingredient VALUES (6, 'poivre');
INSERT INTO Ingredient VALUES (7, 'piment');
INSERT INTO Ingredient VALUES (8, 'herbes');
INSERT INTO Ingredient VALUES (9, 'ail');
INSERT INTO Ingredient VALUES (10, 'curcuma');
INSERT INTO Ingredient VALUES (11, 'paprika');


-- =======================================================
-- TABLE : Boisson
-- =======================================================
INSERT INTO Boisson VALUES (1, 'Eau', 'Sans');
INSERT INTO Boisson VALUES (2, 'Biere', 'Alcool');
INSERT INTO Boisson VALUES (3, 'Vin Rouge', 'Alcool');
INSERT INTO Boisson VALUES (4, 'Ice Tea', 'Sans');
INSERT INTO Boisson VALUES (5, 'Potion', 'Sans');
INSERT INTO Boisson VALUES (6, 'Hydromel', 'Alcool');
INSERT INTO Boisson VALUES (7, 'Jus Pomme', 'Sans');
INSERT INTO Boisson VALUES (8, 'Vin Blanc', 'Alcool');
INSERT INTO Boisson VALUES (9, 'Champagne', 'Alcool');
INSERT INTO Boisson VALUES (10, 'Cafe', 'Sans');
INSERT INTO Boisson VALUES (11, 'The Vert', 'Sans');
INSERT INTO Boisson VALUES (12, 'Limonade', 'Sans');
INSERT INTO Boisson VALUES (13, 'Whisky', 'Alcool');
INSERT INTO Boisson VALUES (14, 'Rhum', 'Alcool');
INSERT INTO Boisson VALUES (15, 'Vodka', 'Alcool');
INSERT INTO Boisson VALUES (16, 'Gin', 'Alcool');
INSERT INTO Boisson VALUES (17, 'Cidre', 'Alcool');
INSERT INTO Boisson VALUES (18, 'Margarita', 'Alcool');
INSERT INTO Boisson VALUES (19, 'Mojito', 'Alcool');
INSERT INTO Boisson VALUES (20, 'Sangria', 'Alcool');
INSERT INTO Boisson VALUES (21, 'Lait', 'Sans');
INSERT INTO Boisson VALUES (22, 'Jus d'Orange', 'Sans');
INSERT INTO Boisson VALUES (23, 'Soda', 'Sans');
INSERT INTO Boisson VALUES (24, 'Chocolat Chaud', 'Sans');
INSERT INTO Boisson VALUES (25, 'Kombucha', 'Sans');
INSERT INTO Boisson VALUES (26, 'Sirop de Menthe', 'Sans');
INSERT INTO Boisson VALUES (27, 'Smoothie', 'Sans');
INSERT INTO Boisson VALUES (28, 'Espresso Martini', 'Alcool');
INSERT INTO Boisson VALUES (29, 'Pastis', 'Alcool');
INSERT INTO Boisson VALUES (30, 'Sake', 'Alcool');


-- =======================================================
-- TABLE : Machine
-- =======================================================
INSERT INTO Machine VALUES (1, 'Combine Elite 1', 'MDL-3015');
INSERT INTO Machine VALUES (2, 'TenderPro Plus 2', 'MDL-2556');
INSERT INTO Machine VALUES (3, 'CrousPrime Ultra 3', 'MDL-4657');
INSERT INTO Machine VALUES (4, 'GrillTech Plus 4', 'MDL-2242');
INSERT INTO Machine VALUES (5, 'Combine Eco 5', 'MDL-7939');
INSERT INTO Machine VALUES (6, 'Combine V2 6', 'MDL-2538');
INSERT INTO Machine VALUES (7, 'CrousPrime Ultra 7', 'MDL-5766');
INSERT INTO Machine VALUES (8, 'Tradition Eco 8', 'MDL-5817');
INSERT INTO Machine VALUES (9, 'Cheesy Elite 9', 'MDL-6379');
INSERT INTO Machine VALUES (10, 'OptiFrom Max 10', 'MDL-8157');


-- =======================================================
-- TABLE : Entretien
-- =======================================================
INSERT INTO Entretien VALUES (1, TO_TIMESTAMP_TZ('2025-03-03 20:37:55 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Revision', 1);
INSERT INTO Entretien VALUES (2, TO_TIMESTAMP_TZ('2014-02-12 09:37:07 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Reparation', 1);
INSERT INTO Entretien VALUES (3, TO_TIMESTAMP_TZ('2024-01-15 17:23:41 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Revision', 1);
INSERT INTO Entretien VALUES (4, TO_TIMESTAMP_TZ('2020-06-25 05:53:23 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Revision', 2);
INSERT INTO Entretien VALUES (5, TO_TIMESTAMP_TZ('2022-11-11 10:04:23 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Reparation', 2);
INSERT INTO Entretien VALUES (6, TO_TIMESTAMP_TZ('2025-11-19 01:53:35 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Annuel', 3);
INSERT INTO Entretien VALUES (7, TO_TIMESTAMP_TZ('2022-05-29 08:25:37 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Reparation', 3);
INSERT INTO Entretien VALUES (8, TO_TIMESTAMP_TZ('2014-03-19 20:14:29 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Reparation', 3);
INSERT INTO Entretien VALUES (9, TO_TIMESTAMP_TZ('2023-05-07 22:19:53 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Revision', 4);
INSERT INTO Entretien VALUES (10, TO_TIMESTAMP_TZ('2019-06-06 09:34:53 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Nettoyage', 4);
INSERT INTO Entretien VALUES (11, TO_TIMESTAMP_TZ('2025-06-21 17:12:15 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Annuel', 4);
INSERT INTO Entretien VALUES (12, TO_TIMESTAMP_TZ('2024-06-22 13:12:03 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Nettoyage', 5);
INSERT INTO Entretien VALUES (13, TO_TIMESTAMP_TZ('2019-10-04 15:19:07 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Reparation', 6);
INSERT INTO Entretien VALUES (14, TO_TIMESTAMP_TZ('2025-09-17 14:52:04 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Nettoyage', 6);
INSERT INTO Entretien VALUES (15, TO_TIMESTAMP_TZ('2017-06-29 16:36:52 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Revision', 6);
INSERT INTO Entretien VALUES (16, TO_TIMESTAMP_TZ('2019-05-23 03:09:26 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Revision', 7);
INSERT INTO Entretien VALUES (17, TO_TIMESTAMP_TZ('2019-06-07 22:12:57 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Reparation', 7);
INSERT INTO Entretien VALUES (18, TO_TIMESTAMP_TZ('2025-03-29 05:43:21 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Annuel', 7);
INSERT INTO Entretien VALUES (19, TO_TIMESTAMP_TZ('2016-09-14 03:38:32 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Nettoyage', 8);
INSERT INTO Entretien VALUES (20, TO_TIMESTAMP_TZ('2022-10-28 20:32:48 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Revision', 9);
INSERT INTO Entretien VALUES (21, TO_TIMESTAMP_TZ('2024-05-09 01:13:02 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), 'Annuel', 10);


-- =======================================================
-- TABLE : UtilisationMachine
-- =======================================================
INSERT INTO UtilisationMachine VALUES ('U1', TO_TIMESTAMP('2021-05-31 21:49:49', 'YYYY-MM-DD HH24:MI:SS'), 111, 217.5);
INSERT INTO UtilisationMachine VALUES ('U2', TO_TIMESTAMP('2016-11-26 10:34:41', 'YYYY-MM-DD HH24:MI:SS'), 152, 197.8);
INSERT INTO UtilisationMachine VALUES ('U3', TO_TIMESTAMP('2024-12-05 18:14:45', 'YYYY-MM-DD HH24:MI:SS'), 75, 219.6);
INSERT INTO UtilisationMachine VALUES ('U4', TO_TIMESTAMP('2020-07-12 21:36:36', 'YYYY-MM-DD HH24:MI:SS'), 158, 178.3);
INSERT INTO UtilisationMachine VALUES ('U5', TO_TIMESTAMP('2023-01-10 06:56:08', 'YYYY-MM-DD HH24:MI:SS'), 116, 177.0);
INSERT INTO UtilisationMachine VALUES ('U6', TO_TIMESTAMP('2024-12-15 06:39:42', 'YYYY-MM-DD HH24:MI:SS'), 40, 199.0);
INSERT INTO UtilisationMachine VALUES ('U7', TO_TIMESTAMP('2017-07-25 03:19:40', 'YYYY-MM-DD HH24:MI:SS'), 160, 191.6);
INSERT INTO UtilisationMachine VALUES ('U8', TO_TIMESTAMP('2023-02-03 06:43:29', 'YYYY-MM-DD HH24:MI:SS'), 175, 197.4);
INSERT INTO UtilisationMachine VALUES ('U9', TO_TIMESTAMP('2025-09-17 14:49:44', 'YYYY-MM-DD HH24:MI:SS'), 66, 176.0);
INSERT INTO UtilisationMachine VALUES ('U10', TO_TIMESTAMP('2018-07-29 12:03:31', 'YYYY-MM-DD HH24:MI:SS'), 147, 205.8);
INSERT INTO UtilisationMachine VALUES ('U11', TO_TIMESTAMP('2016-07-12 19:00:36', 'YYYY-MM-DD HH24:MI:SS'), 31, 210.9);
INSERT INTO UtilisationMachine VALUES ('U12', TO_TIMESTAMP('2017-02-18 16:27:59', 'YYYY-MM-DD HH24:MI:SS'), 105, 185.0);
INSERT INTO UtilisationMachine VALUES ('U13', TO_TIMESTAMP('2022-11-02 14:53:21', 'YYYY-MM-DD HH24:MI:SS'), 118, 193.5);
INSERT INTO UtilisationMachine VALUES ('U14', TO_TIMESTAMP('2019-03-14 20:34:25', 'YYYY-MM-DD HH24:MI:SS'), 161, 196.7);
INSERT INTO UtilisationMachine VALUES ('U15', TO_TIMESTAMP('2020-03-13 08:20:50', 'YYYY-MM-DD HH24:MI:SS'), 97, 163.8);
INSERT INTO UtilisationMachine VALUES ('U16', TO_TIMESTAMP('2017-08-08 12:18:33', 'YYYY-MM-DD HH24:MI:SS'), 69, 160.6);
INSERT INTO UtilisationMachine VALUES ('U17', TO_TIMESTAMP('2014-04-02 17:27:06', 'YYYY-MM-DD HH24:MI:SS'), 76, 163.4);
INSERT INTO UtilisationMachine VALUES ('U18', TO_TIMESTAMP('2018-06-03 15:22:33', 'YYYY-MM-DD HH24:MI:SS'), 66, 169.0);
INSERT INTO UtilisationMachine VALUES ('U19', TO_TIMESTAMP('2014-09-09 12:16:05', 'YYYY-MM-DD HH24:MI:SS'), 68, 217.9);
INSERT INTO UtilisationMachine VALUES ('U20', TO_TIMESTAMP('2021-11-30 06:33:50', 'YYYY-MM-DD HH24:MI:SS'), 101, 186.3);
INSERT INTO UtilisationMachine VALUES ('U21', TO_TIMESTAMP('2025-12-03 21:42:06', 'YYYY-MM-DD HH24:MI:SS'), 75, 157.6);


-- =======================================================
-- TABLE : Utilise
-- =======================================================
INSERT INTO Utilise VALUES (1, 'U1');
INSERT INTO Utilise VALUES (2, 'U2');
INSERT INTO Utilise VALUES (2, 'U3');
INSERT INTO Utilise VALUES (2, 'U4');
INSERT INTO Utilise VALUES (2, 'U5');
INSERT INTO Utilise VALUES (3, 'U6');
INSERT INTO Utilise VALUES (4, 'U7');
INSERT INTO Utilise VALUES (4, 'U8');
INSERT INTO Utilise VALUES (5, 'U9');
INSERT INTO Utilise VALUES (5, 'U10');
INSERT INTO Utilise VALUES (6, 'U11');
INSERT INTO Utilise VALUES (7, 'U12');
INSERT INTO Utilise VALUES (8, 'U13');
INSERT INTO Utilise VALUES (8, 'U14');
INSERT INTO Utilise VALUES (8, 'U15');
INSERT INTO Utilise VALUES (8, 'U16');
INSERT INTO Utilise VALUES (9, 'U17');
INSERT INTO Utilise VALUES (9, 'U18');
INSERT INTO Utilise VALUES (10, 'U19');
INSERT INTO Utilise VALUES (10, 'U20');
INSERT INTO Utilise VALUES (10, 'U21');


-- =======================================================
-- TABLE : NotationPlat
-- =======================================================
INSERT INTO NotationPlat VALUES (1, 3, 'Memorable', TO_TIMESTAMP('2020-11-24 11:54:46', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO NotationPlat VALUES (2, 2, 'Incroyable', TO_TIMESTAMP('2019-01-05 08:27:44', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO NotationPlat VALUES (3, 5, 'A refaire tres vite', TO_TIMESTAMP('2018-04-10 17:05:57', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO NotationPlat VALUES (4, 5, 'Incroyable', TO_TIMESTAMP('2016-04-10 00:00:20', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO NotationPlat VALUES (5, 4, 'Memorable', TO_TIMESTAMP('2024-11-02 22:37:17', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO NotationPlat VALUES (6, 3, 'Incroyable', TO_TIMESTAMP('2016-03-18 19:55:01', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO NotationPlat VALUES (7, 5, 'Un delice absolu', TO_TIMESTAMP('2017-08-25 16:54:47', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO NotationPlat VALUES (8, 1, 'Manque de fromage', TO_TIMESTAMP('2024-08-31 05:34:45', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO NotationPlat VALUES (9, 4, 'Manque de fromage', TO_TIMESTAMP('2018-04-07 18:05:34', 'YYYY-MM-DD HH24:MI:SS'));
INSERT INTO NotationPlat VALUES (10, 4, 'A refaire tres vite', TO_TIMESTAMP('2021-07-05 02:28:56', 'YYYY-MM-DD HH24:MI:SS'));


-- =======================================================
-- TABLE : Aliment
-- =======================================================
INSERT INTO Aliment VALUES (1, 'poulet');
INSERT INTO Aliment VALUES (2, 'kebab');
INSERT INTO Aliment VALUES (3, 'pizza');
INSERT INTO Aliment VALUES (4, 'quiche');
INSERT INTO Aliment VALUES (5, 'saumon');
INSERT INTO Aliment VALUES (6, 'ananas');
INSERT INTO Aliment VALUES (7, 'beurre');
INSERT INTO Aliment VALUES (8, 'Steak');
INSERT INTO Aliment VALUES (9, 'Fromage');
INSERT INTO Aliment VALUES (10, 'Dragon');
INSERT INTO Aliment VALUES (11, 'Nuggets');
INSERT INTO Aliment VALUES (12, 'Lave');
INSERT INTO Aliment VALUES (13, 'Burger');
INSERT INTO Aliment VALUES (14, 'poivron');
INSERT INTO Aliment VALUES (15, 'patate');
INSERT INTO Aliment VALUES (16, 'salade');
INSERT INTO Aliment VALUES (17, 'tomate');
INSERT INTO Aliment VALUES (18, 'oignon');
INSERT INTO Aliment VALUES (19, 'courgette');
INSERT INTO Aliment VALUES (20, 'aubergine');
INSERT INTO Aliment VALUES (21, 'carotte');
INSERT INTO Aliment VALUES (22, 'navet');
INSERT INTO Aliment VALUES (23, 'radis');
INSERT INTO Aliment VALUES (24, 'brocoli');
INSERT INTO Aliment VALUES (25, 'poireau');
INSERT INTO Aliment VALUES (26, 'asperge');
INSERT INTO Aliment VALUES (27, 'epinard');
INSERT INTO Aliment VALUES (28, 'celeri');
INSERT INTO Aliment VALUES (29, 'fenouil');


-- =======================================================
-- TABLE : AutresAliments
-- =======================================================
INSERT INTO AutresAliments VALUES (1, 'Autre categorie');
INSERT INTO AutresAliments VALUES (2, 'Autre categorie');
INSERT INTO AutresAliments VALUES (3, 'Autre categorie');
INSERT INTO AutresAliments VALUES (4, 'Autre categorie');
INSERT INTO AutresAliments VALUES (5, 'Autre categorie');
INSERT INTO AutresAliments VALUES (6, 'Autre categorie');
INSERT INTO AutresAliments VALUES (7, 'Autre categorie');
INSERT INTO AutresAliments VALUES (8, 'Autre categorie');
INSERT INTO AutresAliments VALUES (9, 'Autre categorie');
INSERT INTO AutresAliments VALUES (10, 'Autre categorie');
INSERT INTO AutresAliments VALUES (11, 'Autre categorie');
INSERT INTO AutresAliments VALUES (12, 'Autre categorie');
INSERT INTO AutresAliments VALUES (13, 'Autre categorie');


-- =======================================================
-- TABLE : Legume
-- =======================================================
INSERT INTO Legume VALUES (14, 'Type Plante');
INSERT INTO Legume VALUES (15, 'Type Plante');
INSERT INTO Legume VALUES (16, 'Type Plante');
INSERT INTO Legume VALUES (17, 'Type Plante');
INSERT INTO Legume VALUES (18, 'Type Plante');
INSERT INTO Legume VALUES (19, 'Type Plante');
INSERT INTO Legume VALUES (20, 'Type Plante');
INSERT INTO Legume VALUES (21, 'Type Plante');
INSERT INTO Legume VALUES (22, 'Type Plante');
INSERT INTO Legume VALUES (23, 'Type Plante');
INSERT INTO Legume VALUES (24, 'Type Plante');
INSERT INTO Legume VALUES (25, 'Type Plante');
INSERT INTO Legume VALUES (26, 'Type Plante');
INSERT INTO Legume VALUES (27, 'Type Plante');
INSERT INTO Legume VALUES (28, 'Type Plante');
INSERT INTO Legume VALUES (29, 'Type Plante');


-- =======================================================
-- TABLE : PeutHeurter
-- =======================================================
INSERT INTO PeutHeurter VALUES (2, 4);
INSERT INTO PeutHeurter VALUES (6, 4);
INSERT INTO PeutHeurter VALUES (9, 4);
INSERT INTO PeutHeurter VALUES (10, 1);
INSERT INTO PeutHeurter VALUES (12, 4);


-- =======================================================
-- TABLE : PeutProvoquer
-- =======================================================
INSERT INTO PeutProvoquer VALUES (1, 4);
INSERT INTO PeutProvoquer VALUES (9, 2);


-- =======================================================
-- TABLE : Sauce
-- =======================================================
INSERT INTO Sauce VALUES (1, 'Ancienne 1', 4);
INSERT INTO Sauce VALUES (2, 'Tartare 2', 11);
INSERT INTO Sauce VALUES (3, 'Poivre 3', 9);
INSERT INTO Sauce VALUES (4, 'Samourai 4', 4);
INSERT INTO Sauce VALUES (5, 'Maison 5', 4);
INSERT INTO Sauce VALUES (6, 'Tartare 6', 11);
INSERT INTO Sauce VALUES (7, 'Mystique 7', 10);
INSERT INTO Sauce VALUES (8, 'Maison 8', 6);
INSERT INTO Sauce VALUES (9, 'Poivre 9', 3);
INSERT INTO Sauce VALUES (10, 'Samourai 10', 4);
INSERT INTO Sauce VALUES (11, 'Mystique 11', 6);
INSERT INTO Sauce VALUES (12, 'Epicee 12', 7);
INSERT INTO Sauce VALUES (13, 'Tartare 13', 4);
INSERT INTO Sauce VALUES (14, 'Poivre 14', 8);
INSERT INTO Sauce VALUES (15, 'Epicee 15', 6);
INSERT INTO Sauce VALUES (16, 'Tartare 16', 3);
INSERT INTO Sauce VALUES (17, 'Tartare 17', 3);
INSERT INTO Sauce VALUES (18, 'Samourai 18', 7);
INSERT INTO Sauce VALUES (19, 'Ancienne 19', 4);
INSERT INTO Sauce VALUES (20, 'Maison 20', 10);
INSERT INTO Sauce VALUES (21, 'Doux 21', 4);
INSERT INTO Sauce VALUES (22, 'Epicee 22', 6);
INSERT INTO Sauce VALUES (23, 'Maison 23', 5);
INSERT INTO Sauce VALUES (24, 'Samourai 24', 5);
INSERT INTO Sauce VALUES (25, 'Maison 25', 11);
INSERT INTO Sauce VALUES (26, 'Mystique 26', 7);
INSERT INTO Sauce VALUES (27, 'Maison 27', 6);
INSERT INTO Sauce VALUES (28, 'Doux 28', 11);
INSERT INTO Sauce VALUES (29, 'Maison 29', 9);
INSERT INTO Sauce VALUES (30, 'Epicee 30', 10);


-- =======================================================
-- TABLE : Plat
-- =======================================================
INSERT INTO Plat VALUES (1, 'Double Fromage 1', 5);
INSERT INTO Plat VALUES (2, 'Raclette Royale 2', 6);
INSERT INTO Plat VALUES (3, 'Montagnard 3', 29);
INSERT INTO Plat VALUES (4, 'Tenders Supreme 4', 10);
INSERT INTO Plat VALUES (5, 'Original 5', 14);
INSERT INTO Plat VALUES (6, 'Original 6', 3);
INSERT INTO Plat VALUES (7, 'Original 7', 10);
INSERT INTO Plat VALUES (8, 'Raclette Royale 8', 16);
INSERT INTO Plat VALUES (9, 'Heresie Veggie 9', 6);
INSERT INTO Plat VALUES (10, 'Saumon Fondant 10', 19);


-- =======================================================
-- TABLE : AccompagneDe
-- =======================================================
INSERT INTO AccompagneDe VALUES (1, 21);
INSERT INTO AccompagneDe VALUES (1, 10);
INSERT INTO AccompagneDe VALUES (1, 14);
INSERT INTO AccompagneDe VALUES (2, 28);
INSERT INTO AccompagneDe VALUES (3, 8);
INSERT INTO AccompagneDe VALUES (3, 19);
INSERT INTO AccompagneDe VALUES (4, 5);
INSERT INTO AccompagneDe VALUES (4, 13);
INSERT INTO AccompagneDe VALUES (5, 18);
INSERT INTO AccompagneDe VALUES (5, 11);
INSERT INTO AccompagneDe VALUES (5, 20);
INSERT INTO AccompagneDe VALUES (6, 28);
INSERT INTO AccompagneDe VALUES (6, 17);
INSERT INTO AccompagneDe VALUES (7, 10);
INSERT INTO AccompagneDe VALUES (7, 26);
INSERT INTO AccompagneDe VALUES (7, 28);
INSERT INTO AccompagneDe VALUES (8, 9);
INSERT INTO AccompagneDe VALUES (8, 1);
INSERT INTO AccompagneDe VALUES (9, 4);
INSERT INTO AccompagneDe VALUES (10, 27);
INSERT INTO AccompagneDe VALUES (10, 13);


-- =======================================================
-- TABLE : UtiliseMachine
-- =======================================================
INSERT INTO UtiliseMachine VALUES (1, 'U2');
INSERT INTO UtiliseMachine VALUES (2, 'U10');
INSERT INTO UtiliseMachine VALUES (3, 'U20');
INSERT INTO UtiliseMachine VALUES (4, 'U1');
INSERT INTO UtiliseMachine VALUES (5, 'U6');
INSERT INTO UtiliseMachine VALUES (6, 'U8');
INSERT INTO UtiliseMachine VALUES (7, 'U12');
INSERT INTO UtiliseMachine VALUES (8, 'U7');
INSERT INTO UtiliseMachine VALUES (9, 'U11');
INSERT INTO UtiliseMachine VALUES (10, 'U6');


-- =======================================================
-- TABLE : EstNote
-- =======================================================
INSERT INTO EstNote VALUES (1, 1);
INSERT INTO EstNote VALUES (2, 2);
INSERT INTO EstNote VALUES (3, 3);
INSERT INTO EstNote VALUES (4, 4);
INSERT INTO EstNote VALUES (5, 5);
INSERT INTO EstNote VALUES (6, 6);
INSERT INTO EstNote VALUES (7, 7);
INSERT INTO EstNote VALUES (8, 8);
INSERT INTO EstNote VALUES (9, 9);
INSERT INTO EstNote VALUES (10, 10);


-- =======================================================
-- TABLE : Tenrac
-- =======================================================
INSERT INTO Tenrac VALUES (1, 'Girard', 'Paul', 'paul.girard1@amu.fr', '0600000001', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.6628, 43.4012, NULL), NULL, NULL), 4, 19);
INSERT INTO Tenrac VALUES (2, 'Lucas', 'Sylvie', 'sylvie.lucas2@amu.fr', '0600000002', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.5736, 43.3888, NULL), NULL, NULL), 6, 21);
INSERT INTO Tenrac VALUES (3, 'Boule', 'Evelyne', 'evelyne.boule3@amu.fr', '0600000003', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.7449, 43.9761, NULL), NULL, NULL), 4, 1);
INSERT INTO Tenrac VALUES (4, 'Masson', 'Ambrine', 'ambrine.masson4@amu.fr', '0600000004', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.8663, 43.9633, NULL), NULL, NULL), 5, 3);
INSERT INTO Tenrac VALUES (5, 'Deschamps', 'Julie', 'julie.deschamp5@amu.fr', '0600000005', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.3091, 43.2604, NULL), NULL, NULL), 5, 19);
INSERT INTO Tenrac VALUES (6, 'Monnier', 'Karine', 'karine.monnier6@amu.fr', '0600000006', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.2001, 43.7499, NULL), NULL, NULL), 5, 18);
INSERT INTO Tenrac VALUES (7, 'Lefevre', 'Lee', 'lee.lefevre7@amu.fr', '0600000007', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.9842, 43.8062, NULL), NULL, NULL), 5, 18);
INSERT INTO Tenrac VALUES (8, 'Fabre', 'Genevieve', 'geneviev.fabre8@amu.fr', '0600000008', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.164, 43.3876, NULL), NULL, NULL), 4, 8);
INSERT INTO Tenrac VALUES (9, 'Lopez', 'Karine', 'karine.lopez9@amu.fr', '0600000009', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.9055, 43.0657, NULL), NULL, NULL), 4, 4);
INSERT INTO Tenrac VALUES (10, 'Leblanc', 'Chloe', 'chloe.leblanc10@amu.fr', '0600000010', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.9883, 43.6151, NULL), NULL, NULL), 6, 5);
INSERT INTO Tenrac VALUES (11, 'Gosselin', 'Mael', 'mael.gosselin11@amu.fr', '0600000011', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.2578, 43.2076, NULL), NULL, NULL), 2, 15);
INSERT INTO Tenrac VALUES (12, 'Roux', 'Ines', 'ines.roux12@amu.fr', '0600000012', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.7631, 43.2498, NULL), NULL, NULL), 4, 13);
INSERT INTO Tenrac VALUES (13, 'Meunier', 'Claire', 'claire.meunier13@amu.fr', '0600000013', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.521, 43.0266, NULL), NULL, NULL), 6, 4);
INSERT INTO Tenrac VALUES (14, 'Fabre', 'Laetitia', 'laetitia.fabre14@amu.fr', '0600000014', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.0586, 43.6515, NULL), NULL, NULL), 5, 14);
INSERT INTO Tenrac VALUES (15, 'Hitier', 'Guy', 'guy.hitier15@amu.fr', '0600000015', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.6987, 43.44, NULL), NULL, NULL), 4, 3);
INSERT INTO Tenrac VALUES (16, 'Thomas', 'Patrick', 'patrick.thomas16@amu.fr', '0600000016', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.1423, 43.1768, NULL), NULL, NULL), 3, 9);
INSERT INTO Tenrac VALUES (17, 'Boyer', 'Thierry', 'thierry.boyer17@amu.fr', '0600000017', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.1192, 43.4842, NULL), NULL, NULL), 1, 17);
INSERT INTO Tenrac VALUES (18, 'Perrin', 'Dominique', 'dominiqu.perrin18@amu.fr', '0600000018', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.3878, 43.7456, NULL), NULL, NULL), 2, 15);
INSERT INTO Tenrac VALUES (19, 'Richard', 'Elodie', 'elodie.richard19@amu.fr', '0600000019', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.2321, 43.761, NULL), NULL, NULL), 3, 18);
INSERT INTO Tenrac VALUES (20, 'Ouellet', 'Severine', 'severine.ouellet20@amu.fr', '0600000020', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.8545, 43.3057, NULL), NULL, NULL), 6, 14);
INSERT INTO Tenrac VALUES (21, 'Lavoie', 'Steve', 'steve.lavoie21@amu.fr', '0600000021', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.5809, 43.1512, NULL), NULL, NULL), 6, 20);
INSERT INTO Tenrac VALUES (22, 'Dubois', 'Genevieve', 'geneviev.dubois22@amu.fr', '0600000022', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.7332, 43.7423, NULL), NULL, NULL), 3, 12);
INSERT INTO Tenrac VALUES (23, 'Bonnet', 'Donald', 'donald.bonnet23@amu.fr', '0600000023', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.475, 43.8272, NULL), NULL, NULL), 5, 15);
INSERT INTO Tenrac VALUES (24, 'Lefevre', 'David', 'david.lefevre24@amu.fr', '0600000024', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.3453, 43.8533, NULL), NULL, NULL), 4, 19);
INSERT INTO Tenrac VALUES (25, 'Bonnet', 'Denis', 'denis.bonnet25@amu.fr', '0600000025', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.0805, 43.2321, NULL), NULL, NULL), 3, 4);
INSERT INTO Tenrac VALUES (26, 'Clement', 'Corinne', 'corinne.clement26@amu.fr', '0600000026', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.7916, 43.1734, NULL), NULL, NULL), 1, 20);
INSERT INTO Tenrac VALUES (27, 'Nicolas', 'Leo', 'leo.nicolas27@amu.fr', '0600000027', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.2937, 43.6584, NULL), NULL, NULL), 2, 17);
INSERT INTO Tenrac VALUES (28, 'Cote', 'Severine', 'severine.cote28@amu.fr', '0600000028', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.3344, 43.2148, NULL), NULL, NULL), 4, 2);
INSERT INTO Tenrac VALUES (29, 'Dumas', 'Jeanne', 'jeanne.dumas29@amu.fr', '0600000029', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.1512, 43.0938, NULL), NULL, NULL), 2, 10);
INSERT INTO Tenrac VALUES (30, 'Laurent', 'Marion', 'marion.laurent30@amu.fr', '0600000030', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.023, 43.6807, NULL), NULL, NULL), 6, 3);
INSERT INTO Tenrac VALUES (31, 'Fontaine', 'Pauline', 'pauline.fontaine31@amu.fr', '0600000031', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.5115, 43.6927, NULL), NULL, NULL), 4, 12);
INSERT INTO Tenrac VALUES (32, 'Vincent', 'Mael', 'mael.vincent32@amu.fr', '0600000032', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.4724, 43.2377, NULL), NULL, NULL), 5, 13);
INSERT INTO Tenrac VALUES (33, 'Clement', 'Nathalie', 'nathalie.clement33@amu.fr', '0600000033', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.4388, 43.044, NULL), NULL, NULL), 6, 1);
INSERT INTO Tenrac VALUES (34, 'Dubois', 'Marcelle', 'marcelle.dubois34@amu.fr', '0600000034', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.565, 43.871, NULL), NULL, NULL), 1, 5);
INSERT INTO Tenrac VALUES (35, 'Bouchard', 'Genevieve', 'geneviev.bouchard35@amu.fr', '0600000035', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.7916, 43.9864, NULL), NULL, NULL), 3, 21);
INSERT INTO Tenrac VALUES (36, 'Meyer', 'Nathalie', 'nathalie.meyer36@amu.fr', '0600000036', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.9019, 43.1085, NULL), NULL, NULL), 5, 21);
INSERT INTO Tenrac VALUES (37, 'Agostinelli', 'Laurent', 'laurent.agostine37@amu.fr', '0600000037', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.9101, 43.0015, NULL), NULL, NULL), 6, 14);
INSERT INTO Tenrac VALUES (38, 'Higueurs', 'Stephanie', 'stephani.higueurs38@amu.fr', '0600000038', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.1277, 43.6591, NULL), NULL, NULL), 4, 7);
INSERT INTO Tenrac VALUES (39, 'Poirier', 'Nathan', 'nathan.poirier39@amu.fr', '0600000039', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.446, 43.3617, NULL), NULL, NULL), 6, 21);
INSERT INTO Tenrac VALUES (40, 'Machiavel', 'Lea', 'lea.machiave40@amu.fr', '0600000040', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.5175, 43.558, NULL), NULL, NULL), 5, 1);
INSERT INTO Tenrac VALUES (41, 'Lefevre', 'Severine', 'severine.lefevre41@amu.fr', '0600000041', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.4542, 43.6342, NULL), NULL, NULL), 2, 21);
INSERT INTO Tenrac VALUES (42, 'Muller', 'Gerard', 'gerard.muller42@amu.fr', '0600000042', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.3797, 43.8921, NULL), NULL, NULL), 1, 13);
INSERT INTO Tenrac VALUES (43, 'Boule', 'Clara', 'clara.boule43@amu.fr', '0600000043', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.6938, 43.7483, NULL), NULL, NULL), 4, 1);
INSERT INTO Tenrac VALUES (44, 'White', 'Mathilde', 'mathilde.white44@amu.fr', '0600000044', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.1787, 43.6108, NULL), NULL, NULL), 6, 21);
INSERT INTO Tenrac VALUES (45, 'Blanc', 'Genevieve', 'geneviev.blanc45@amu.fr', '0600000045', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.9037, 43.8624, NULL), NULL, NULL), 2, 18);
INSERT INTO Tenrac VALUES (46, 'Blanc', 'Aurelie', 'aurelie.blanc46@amu.fr', '0600000046', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.1314, 43.7097, NULL), NULL, NULL), 5, 14);
INSERT INTO Tenrac VALUES (47, 'Tremblay', 'Evan', 'evan.tremblay47@amu.fr', '0600000047', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.9551, 43.13, NULL), NULL, NULL), 2, 6);
INSERT INTO Tenrac VALUES (48, 'Clement', 'Nathalie', 'nathalie.clement48@amu.fr', '0600000048', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.7509, 43.179, NULL), NULL, NULL), 6, 19);
INSERT INTO Tenrac VALUES (49, 'Clement', 'Severine', 'severine.clement49@amu.fr', '0600000049', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.7769, 43.8926, NULL), NULL, NULL), 1, 16);
INSERT INTO Tenrac VALUES (50, 'Francois', 'Antoine', 'antoine.francois50@amu.fr', '0600000050', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.6577, 43.1101, NULL), NULL, NULL), 3, 8);


-- =======================================================
-- TABLE : Organisme
-- =======================================================
INSERT INTO Organisme VALUES (1, 'Corp 1', 736142907, 6);
INSERT INTO Organisme VALUES (2, 'Corp 2', 871483981, 23);
INSERT INTO Organisme VALUES (3, 'Food Truck 3', 625950333, 21);
INSERT INTO Organisme VALUES (4, 'Fromagerie 4', 675247092, 22);
INSERT INTO Organisme VALUES (5, 'Ordre 5', 221243256, 30);
INSERT INTO Organisme VALUES (6, 'Food Truck 6', 771371642, 35);
INSERT INTO Organisme VALUES (7, 'Corp 7', 490797992, 4);
INSERT INTO Organisme VALUES (8, 'Corp 8', 459949303, 34);
INSERT INTO Organisme VALUES (9, 'Restaurant 9', 200235559, 5);
INSERT INTO Organisme VALUES (10, 'Ordre 10', 637523167, 10);
INSERT INTO Organisme VALUES (11, 'Food Truck 11', 405139104, 32);
INSERT INTO Organisme VALUES (12, 'Ordre 12', 952019018, 25);
INSERT INTO Organisme VALUES (13, 'Food Truck 13', 938038967, 44);
INSERT INTO Organisme VALUES (14, 'IUT Aix 14', 891337148, 29);
INSERT INTO Organisme VALUES (15, 'IUT Aix 15', 777832213, 2);
INSERT INTO Organisme VALUES (16, 'IUT Aix 16', 708920172, 36);
INSERT INTO Organisme VALUES (17, 'Corp 17', 841736622, 46);
INSERT INTO Organisme VALUES (18, 'Corp 18', 871932504, 43);
INSERT INTO Organisme VALUES (19, 'Food Truck 19', 368200937, 3);
INSERT INTO Organisme VALUES (20, 'Corp 20', 379994674, 41);
INSERT INTO Organisme VALUES (21, 'IUT Aix 21', 111430772, 19);
INSERT INTO Organisme VALUES (22, 'Food Truck 22', 100855029, 40);
INSERT INTO Organisme VALUES (23, 'Fromagerie 23', 119967675, 15);
INSERT INTO Organisme VALUES (24, 'IUT Aix 24', 825448961, 42);
INSERT INTO Organisme VALUES (25, 'Univ 25', 111378012, 47);
INSERT INTO Organisme VALUES (26, 'Restaurant 26', 195893462, 18);
INSERT INTO Organisme VALUES (27, 'Food Truck 27', 356820586, 48);
INSERT INTO Organisme VALUES (28, 'Food Truck 28', 163411513, 26);
INSERT INTO Organisme VALUES (29, 'IUT Aix 29', 609915506, 9);
INSERT INTO Organisme VALUES (30, 'Univ 30', 281604634, 39);
INSERT INTO Organisme VALUES (31, 'Corp 31', 674616867, 38);
INSERT INTO Organisme VALUES (32, 'Corp 32', 316976424, 24);
INSERT INTO Organisme VALUES (33, 'Ordre 33', 857733800, 50);
INSERT INTO Organisme VALUES (34, 'Restaurant 34', 115369082, 49);
INSERT INTO Organisme VALUES (35, 'KFC 35', 920669608, 37);
INSERT INTO Organisme VALUES (36, 'Restaurant 36', 854247395, 14);
INSERT INTO Organisme VALUES (37, 'Corp 37', 933781067, 11);
INSERT INTO Organisme VALUES (38, 'Corp 38', 750684060, 45);
INSERT INTO Organisme VALUES (39, 'Corp 39', 760078961, 20);
INSERT INTO Organisme VALUES (40, 'Restaurant 40', 327792386, 17);
INSERT INTO Organisme VALUES (41, 'Restaurant 41', 976725163, 27);
INSERT INTO Organisme VALUES (42, 'Corp 42', 146369430, 12);
INSERT INTO Organisme VALUES (43, 'Food Truck 43', 660051125, 16);
INSERT INTO Organisme VALUES (44, 'Ordre 44', 670061928, 13);
INSERT INTO Organisme VALUES (45, 'Ordre 45', 888834189, 31);
INSERT INTO Organisme VALUES (46, 'Restaurant 46', 397265172, 28);
INSERT INTO Organisme VALUES (47, 'Ordre 47', 147280748, 1);
INSERT INTO Organisme VALUES (48, 'Univ 48', 535478388, 8);
INSERT INTO Organisme VALUES (49, 'Ordre 49', 390411487, 33);
INSERT INTO Organisme VALUES (50, 'Restaurant 50', 411655679, 7);


-- =======================================================
-- TABLE : Rang
-- =======================================================
INSERT INTO Rang VALUES (1, 'Novice', 4);
INSERT INTO Rang VALUES (2, 'Compagnon', 7);
INSERT INTO Rang VALUES (3, 'Compagnon', 8);
INSERT INTO Rang VALUES (4, 'Compagnon', 18);
INSERT INTO Rang VALUES (5, 'Novice', 20);
INSERT INTO Rang VALUES (6, 'Novice', 21);
INSERT INTO Rang VALUES (7, 'Compagnon', 25);
INSERT INTO Rang VALUES (8, 'Novice', 29);
INSERT INTO Rang VALUES (9, 'Compagnon', 34);
INSERT INTO Rang VALUES (10, 'Compagnon', 35);
INSERT INTO Rang VALUES (11, 'Compagnon', 36);
INSERT INTO Rang VALUES (12, 'Compagnon', 38);
INSERT INTO Rang VALUES (13, 'Compagnon', 40);
INSERT INTO Rang VALUES (14, 'Compagnon', 41);
INSERT INTO Rang VALUES (15, 'Compagnon', 44);
INSERT INTO Rang VALUES (16, 'Compagnon', 49);
INSERT INTO Rang VALUES (17, 'Novice', 50);


-- =======================================================
-- TABLE : Titre
-- =======================================================
INSERT INTO Titre VALUES (1, 'Honorable', 5);
INSERT INTO Titre VALUES (2, 'Honorable', 15);
INSERT INTO Titre VALUES (3, 'Honorable', 17);
INSERT INTO Titre VALUES (4, 'Philanthrope', 20);
INSERT INTO Titre VALUES (5, 'Philanthrope', 21);
INSERT INTO Titre VALUES (6, 'Philanthrope', 30);
INSERT INTO Titre VALUES (7, 'Philanthrope', 35);
INSERT INTO Titre VALUES (8, 'Philanthrope', 38);
INSERT INTO Titre VALUES (9, 'Honorable', 40);
INSERT INTO Titre VALUES (10, 'Protecteur', 41);
INSERT INTO Titre VALUES (11, 'Protecteur', 42);
INSERT INTO Titre VALUES (12, 'Philanthrope', 44);
INSERT INTO Titre VALUES (13, 'Honorable', 45);
INSERT INTO Titre VALUES (14, 'Honorable', 48);


-- =======================================================
-- TABLE : Dignite
-- =======================================================
INSERT INTO Dignite VALUES (1, 'Chancelier', 5);
INSERT INTO Dignite VALUES (2, 'Grand Maitre', 27);
INSERT INTO Dignite VALUES (3, 'Chancelier', 28);
INSERT INTO Dignite VALUES (4, 'Grand Maitre', 29);
INSERT INTO Dignite VALUES (5, 'Maitre', 35);


-- =======================================================
-- TABLE : TenracClub
-- =======================================================
INSERT INTO TenracClub VALUES (1, 4);
INSERT INTO TenracClub VALUES (2, 5);
INSERT INTO TenracClub VALUES (3, 6);
INSERT INTO TenracClub VALUES (4, 8);
INSERT INTO TenracClub VALUES (5, 9);
INSERT INTO TenracClub VALUES (6, 13);
INSERT INTO TenracClub VALUES (7, 14);
INSERT INTO TenracClub VALUES (8, 15);
INSERT INTO TenracClub VALUES (9, 18);
INSERT INTO TenracClub VALUES (10, 19);
INSERT INTO TenracClub VALUES (11, 20);
INSERT INTO TenracClub VALUES (12, 21);
INSERT INTO TenracClub VALUES (13, 23);
INSERT INTO TenracClub VALUES (14, 26);
INSERT INTO TenracClub VALUES (15, 27);
INSERT INTO TenracClub VALUES (16, 28);
INSERT INTO TenracClub VALUES (17, 31);
INSERT INTO TenracClub VALUES (18, 32);
INSERT INTO TenracClub VALUES (19, 34);
INSERT INTO TenracClub VALUES (20, 35);
INSERT INTO TenracClub VALUES (21, 37);
INSERT INTO TenracClub VALUES (22, 40);
INSERT INTO TenracClub VALUES (23, 41);
INSERT INTO TenracClub VALUES (24, 42);
INSERT INTO TenracClub VALUES (25, 43);
INSERT INTO TenracClub VALUES (26, 45);
INSERT INTO TenracClub VALUES (27, 46);
INSERT INTO TenracClub VALUES (28, 47);
INSERT INTO TenracClub VALUES (29, 48);
INSERT INTO TenracClub VALUES (30, 49);
INSERT INTO TenracClub VALUES (31, 50);


-- =======================================================
-- TABLE : TenracOrdre
-- =======================================================
INSERT INTO TenracOrdre VALUES (1, 1);
INSERT INTO TenracOrdre VALUES (2, 2);
INSERT INTO TenracOrdre VALUES (3, 3);
INSERT INTO TenracOrdre VALUES (4, 7);
INSERT INTO TenracOrdre VALUES (5, 10);
INSERT INTO TenracOrdre VALUES (6, 11);
INSERT INTO TenracOrdre VALUES (7, 12);
INSERT INTO TenracOrdre VALUES (8, 16);
INSERT INTO TenracOrdre VALUES (9, 17);
INSERT INTO TenracOrdre VALUES (10, 22);
INSERT INTO TenracOrdre VALUES (11, 24);
INSERT INTO TenracOrdre VALUES (12, 25);
INSERT INTO TenracOrdre VALUES (13, 29);
INSERT INTO TenracOrdre VALUES (14, 30);
INSERT INTO TenracOrdre VALUES (15, 33);
INSERT INTO TenracOrdre VALUES (16, 36);
INSERT INTO TenracOrdre VALUES (17, 38);
INSERT INTO TenracOrdre VALUES (18, 39);
INSERT INTO TenracOrdre VALUES (19, 44);


-- =======================================================
-- TABLE : Attribue
-- =======================================================
INSERT INTO Attribue VALUES (1, 1);
INSERT INTO Attribue VALUES (2, 3);
INSERT INTO Attribue VALUES (3, 3);
INSERT INTO Attribue VALUES (4, 4);
INSERT INTO Attribue VALUES (5, 5);
INSERT INTO Attribue VALUES (6, 2);
INSERT INTO Attribue VALUES (7, 1);
INSERT INTO Attribue VALUES (8, 7);
INSERT INTO Attribue VALUES (9, 9);
INSERT INTO Attribue VALUES (10, 2);
INSERT INTO Attribue VALUES (11, 1);
INSERT INTO Attribue VALUES (12, 2);
INSERT INTO Attribue VALUES (13, 4);
INSERT INTO Attribue VALUES (14, 7);
INSERT INTO Attribue VALUES (15, 3);
INSERT INTO Attribue VALUES (16, 9);
INSERT INTO Attribue VALUES (17, 5);
INSERT INTO Attribue VALUES (18, 7);
INSERT INTO Attribue VALUES (19, 7);
INSERT INTO Attribue VALUES (20, 5);
INSERT INTO Attribue VALUES (21, 7);
INSERT INTO Attribue VALUES (22, 6);
INSERT INTO Attribue VALUES (23, 5);
INSERT INTO Attribue VALUES (24, 3);
INSERT INTO Attribue VALUES (25, 2);
INSERT INTO Attribue VALUES (26, 8);
INSERT INTO Attribue VALUES (27, 4);
INSERT INTO Attribue VALUES (28, 9);
INSERT INTO Attribue VALUES (29, 4);
INSERT INTO Attribue VALUES (30, 8);
INSERT INTO Attribue VALUES (31, 7);
INSERT INTO Attribue VALUES (32, 1);
INSERT INTO Attribue VALUES (33, 3);
INSERT INTO Attribue VALUES (34, 8);
INSERT INTO Attribue VALUES (35, 4);
INSERT INTO Attribue VALUES (36, 8);
INSERT INTO Attribue VALUES (37, 1);
INSERT INTO Attribue VALUES (38, 5);
INSERT INTO Attribue VALUES (39, 1);
INSERT INTO Attribue VALUES (40, 2);
INSERT INTO Attribue VALUES (41, 7);
INSERT INTO Attribue VALUES (42, 3);
INSERT INTO Attribue VALUES (43, 7);
INSERT INTO Attribue VALUES (44, 10);
INSERT INTO Attribue VALUES (45, 2);
INSERT INTO Attribue VALUES (46, 4);
INSERT INTO Attribue VALUES (47, 10);
INSERT INTO Attribue VALUES (48, 2);
INSERT INTO Attribue VALUES (49, 7);
INSERT INTO Attribue VALUES (50, 3);


-- =======================================================
-- TABLE : Repas
-- =======================================================
INSERT INTO Repas VALUES (1, 'Repas Gala 1', 1, 4);
INSERT INTO Repas VALUES (2, 'Soiree 2', 5, 11);
INSERT INTO Repas VALUES (3, 'Soiree 3', 5, 26);
INSERT INTO Repas VALUES (4, 'Banquet 4', 2, 6);
INSERT INTO Repas VALUES (5, 'Degustation 5', 5, 8);
INSERT INTO Repas VALUES (6, 'Degustation 6', 5, 12);
INSERT INTO Repas VALUES (7, 'Repas Gala 7', 2, 7);
INSERT INTO Repas VALUES (8, 'Repas Max 8', 9, 12);
INSERT INTO Repas VALUES (9, 'Festin 9', 4, 18);
INSERT INTO Repas VALUES (10, 'Banquet 10', 2, 29);


-- =======================================================
-- TABLE : Reunion
-- =======================================================
INSERT INTO Reunion VALUES (1, TO_TIMESTAMP_TZ('2022-12-24 18:40:11 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.4353, 43.8456, NULL), NULL, NULL), 5);
INSERT INTO Reunion VALUES (2, TO_TIMESTAMP_TZ('2019-03-30 23:30:40 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.1847, 43.225, NULL), NULL, NULL), 9);
INSERT INTO Reunion VALUES (3, TO_TIMESTAMP_TZ('2016-12-02 02:43:01 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.806, 43.662, NULL), NULL, NULL), 10);
INSERT INTO Reunion VALUES (4, TO_TIMESTAMP_TZ('2022-04-17 10:36:13 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.7198, 43.3396, NULL), NULL, NULL), 10);
INSERT INTO Reunion VALUES (5, TO_TIMESTAMP_TZ('2025-03-05 16:41:18 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.0481, 43.1841, NULL), NULL, NULL), 6);
INSERT INTO Reunion VALUES (6, TO_TIMESTAMP_TZ('2024-02-29 09:37:22 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.6216, 43.6553, NULL), NULL, NULL), 10);
INSERT INTO Reunion VALUES (7, TO_TIMESTAMP_TZ('2025-09-03 19:34:41 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.5447, 43.6685, NULL), NULL, NULL), 3);
INSERT INTO Reunion VALUES (8, TO_TIMESTAMP_TZ('2025-09-24 21:26:23 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.8723, 43.3182, NULL), NULL, NULL), 1);
INSERT INTO Reunion VALUES (9, TO_TIMESTAMP_TZ('2024-10-05 21:05:57 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.0663, 43.5096, NULL), NULL, NULL), 3);
INSERT INTO Reunion VALUES (10, TO_TIMESTAMP_TZ('2023-03-26 13:53:57 +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM'), MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE(5.9049, 43.3217, NULL), NULL, NULL), 3);


-- =======================================================
-- TABLE : ParticipeA
-- =======================================================
INSERT INTO ParticipeA VALUES (43, 1);
INSERT INTO ParticipeA VALUES (26, 1);
INSERT INTO ParticipeA VALUES (20, 1);
INSERT INTO ParticipeA VALUES (30, 1);
INSERT INTO ParticipeA VALUES (32, 2);
INSERT INTO ParticipeA VALUES (47, 2);
INSERT INTO ParticipeA VALUES (25, 2);
INSERT INTO ParticipeA VALUES (22, 2);
INSERT INTO ParticipeA VALUES (11, 2);
INSERT INTO ParticipeA VALUES (34, 2);
INSERT INTO ParticipeA VALUES (1, 2);
INSERT INTO ParticipeA VALUES (17, 2);
INSERT INTO ParticipeA VALUES (5, 2);
INSERT INTO ParticipeA VALUES (26, 2);
INSERT INTO ParticipeA VALUES (5, 3);
INSERT INTO ParticipeA VALUES (2, 3);
INSERT INTO ParticipeA VALUES (46, 3);
INSERT INTO ParticipeA VALUES (13, 3);
INSERT INTO ParticipeA VALUES (49, 3);
INSERT INTO ParticipeA VALUES (3, 3);
INSERT INTO ParticipeA VALUES (31, 4);
INSERT INTO ParticipeA VALUES (27, 4);
INSERT INTO ParticipeA VALUES (47, 4);
INSERT INTO ParticipeA VALUES (24, 4);
INSERT INTO ParticipeA VALUES (39, 4);
INSERT INTO ParticipeA VALUES (16, 4);
INSERT INTO ParticipeA VALUES (20, 4);
INSERT INTO ParticipeA VALUES (7, 4);
INSERT INTO ParticipeA VALUES (4, 4);
INSERT INTO ParticipeA VALUES (17, 4);
INSERT INTO ParticipeA VALUES (42, 4);
INSERT INTO ParticipeA VALUES (40, 4);
INSERT INTO ParticipeA VALUES (28, 4);
INSERT INTO ParticipeA VALUES (11, 5);
INSERT INTO ParticipeA VALUES (45, 5);
INSERT INTO ParticipeA VALUES (23, 5);
INSERT INTO ParticipeA VALUES (9, 5);
INSERT INTO ParticipeA VALUES (48, 5);
INSERT INTO ParticipeA VALUES (39, 6);
INSERT INTO ParticipeA VALUES (20, 6);
INSERT INTO ParticipeA VALUES (23, 6);
INSERT INTO ParticipeA VALUES (14, 6);
INSERT INTO ParticipeA VALUES (27, 6);
INSERT INTO ParticipeA VALUES (43, 6);
INSERT INTO ParticipeA VALUES (10, 6);
INSERT INTO ParticipeA VALUES (6, 7);
INSERT INTO ParticipeA VALUES (30, 7);
INSERT INTO ParticipeA VALUES (33, 7);
INSERT INTO ParticipeA VALUES (11, 7);
INSERT INTO ParticipeA VALUES (32, 7);
INSERT INTO ParticipeA VALUES (5, 7);
INSERT INTO ParticipeA VALUES (43, 8);
INSERT INTO ParticipeA VALUES (44, 8);
INSERT INTO ParticipeA VALUES (2, 8);
INSERT INTO ParticipeA VALUES (18, 8);
INSERT INTO ParticipeA VALUES (24, 8);
INSERT INTO ParticipeA VALUES (14, 9);
INSERT INTO ParticipeA VALUES (38, 9);
INSERT INTO ParticipeA VALUES (37, 9);
INSERT INTO ParticipeA VALUES (30, 9);
INSERT INTO ParticipeA VALUES (16, 9);
INSERT INTO ParticipeA VALUES (2, 9);
INSERT INTO ParticipeA VALUES (9, 9);
INSERT INTO ParticipeA VALUES (49, 9);
INSERT INTO ParticipeA VALUES (40, 9);
INSERT INTO ParticipeA VALUES (35, 9);
INSERT INTO ParticipeA VALUES (48, 9);
INSERT INTO ParticipeA VALUES (5, 10);
INSERT INTO ParticipeA VALUES (34, 10);
INSERT INTO ParticipeA VALUES (28, 10);
INSERT INTO ParticipeA VALUES (27, 10);


