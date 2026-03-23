CREATE TABLE Aliment(
   id_aliment NUMBER(10),
   nom_aliment VARCHAR2(40),
   PRIMARY KEY(id_aliment)
);

CREATE TABLE Ingredient(
   id_ingredient NUMBER(10),
   nom_ingredient VARCHAR2(15) NOT NULL,
   PRIMARY KEY(id_ingredient)
);

CREATE TABLE Machine(
   id_machine NUMBER(10),
   nom_machine VARCHAR2(25) NOT NULL,
   modele_machine_ VARCHAR2(20) NOT NULL,
   PRIMARY KEY(id_machine)
);

CREATE TABLE Entretien(
   id_entretien NUMBER(10),
   date_entretien TIMESTAMP WITH TIME ZONE NOT NULL,
   type_entretien VARCHAR2(20) NOT NULL,
   id_machine NUMBER(10) NOT NULL,
   PRIMARY KEY(id_entretien),
   FOREIGN KEY(id_machine) REFERENCES Machine(id_machine)
);

CREATE TABLE Grade(
   id_grade NUMBER(10),
   nom_grade VARCHAR2(30) NOT NULL,
   PRIMARY KEY(id_grade)
);

CREATE TABLE AutresAliments(
   id_aliment NUMBER(10),
   aliment VARCHAR2(30),
   PRIMARY KEY(id_aliment),
   FOREIGN KEY(id_aliment) REFERENCES Aliment(id_aliment)
);

CREATE TABLE Legume(
   id_aliment NUMBER(10),
   type_legume VARCHAR2(50) NOT NULL,
   PRIMARY KEY(id_aliment),
   FOREIGN KEY(id_aliment) REFERENCES Aliment(id_aliment)
);

CREATE TABLE Croyances(
   id_croyances NUMBER(10),
   nom_croyances VARCHAR2(50),
   PRIMARY KEY(id_croyances)
);

CREATE TABLE Allergenes(
   id_allergene NUMBER(10),
   nom_allergene VARCHAR2(50),
   PRIMARY KEY(id_allergene)
);

CREATE TABLE UtilisationMachine(
   id_utilisationmachine VARCHAR2(10),
   date_utilisation TIMESTAMP,
   duree NUMBER(10),
   temperature VARCHAR2(3),
   PRIMARY KEY(id_utilisationmachine)
);

CREATE TABLE Boisson(
   id_boisson NUMBER(10),
   nom_boisson VARCHAR2(10),
   type_boisson VARCHAR2(10),
   PRIMARY KEY(id_boisson)
);

CREATE TABLE NotationPlat(
   id_notation NUMBER(10),
   note NUMBER(10) NOT NULL,
   commentaire VARCHAR2(50),
   date_notation TIMESTAMP,
   PRIMARY KEY(id_notation)
);

CREATE TABLE Tenrac(
   id_tenrac NUMBER(10),
   nom VARCHAR2(20) NOT NULL,
   prenom VARCHAR2(20) NOT NULL,
   courriel VARCHAR2(40) NOT NULL,
   telephone VARCHAR2(12) NOT NULL,
   adresse_postale SDO_GEOMETRY NOT NULL,
   id_grade NUMBER(10) NOT NULL,
   id_entretien NUMBER(10) NOT NULL,
   PRIMARY KEY(id_tenrac),
   UNIQUE(courriel),
   UNIQUE(telephone),
   FOREIGN KEY(id_grade) REFERENCES Grade(id_grade),
   FOREIGN KEY(id_entretien) REFERENCES Entretien(id_entretien)
);

CREATE TABLE Organisme(
   id_organisme NUMBER(10),
   raison_sociale VARCHAR2(50) NOT NULL,
   siret NUMBER(10) NOT NULL,
   id_tenrac NUMBER(10) NOT NULL,
   PRIMARY KEY(id_organisme),
   FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac)
);

CREATE TABLE Plat(
   id_plat NUMBER(10),
   nom_plat VARCHAR2(50) NOT NULL,
   id_aliment NUMBER(10) NOT NULL,
   PRIMARY KEY(id_plat),
   FOREIGN KEY(id_aliment) REFERENCES Aliment(id_aliment)
);

CREATE TABLE Sauce(
   id_sauce NUMBER(10),
   nom_sauce VARCHAR2(20) NOT NULL,
   id_ingredient NUMBER(10) NOT NULL,
   PRIMARY KEY(id_sauce),
   FOREIGN KEY(id_ingredient) REFERENCES Ingredient(id_ingredient)
);

