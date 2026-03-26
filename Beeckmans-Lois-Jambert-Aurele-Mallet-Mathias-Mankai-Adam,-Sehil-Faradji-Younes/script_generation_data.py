import random
import os
from datetime import datetime, timedelta

# listes de base
grades = ["Affilie", "Sympathisant", "Adherent", "Chevalier", "Dame", "Grand Croix"]
rangs = ["Novice", "Compagnon"]

titres = ["Philanthrope", "Protecteur", "Honorable"]
POIDS_TITRES = [5, 25, 70]  # probas pour les titres

dignites = ["Maitre", "Chancelier", "Grand Maitre"]

legumes = [
    ("poivron", "Legume-fruit"), ("patate", "Tubercule"), ("salade", "Legume-feuille"), 
    ("tomate", "Legume-fruit"), ("oignon", "Bulbe"), ("courgette", "Legume-fruit"), 
    ("aubergine", "Legume-fruit"), ("carotte", "Racine"), ("navet", "Racine"), 
    ("radis", "Racine"), ("brocoli", "Legume-fleur"), ("poireau", "Legume-feuille"), 
    ("asperge", "Pousse"), ("epinard", "Legume-feuille"), ("celeri", "Tige"), 
    ("fenouil", "Bulbe"), ("haricot vert", "Gousse"), ("chou", "Legume-feuille"),
    ("chou fleur", "Legume-fleur"), ("chou rouge", "Legume-feuille"), 
    ("chou de Bruxelles", "Legume-feuille"), ("potiron", "Legume-fruit"), 
    ("citrouille", "Legume-fruit"), ("butternut", "Legume-fruit"), ("panais", "Racine"), 
    ("topinambour", "Tubercule"), ("rutabaga", "Racine"), ("betterave", "Racine"), 
    ("patate douce", "Tubercule"), ("mache", "Legume-feuille"), ("roquette", "Legume-feuille"), 
    ("endive", "Legume-feuille"), ("crosne", "Tubercule"), ("artichaut", "Legume-fleur"), 
    ("bette", "Legume-feuille"), ("cardon", "Tige"), ("salsifis", "Tige"), 
    ("petit pois", "Graine"), ("feve", "Graine"), ("lentille", "Graine"), 
    ("mais doux", "Graine"), ("piment", "Legume-fruit"), ("concombre", "Legume-fruit"), 
    ("cornichon", "Legume-fruit"), ("ail", "Bulbe"), ("echalote", "Bulbe"),
    ("chou kale", "Legume-feuille"), ("chou romanesco", "Legume-fleur")
]

autres_aliments = ["poulet", "kebab", "pizza", "quiche", "saumon", "ananas", "beurre", "Steak", "Fromage", "Dragon", "Nuggets", "Lave", "Burger"]
ingredients = ["sauce", "moutarde", "ketchup", "beurre", "sel", "poivre", "piment", "herbes", "ail", "curcuma", "paprika"]

marques_machines = ["Racletor", "Cheesy", "TenderPro", "GrillTech", "CrousPrime", "OptiFrom", "Tradition", "Combine"]
suffixes_machines = ["Max", "Pro", "V2", "Elite", "Eco", "Plus", "Ultra", "Supra"]
types_entretien = ["Annuel", "Revision", "Reparation", "Nettoyage"]

boissons = [
    ("Eau", "Sans"), ("Biere", "Alcool"), ("Vin Rouge", "Alcool"), 
    ("Ice Tea", "Sans"), ("Potion", "Sans"), ("Hydromel", "Alcool"), 
    ("Jus Pomme", "Sans"), ("Vin Blanc", "Alcool"), ("Champagne", "Alcool"), 
    ("Cafe", "Sans"), ("The Vert", "Sans"), ("Limonade", "Sans"),
    ("Whisky", "Alcool"), ("Rhum", "Alcool"), ("Vodka", "Alcool"),
    ("Gin", "Alcool"), ("Cidre", "Alcool"), ("Margarita", "Alcool"),
    ("Mojito", "Alcool"), ("Sangria", "Alcool"), ("Lait", "Sans"),
    ("Jus dOrange", "Sans"), ("Soda", "Sans"), ("Chocolat Chaud", "Sans"),
    ("Kombucha", "Sans"), ("Sirop de Menthe", "Sans"), ("Smoothie", "Sans"),
    ("Espresso Martini", "Alcool"), ("Pastis", "Alcool"), ("Sake", "Alcool")
]

