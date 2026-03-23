CREATE TABLE Aliment(
   id_aliment NUMBER(10),
   nom_aliment VARCHAR2(40),
   CONSTRAINT pk_aliment PRIMARY KEY(id_aliment)
);

CREATE TABLE Ingredient(
   id_ingredient NUMBER(10),
   nom_ingredient VARCHAR2(15) NOT NULL,
   CONSTRAINT pk_ingredient PRIMARY KEY(id_ingredient)
);

CREATE TABLE Machine(
   id_machine NUMBER(10),
   nom_machine VARCHAR2(25) NOT NULL,
   modele_machine VARCHAR2(20) NOT NULL,
   CONSTRAINT pk_machine PRIMARY KEY(id_machine)
);

CREATE TABLE Grade(
   id_grade NUMBER(10),
   nom_grade VARCHAR2(30) NOT NULL,
   CONSTRAINT pk_grade PRIMARY KEY(id_grade)
);

CREATE TABLE Croyances(
   id_croyances NUMBER(10),
   nom_croyances VARCHAR2(50),
   CONSTRAINT pk_croyances PRIMARY KEY(id_croyances)
);

CREATE TABLE Allergenes(
   id_allergene NUMBER(10),
   nom_allergene VARCHAR2(50),
   CONSTRAINT pk_allergenes PRIMARY KEY(id_allergene)
);

CREATE TABLE UtilisationMachine(
   id_utilisationmachine VARCHAR2(10),
   date_utilisation TIMESTAMP,
   duree NUMBER(10),
   temperature NUMBER(5,1),
   CONSTRAINT pk_utilisationMachine PRIMARY KEY(id_utilisationmachine)
);

CREATE TABLE Boisson(
   id_boisson NUMBER(10),
   nom_boisson VARCHAR2(20),
   type_boisson VARCHAR2(30),
   CONSTRAINT pk_boisson PRIMARY KEY(id_boisson)
);

CREATE TABLE NotationPlat(
   id_notation NUMBER(10),
   note NUMBER(2) NOT NULL,
   commentaire VARCHAR2(50),
   date_notation TIMESTAMP,
   CONSTRAINT pk_notationPlat PRIMARY KEY(id_notation),
   CONSTRAINT ck_notationPlat CHECK (note BETWEEN 0 AND 5)
);

CREATE TABLE Entretien(
   id_entretien NUMBER(10),
   date_entretien TIMESTAMP WITH TIME ZONE NOT NULL,
   type_entretien VARCHAR2(20) NOT NULL,
   id_machine NUMBER(10) NOT NULL,
   CONSTRAINT pk_entretien PRIMARY KEY(id_entretien),
   CONSTRAINT fk_entretien FOREIGN KEY(id_machine) REFERENCES Machine(id_machine)
);

CREATE TABLE AutresAliments(
   id_aliment NUMBER(10),
   aliment VARCHAR2(30),
   CONSTRAINT pk_autresAliments PRIMARY KEY(id_aliment),
   CONSTRAINT fk_autresAliments FOREIGN KEY(id_aliment) REFERENCES Aliment(id_aliment)
);

CREATE TABLE Legume(
   id_aliment NUMBER(10),
   type_legume VARCHAR2(50) NOT NULL,
   CONSTRAINT pk_legume PRIMARY KEY(id_aliment),
   CONSTRAINT fk_legume FOREIGN KEY(id_aliment) REFERENCES Aliment(id_aliment)
);

CREATE TABLE Plat(
   id_plat NUMBER(10),
   nom_plat VARCHAR2(50) NOT NULL,
   id_aliment NUMBER(10) NOT NULL,
   CONSTRAINT pk_plat PRIMARY KEY(id_plat),
   CONSTRAINT fk_plat FOREIGN KEY(id_aliment) REFERENCES Aliment(id_aliment)
);