CREATE TABLE Rang(
   id_rang NUMBER(10),
   nom_rang VARCHAR2(30) NOT NULL,
   id_tenrac NUMBER(10) NOT NULL,
   PRIMARY KEY(id_rang),
   UNIQUE(id_tenrac),
   FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac)
);

CREATE TABLE Titre(
   id_titre NUMBER(10),
   nom_titre VARCHAR2(30) NOT NULL,
   id_tenrac NUMBER(10) NOT NULL,
   PRIMARY KEY(id_titre),
   UNIQUE(id_tenrac),
   FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac)
);

CREATE TABLE Dignite(
   id_dignite NUMBER(10),
   nom_dignite VARCHAR2(30) NOT NULL,
   id_tenrac NUMBER(10) NOT NULL,
   PRIMARY KEY(id_dignite),
   UNIQUE(id_tenrac),
   FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac)
);

CREATE TABLE TenracClub(
   id_club NUMBER(10),
   id_tenrac NUMBER(10) NOT NULL,
   PRIMARY KEY(id_club),
   UNIQUE(id_tenrac),
   FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac)
);

CREATE TABLE TenracOrdre(
   id_ordre NUMBER(10),
   id_tenrac NUMBER(10) NOT NULL,
   PRIMARY KEY(id_ordre),
   UNIQUE(id_tenrac),
   FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac)
);

CREATE TABLE Repas(
   id_repas NUMBER(10),
   Intitule_repas VARCHAR2(20) NOT NULL,
   id_plat NUMBER(10) NOT NULL,
   id_boisson NUMBER(10) NOT NULL,
   PRIMARY KEY(id_repas),
   FOREIGN KEY(id_plat) REFERENCES Plat(id_plat),
   FOREIGN KEY(id_boisson) REFERENCES Boisson(id_boisson)
);

CREATE TABLE Reunion(
   id_reunion NUMBER(10),
   date_reunion TIMESTAMP WITH TIME ZONE NOT NULL,
   adresse_reunion SDO_GEOMETRY NOT NULL,
   id_tenrac NUMBER(10) NOT NULL,
   id_repas NUMBER(10) NOT NULL,
   PRIMARY KEY(id_reunion),
   FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac),
   FOREIGN KEY(id_repas) REFERENCES Repas(id_repas)
);

CREATE TABLE Accompagne_de(
   id_plat NUMBER(10),
   id_sauce NUMBER(10),
   PRIMARY KEY(id_plat, id_sauce),
   FOREIGN KEY(id_plat) REFERENCES Plat(id_plat),
   FOREIGN KEY(id_sauce) REFERENCES Sauce(id_sauce)
);

CREATE TABLE Peut_heurter(
   id_aliment NUMBER(10),
   id_croyances NUMBER(10),
   PRIMARY KEY(id_aliment, id_croyances),
   FOREIGN KEY(id_aliment) REFERENCES Aliment(id_aliment),
   FOREIGN KEY(id_croyances) REFERENCES Croyances(id_croyances)
);

CREATE TABLE Peut_provoquer(
   id_aliment NUMBER(10),
   id_allergene NUMBER(10),
   PRIMARY KEY(id_aliment, id_allergene),
   FOREIGN KEY(id_aliment) REFERENCES Aliment(id_aliment),
   FOREIGN KEY(id_allergene) REFERENCES Allergenes(id_allergene)
);

CREATE TABLE Utilise_machine(
   id_plat NUMBER(10),
   id_utilisationmachine VARCHAR2(10),
   PRIMARY KEY(id_plat, id_utilisationmachine),
   FOREIGN KEY(id_plat) REFERENCES Plat(id_plat),
   FOREIGN KEY(id_utilisationmachine) REFERENCES UtilisationMachine(id_utilisationmachine)
);

CREATE TABLE Utilise(
   id_machine NUMBER(10),
   id_utilisationmachine VARCHAR2(10),
   PRIMARY KEY(id_machine, id_utilisationmachine),
   FOREIGN KEY(id_machine) REFERENCES Machine(id_machine),
   FOREIGN KEY(id_utilisationmachine) REFERENCES UtilisationMachine(id_utilisationmachine)
);

CREATE TABLE Est_note(
   id_plat NUMBER(10),
   id_notation NUMBER(10),
   PRIMARY KEY(id_plat, id_notation),
   FOREIGN KEY(id_plat) REFERENCES Plat(id_plat),
   FOREIGN KEY(id_notation) REFERENCES NotationPlat(id_notation)
);

CREATE TABLE Attribue(
   id_tenrac NUMBER(10),
   id_notation NUMBER(10),
   PRIMARY KEY(id_tenrac, id_notation),
   FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac),
   FOREIGN KEY(id_notation) REFERENCES NotationPlat(id_notation)
);