catalogue_plats = [
    "Entrecote Maturee et Frites", "Magret de Canard au Miel", 
    "Risotto aux Saint Jacques", "Burger Signature a la Truffe", 
    "Blanquette de Veau Tradition", "Pave de Saumon a l Unilaterale",
    "Plateau de Fromages Affines", "Raclette au Lait Cru Royale",
    "Kebab Gourmet Veau et Dinde", "Tenders de Poulet Fermier",
    "Lasagnes a la Bolognaise", "Tartare de Boeuf au Couteau",
    "Pizza Regina aux Champignons", "Salade Cesar Croustillante",
    "Souris d Agneau Confite", "Poke Bowl Saumon Avocat"
]

allergenes = ["Lactose", "Arachide", "Gluten", "Noix", "Moutarde", "Venin"]
croyances = ["Vegan", "Casher", "Halal", "Culte"]

noms = ["Martin", "Nevot", "Nedjar", "Hitier", "Agostinelli", "Morancey", "Durand", "Albertos", "Salamanca", "White", "Mouse", "De Gaulle", "Boule", "Bilar", "Higueurs", "Sabreur", "Patateur", "Scila", "Laverand", "Lafayette", "Machiavel", "Dupont", "Dubois", "Leroy", "Roux", "Thomas", "Laurent", "Muller", "Garcia", "Moreau", "Fournier", "Girard", "Bonnet", "Blanc", "Guerin", "Clement", "Rousseau", "Garnier", "Chevalier", "Francois", "Legrand", "Gauthier", "Perrin", "Robin", "Morin", "Nicolas", "Picard", "Lefebvre", "Mercier", "Marchand", "Dumas", "Lambert", "Fontaine", "Roussel", "Navarro", "Gomez", "Lopez", "Fernandez", "Bouchard", "Boucher", "Caron", "Colin", "Cote", "Deschamps", "Dumont", "Dupuis", "Gagnon", "Gingras", "Gosselin", "Lavoie", "Leblanc", "Lefevre", "Martel", "Meunier", "Monnier", "Ouellet", "Pelletier", "Poirier", "Poulin", "Renard", "Richard", "Roy", "Tremblay", "Vidal", "Arnaud", "Barbier", "Berger", "Boyer", "Fabre", "Guillaume", "Leclerc", "Lecomte", "Lemaire", "Lucas", "Masson", "Meyer", "Renaud", "Simon", "Vincent"]
prenoms = ["Mickael", "Sebastien", "Sylvain", "Laurence", "Morgan", "Aureille", "Mathias", "Adame", "Younes", "Mathieu", "Jean", "Patrick", "Rodolphe", "Leo", "Enzo", "Steve", "Lee", "Lisa", "Julie", "Emma", "Maeva", "Ambrine", "Donald", "Mickey", "Jules", "Evan", "Charlotte", "Nate", "Nathan", "Nicolas", "Thomas", "Lucas", "Hugo", "Louis", "Gabriel", "Arthur", "Mael", "Paul", "Pierre", "Jacques", "Marie", "Camille", "Lea", "Chloe", "Manon", "Ines", "Clara", "Sarah", "Alice", "Lina", "Mila", "Rose", "Antoine", "Alexandre", "Victor", "Raphael", "Mathis", "Theo", "Maxime", "Romain", "Celine", "Sophie", "Laura", "Alain", "Albert", "Andre", "Benoit", "Bernard", "Bruno", "Charles", "Christian", "Christophe", "Claude", "Daniel", "David", "Denis", "Didier", "Dominique", "Eric", "Francois", "Frederic", "Gerard", "Gilles", "Guy", "Herve", "Julien", "Laurent", "Marcel", "Michel", "Olivier", "Pascal", "Patrice", "Philippe", "Rene", "Richard", "Robert", "Roland", "Serge", "Stephane", "Thierry", "Vincent", "Xavier", "Yves", "Aline", "Anne", "Annie", "Aurelie", "Brigitte", "Carole", "Catherine", "Cecile", "Chantal", "Christelle", "Christiane", "Christine", "Claire", "Corinne", "Danielle", "Delphine", "Elodie", "Emilie", "Evelyne", "Fabienne", "Francoise", "Genevieve", "Helene", "Isabelle", "Jacqueline", "Jeanne", "Josiane", "Karine", "Laetitia", "Magali", "Marcelle", "Marguerite", "Maria", "Marianne", "Marina", "Marion", "Martine", "Maryse", "Mathilde", "Michele", "Monique", "Myriam", "Nadege", "Nadine", "Nathalie", "Nicole", "Odile", "Pascale", "Patricia", "Pauline", "Renee", "Sandrine", "Severine", "Simone", "Stephanie", "Suzanne", "Sylvie", "Therese", "Valerie", "Veronique", "Virginie"]