CREATE TABLE Sauce(
   id_sauce NUMBER(10),
   nom_sauce VARCHAR2(20) NOT NULL,
   id_ingredient NUMBER(10) NOT NULL,
   CONSTRAINT pk_sauce PRIMARY KEY(id_sauce),
   CONSTRAINT fk_sauce FOREIGN KEY(id_ingredient) REFERENCES Ingredient(id_ingredient)
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
   CONSTRAINT pk_tenrac PRIMARY KEY(id_tenrac),
   CONSTRAINT u_tenrac UNIQUE(courriel),
   CONSTRAINT u_tenrac_2 UNIQUE(telephone),
   CONSTRAINT fk_tenrac FOREIGN KEY(id_grade) REFERENCES Grade(id_grade),
   CONSTRAINT fk_tenrac_2 FOREIGN KEY(id_entretien) REFERENCES Entretien(id_entretien)
);

CREATE TABLE Organisme(
   id_organisme NUMBER(10),
   raison_sociale VARCHAR2(50) NOT NULL,
   siret NUMBER(14) NOT NULL,
   id_tenrac NUMBER(10) NOT NULL,
   CONSTRAINT pk_organisme PRIMARY KEY(id_organisme),
   CONSTRAINT fk_organisme FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac)
);

CREATE TABLE Repas(
   id_repas NUMBER(10),
   Intitule_repas VARCHAR2(20) NOT NULL,
   id_plat NUMBER(10) NOT NULL,
   id_boisson NUMBER(10) NOT NULL,
   CONSTRAINT pk_repas PRIMARY KEY(id_repas),
   CONSTRAINT fk_repas FOREIGN KEY(id_plat) REFERENCES Plat(id_plat),
   CONSTRAINT fk_Repas_2 FOREIGN KEY(id_boisson) REFERENCES Boisson(id_boisson)
);

CREATE TABLE Rang(
   id_rang NUMBER(10),
   nom_rang VARCHAR2(30) NOT NULL,
   id_tenrac NUMBER(10) NOT NULL,
   CONSTRAINT pk_rang PRIMARY KEY(id_rang),
   CONSTRAINT u_rang UNIQUE(id_tenrac),
   CONSTRAINT fk_rang FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac)
);

CREATE TABLE Titre(
   id_titre NUMBER(10),
   nom_titre VARCHAR2(30) NOT NULL,
   id_tenrac NUMBER(10) NOT NULL,
   CONSTRAINT pk_titre PRIMARY KEY(id_titre),
   CONSTRAINT u_titre UNIQUE(id_tenrac),
   CONSTRAINT fk_titre FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac)
);

CREATE TABLE Dignite(
   id_dignite NUMBER(10),
   nom_dignite VARCHAR2(30) NOT NULL,
   id_tenrac NUMBER(10) NOT NULL,
   CONSTRAINT pk_dignite PRIMARY KEY(id_dignite),
   CONSTRAINT u_dignite UNIQUE(id_tenrac),
   CONSTRAINT fk_dignite FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac)
);

CREATE TABLE TenracClub(
   id_club NUMBER(10),
   id_tenrac NUMBER(10) NOT NULL,
   CONSTRAINT pk_tenracClub PRIMARY KEY(id_club),
   CONSTRAINT u_tenracClub UNIQUE(id_tenrac),
   CONSTRAINT fk_tenracClub FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac)
);

CREATE TABLE TenracOrdre(
   id_ordre NUMBER(10),
   id_tenrac NUMBER(10) NOT NULL,
   CONSTRAINT pk_tenracOrdre PRIMARY KEY(id_ordre),
   CONSTRAINT u_tenracOrdre UNIQUE(id_tenrac),
   CONSTRAINT fk_tenracOrdre FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac)
);

