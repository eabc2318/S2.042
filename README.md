# S2.04
### Trello : 
#### Modèle Relationel
Entretien = (id_entretien NUMBER(10), date_entretien TIMESTAMP WITH TIME ZONE, type_entretien VARCHAR2(20), #id_machine);\
Grade = (id_grade NUMBER(10), nom_grade VARCHAR2(30));\
AutresAliments = (#id_aliment, aliment VARCHAR2(30));\
Legume = (#id_aliment, type_legume VARCHAR2(50));\
Croyances = (id_croyances NUMBER(10), nom_croyances VARCHAR2(50));\
Allergenes = (id_allergene NUMBER(10), nom_allergene VARCHAR2(50));\
UtilisationMachine = (id_utilisationmachine VARCHAR2(10), date_utilisation TIMESTAMP, duree NUMBER(10), temperature VARCHAR2(3));\
Boisson = (id_boisson NUMBER(10), nom_boisson VARCHAR2(20), type_boisson VARCHAR2(10));\
NotationPlat = (id_notation NUMBER(10), note NUMBER(10), commentaire VARCHAR2(50), date_notation TIMESTAMP);\
Tenrac = (id_tenrac NUMBER(10), nom VARCHAR2(20), prenom VARCHAR2(20), courriel VARCHAR2(40), telephone VARCHAR2(12), adresse_postale SDO_GEOMETRY, #id_grade, #id_entretien);\
Organisme = (id_organisme NUMBER(10), raison_sociale VARCHAR2(50), siret NUMBER(10), #id_tenrac);\
Plat = (id_plat NUMBER(10), nom_plat VARCHAR2(50), #id_aliment);\
Sauce = (id_sauce NUMBER(10), nom_sauce VARCHAR2(20), #id_ingredient);\
Rang = (id_rang NUMBER(10), nom_rang VARCHAR2(30), #id_tenrac);\
Titre = (id_titre NUMBER(10), nom_titre VARCHAR2(30), #id_tenrac);\
Dignite = (id_dignite NUMBER(10), nom_dignite VARCHAR2(30), #id_tenrac);\
TenracClub = (id_club NUMBER(10), #id_tenrac);\
TenracOrdre = (id_ordre NUMBER(10), #id_tenrac);\
Repas = (id_repas NUMBER(10), Intitule_repas VARCHAR2(20), #id_plat, #id_boisson);\
Reunion = (id_reunion NUMBER(10), date_reunion TIMESTAMP WITH TIME ZONE, adresse_reunion SDO_GEOMETRY, #id_tenrac, #id_repas);\
Accompagne_de = (#id_plat, #id_sauce);\
Peut_heurter = (#id_aliment, #id_croyances);\
Peut_provoquer = (#id_aliment, #id_allergene);\
Utilise_machine = (#id_plat, #id_utilisationmachine);\
Utilise = (#id_machine, #id_utilisationmachine);\
Est_note = (#id_plat, #id_notation);\
Attribue = (#id_tenrac, #id_notation);\