noms_sauces = ["Maison", "Epicee", "Doux", "Ancienne", "Algerienne", "Samourai", "Fondu", "Tartare", "Mystique", "Poivre"]
commentaires = ["Incroyable", "Un peu trop cuit", "Memorable", "Un delice absolu", "Excellent", "A refaire tres vite", "Parfait", "Manque de fromage", "Surnaturel"]
organismes_noms = ["IUT Aix", "KFC", "Fromagerie", "Ordre", "Corp", "Univ", "Restaurant", "Food Truck"]
intitules_repas = ["Banquet", "Reunion", "Diner", "Cene", "Festin", "Degustation", "Repas Gala", "Soiree", "Repas Max"]

# utilitaires dates
def random_date(start_year, end_year):
    start_date = datetime(start_year, 1, 1)
    end_date = datetime(end_year, 12, 31)
    delta = end_date - start_date
    random_days = random.randrange(delta.days)
    random_seconds = random.randrange(24 * 60 * 60)
    dt = start_date + timedelta(days=random_days, seconds=random_seconds)
    return dt.strftime('%Y-%m-%d %H:%M:%S')

def format_timestamp(date_str, with_tz=False):
    if with_tz:
        return f"TO_TIMESTAMP_TZ('{date_str} +01:00', 'YYYY-MM-DD HH24:MI:SS TZH:TZM')"
    return f"TO_TIMESTAMP('{date_str}', 'YYYY-MM-DD HH24:MI:SS')"