CREATE TABLE Reunion(
   id_reunion NUMBER(10),
   date_reunion TIMESTAMP WITH TIME ZONE NOT NULL,
   adresse_reunion SDO_GEOMETRY NOT NULL,
   id_tenrac NUMBER(10) NOT NULL,
   id_repas NUMBER(10) NOT NULL,
   CONSTRAINT pk_Reunion PRIMARY KEY(id_reunion),
   CONSTRAINT fk_Reunion FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac),
   CONSTRAINT fk_Reunion_2 FOREIGN KEY(id_repas) REFERENCES Repas(id_repas)
);

CREATE TABLE AccompagneDe(
   id_plat NUMBER(10),
   id_sauce NUMBER(10),
   CONSTRAINT pk_AccompagneDe PRIMARY KEY(id_plat, id_sauce),
   CONSTRAINT fk_AccompagneDe FOREIGN KEY(id_plat) REFERENCES Plat(id_plat),
   CONSTRAINT fk_AccompagneDe_2 FOREIGN KEY(id_sauce) REFERENCES Sauce(id_sauce)
);

CREATE TABLE PeutHeurter(
   id_aliment NUMBER(10),
   id_croyances NUMBER(10),
   CONSTRAINT pk_PeutHeurter PRIMARY KEY(id_aliment, id_croyances),
   CONSTRAINT fk_PeutHeurter FOREIGN KEY(id_aliment) REFERENCES Aliment(id_aliment),
   CONSTRAINT fk_PeutHeurter_2 FOREIGN KEY(id_croyances) REFERENCES Croyances(id_croyances)
);

CREATE TABLE PeutProvoquer(
   id_aliment NUMBER(10),
   id_allergene NUMBER(10),
   CONSTRAINT pk_PeutProvoquer PRIMARY KEY(id_aliment, id_allergene),
   CONSTRAINT fk_PeutProvoquer FOREIGN KEY(id_aliment) REFERENCES Aliment(id_aliment),
   CONSTRAINT fk_PeutProvoquer_2 FOREIGN KEY(id_allergene) REFERENCES Allergenes(id_allergene)
);

CREATE TABLE UtiliseMachine(
   id_plat NUMBER(10),
   id_utilisationmachine VARCHAR2(10),
   CONSTRAINT pk_UtiliseMachine PRIMARY KEY(id_plat, id_utilisationmachine),
   CONSTRAINT fk_UtiliseMachine FOREIGN KEY(id_plat) REFERENCES Plat(id_plat),
   CONSTRAINT fk_UtiliseMachine_2 FOREIGN KEY(id_utilisationmachine) REFERENCES UtilisationMachine(id_utilisationmachine)
);

CREATE TABLE Utilise(
   id_machine NUMBER(10),
   id_utilisationmachine VARCHAR2(10),
   CONSTRAINT pk_Utilise PRIMARY KEY(id_machine, id_utilisationmachine),
   CONSTRAINT fk_Utilise FOREIGN KEY(id_machine) REFERENCES Machine(id_machine),
   CONSTRAINT fk_Utilise_2 FOREIGN KEY(id_utilisationmachine) REFERENCES UtilisationMachine(id_utilisationmachine)
);

CREATE TABLE EstNote(
   id_plat NUMBER(10),
   id_notation NUMBER(10),
   CONSTRAINT pk_EstNote PRIMARY KEY(id_plat, id_notation),
   CONSTRAINT fk_EstNote FOREIGN KEY(id_plat) REFERENCES Plat(id_plat),
   CONSTRAINT fk_EstNote_2 FOREIGN KEY(id_notation) REFERENCES NotationPlat(id_notation)
);

CREATE TABLE Attribue(
   id_tenrac NUMBER(10),
   id_notation NUMBER(10),
   CONSTRAINT pk_Attribue PRIMARY KEY(id_tenrac, id_notation),
   CONSTRAINT fk_Attribue FOREIGN KEY(id_tenrac) REFERENCES Tenrac(id_tenrac),
   CONSTRAINT fk_Attribue_2 FOREIGN KEY(id_notation) REFERENCES NotationPlat(id_notation)
);