def generer_extension(nb_membres):
    bureau = os.path.join(os.environ['USERPROFILE'], 'Desktop')
    filename = os.path.join(bureau, "s52_extension_tenrac.sql")
    
    # calcul des volumes dynamiques
    NB_PLATS_CATALOGUE = len(catalogue_plats)
    TOTAL_MACHINES = max(10, int(nb_membres * 0.05))   
    TOTAL_SAUCES = 15
    TOTAL_REPAS = max(15, int(nb_membres * 0.2))      
    TOTAL_REUNIONS = max(10, int(nb_membres * 0.25))   
    TOTAL_ORGANISMES = 30 

    # poids pour les stats des affiliations
    CLUBS = [1, 2, 3, 4]
    POIDS_CLUBS = [60, 25, 10, 5]
    
    ORDRES = [1, 2, 3]
    POIDS_ORDRES = [75, 20, 5]

    tables_order = [
        "Grade", "Croyances", "Allergenes", "Ingredient", "Boisson", 
        "Machine", "Entretien", "UtilisationMachine", "Utilise", 
        "NotationPlat", "Aliment", "AutresAliments", "Legume", 
        "PeutHeurter", "PeutProvoquer", "Sauce", "Plat", "AccompagneDe", 
        "UtiliseMachine", "EstNote", "Tenrac", "Organisme", 
        "Rang", "Titre", "Dignite", "TenracClub", "TenracOrdre", 
        "Attribue", "Repas", "Reunion", "ParticipeA"
    ]
    
    sql_data = {table: [] for table in tables_order}

    print(f"Lancement de la generation pour {nb_membres} tenracs...")

    # tables de ref
    for i, g in enumerate(grades, 1): sql_data["Grade"].append(f"INSERT INTO Grade VALUES ({i}, '{g}');")
    for i, c in enumerate(croyances, 1): sql_data["Croyances"].append(f"INSERT INTO Croyances VALUES ({i}, '{c}');")
    for i, a in enumerate(allergenes, 1): sql_data["Allergenes"].append(f"INSERT INTO Allergenes VALUES ({i}, '{a}');")
    for i, ing in enumerate(ingredients, 1): sql_data["Ingredient"].append(f"INSERT INTO Ingredient VALUES ({i}, '{ing}');")
    for i, b in enumerate(boissons, 1): sql_data["Boisson"].append(f"INSERT INTO Boisson VALUES ({i}, '{b[0]}', '{b[1]}');")
    
    # aliments
    id_aliment = 1
    for a in autres_aliments:
        sql_data["Aliment"].append(f"INSERT INTO Aliment VALUES ({id_aliment}, '{a}');")
        sql_data["AutresAliments"].append(f"INSERT INTO AutresAliments VALUES ({id_aliment}, 'Divers');")
        if random.random() < 0.3: sql_data["PeutHeurter"].append(f"INSERT INTO PeutHeurter VALUES ({id_aliment}, {random.randint(1, len(croyances))});")
        if random.random() < 0.3: sql_data["PeutProvoquer"].append(f"INSERT INTO PeutProvoquer VALUES ({id_aliment}, {random.randint(1, len(allergenes))});")
        id_aliment += 1
    
    for nom_l, type_l in legumes:
        sql_data["Aliment"].append(f"INSERT INTO Aliment VALUES ({id_aliment}, '{nom_l}');")
        sql_data["Legume"].append(f"INSERT INTO Legume VALUES ({id_aliment}, '{type_l}');")
        id_aliment += 1
    TOTAL_ALIMENTS = id_aliment - 1

    # machines
    id_ent, id_util = 1, 1
    for id_m in range(1, TOTAL_MACHINES + 1):
        nom_m = f"{random.choice(marques_machines)} {random.choice(suffixes_machines)}"
        sql_data["Machine"].append(f"INSERT INTO Machine VALUES ({id_m}, '{nom_m}', 'MDL-{random.randint(100,999)}');")
        
        for _ in range(random.randint(1, 2)):
            dt = format_timestamp(random_date(2020, 2025), with_tz=True)
            sql_data["Entretien"].append(f"INSERT INTO Entretien VALUES ({id_ent}, {dt}, '{random.choice(types_entretien)}', {id_m});")
            id_ent += 1
            
        for _ in range(random.randint(2, 5)):
            um_id = f"U{id_util}"
            dt_u = format_timestamp(random_date(2020, 2025))
            sql_data["UtilisationMachine"].append(f"INSERT INTO UtilisationMachine VALUES ('{um_id}', {dt_u}, {random.randint(10,60)}, {random.uniform(160,220):.1f});")
            sql_data["Utilise"].append(f"INSERT INTO Utilise VALUES ({id_m}, '{um_id}');")
            id_util += 1
    TOTAL_UTIL = id_util - 1

    # plats et sauces
    for i in range(1, TOTAL_SAUCES + 1):
        sql_data["Sauce"].append(f"INSERT INTO Sauce VALUES ({i}, '{random.choice(noms_sauces)} {i}', {random.randint(1, len(ingredients))});")

    id_note = 1
    for i, nom_plat in enumerate(catalogue_plats, 1):
        sql_data["Plat"].append(f"INSERT INTO Plat VALUES ({i}, '{nom_plat}', {random.randint(1, TOTAL_ALIMENTS)});")
        
        for _ in range(random.randint(5, 10)):
            dt_n = format_timestamp(random_date(2023, 2026))
            sql_data["NotationPlat"].append(f"INSERT INTO NotationPlat VALUES ({id_note}, {random.randint(2, 5)}, '{random.choice(commentaires)}', {dt_n});")
            sql_data["EstNote"].append(f"INSERT INTO EstNote VALUES ({i}, {id_note});")
            id_note += 1
            
        sql_data["AccompagneDe"].append(f"INSERT INTO AccompagneDe VALUES ({i}, {random.randint(1, TOTAL_SAUCES)});")
        sql_data["UtiliseMachine"].append(f"INSERT INTO UtiliseMachine VALUES ({i}, 'U{random.randint(1, TOTAL_UTIL)}');")

    # repas
    for i in range(1, TOTAL_REPAS + 1):
        sql_data["Repas"].append(f"INSERT INTO Repas VALUES ({i}, '{random.choice(intitules_repas)} {i}', {random.randint(1, NB_PLATS_CATALOGUE)}, {random.randint(1, len(boissons))});")

    # membres
    id_r, id_t, id_d = 1, 1, 1
    for i in range(1, nb_membres + 1):
        nom, prenom = random.choice(noms), random.choice(prenoms)
        mail = f"{prenom[:8].lower()}.{nom[:8].replace(' ', '').lower()}{i}@amu.fr"
        tel = f"06{str(i).zfill(8)[-8:]}"  
        lon, lat = str(round(random.uniform(5.0, 6.0), 4)), str(round(random.uniform(43.0, 44.0), 4))
        
        sql_data["Tenrac"].append(f"INSERT INTO Tenrac VALUES ({i}, '{nom}', '{prenom}', '{mail}', '{tel}', MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE({lon}, {lat}, NULL), NULL, NULL), {random.randint(1, len(grades))}, {random.randint(1, id_ent-1)});")
        
        sql_data["Attribue"].append(f"INSERT INTO Attribue VALUES ({i}, {random.randint(1, NB_PLATS_CATALOGUE)});")
        
        if random.random() < 0.3: 
            sql_data["Rang"].append(f"INSERT INTO Rang VALUES ({id_r}, '{random.choice(rangs)}', {i});")
            id_r += 1
            
        if random.random() < 0.2: 
            titre_choisi = random.choices(titres, weights=POIDS_TITRES, k=1)[0]
            sql_data["Titre"].append(f"INSERT INTO Titre VALUES ({id_t}, '{titre_choisi}', {i});")
            id_t += 1
            
        if random.random() < 0.1: 
            sql_data["Dignite"].append(f"INSERT INTO Dignite VALUES ({id_d}, '{random.choice(dignites)}', {i});")
            id_d += 1

        # dispatch dans les clubs/ordres
        affiliation_choice = random.random()
        if affiliation_choice < 0.4: 
            id_club_choisi = random.choices(CLUBS, weights=POIDS_CLUBS, k=1)[0]
            sql_data["TenracClub"].append(f"INSERT INTO TenracClub VALUES ({id_club_choisi}, {i});")
        elif affiliation_choice < 0.8: 
            id_ordre_choisi = random.choices(ORDRES, weights=POIDS_ORDRES, k=1)[0]
            sql_data["TenracOrdre"].append(f"INSERT INTO TenracOrdre VALUES ({id_ordre_choisi}, {i});")

    # organismes et reunions
    for i in range(1, TOTAL_ORGANISMES + 1):
        siret = random.randint(10000000000000, 99999999999999) 
        sql_data["Organisme"].append(f"INSERT INTO Organisme VALUES ({i}, '{random.choice(organismes_noms)} {i}', {siret}, {random.randint(1, nb_membres)});")

    for i in range(1, TOTAL_REUNIONS + 1):
        lon, lat = str(round(random.uniform(5.0, 6.0), 4)), str(round(random.uniform(43.0, 44.0), 4))
        sql_data["Reunion"].append(f"INSERT INTO Reunion VALUES ({i}, {format_timestamp(random_date(2025, 2026), True)}, MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE({lon}, {lat}, NULL), NULL, NULL), {random.randint(1, TOTAL_REPAS)});")
        for p in random.sample(range(1, nb_membres + 1), random.randint(2, 8)):
            sql_data["ParticipeA"].append(f"INSERT INTO ParticipeA VALUES ({p}, {i});")

    # save dans le fichier
    with open(filename, "w", encoding="utf-8") as f:
        f.write("-- Script d'insertion\n\n")
        for table in tables_order:
            if sql_data[table]:
                f.write(f"-- {table}\n")
                f.write("\n".join(sql_data[table]) + "\n\n")

    print(f"Fini ! Fichier dispo ici : {filename}")

if __name__ == "__main__":
    generer_extension(1000)
