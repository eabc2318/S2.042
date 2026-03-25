import pandas as pd
import matplotlib.pyplot as plt

AccompagneDe = pd.read_csv("./csv_output/AccompagneDe.csv")
Aliment = pd.read_csv("./csv_output/Aliment.csv")
Allergenes = pd.read_csv("./csv_output/Allergenes.csv")
Attribue = pd.read_csv("./csv_output/Attribue.csv")
AutresAliments = pd.read_csv("./csv_output/AutresAliments.csv")
Boisson = pd.read_csv("./csv_output/Boisson.csv")
Croyances = pd.read_csv("./csv_output/Croyances.csv")
Dignite = pd.read_csv("./csv_output/Dignite.csv")
Entretien = pd.read_csv("./csv_output/Entretien.csv")
EstNote = pd.read_csv("./csv_output/EstNote.csv")
Grade = pd.read_csv("./csv_output/Grade.csv")
Ingredient = pd.read_csv("./csv_output/Ingredient.csv")
Legume = pd.read_csv("./csv_output/Legume.csv")
Machine = pd.read_csv("./csv_output/Machine.csv")
NotationPlat = pd.read_csv("./csv_output/NotationPlat.csv")
Organisme = pd.read_csv("./csv_output/Organisme.csv")
PeutHeurter = pd.read_csv("./csv_output/PeutHeurter.csv")
PeutProvoquer = pd.read_csv("./csv_output/PeutProvoquer.csv")
Plat = pd.read_csv("./csv_output/Plat.csv")
Rang = pd.read_csv("./csv_output/Rang.csv")
Repas = pd.read_csv("./csv_output/Repas.csv")
Reunion = pd.read_csv("./csv_output/Reunion.csv")
Sauce = pd.read_csv("./csv_output/Sauce.csv")
Tenrac = pd.read_csv("./csv_output/Tenrac.csv")
TenracClub = pd.read_csv("./csv_output/TenracClub.csv")
TenracOrdre = pd.read_csv("./csv_output/TenracOrdre.csv")
Titre = pd.read_csv("./csv_output/Titre.csv")
UtilisationMachine = pd.read_csv("./csv_output/UtilisationMachine.csv")
Utilise = pd.read_csv("./csv_output/Utilise.csv")
UtiliseMachine = pd.read_csv("./csv_output/UtiliseMachine.csv")

def get_occur(d):
    r = {}
    for element in d:
        if element not in r:
            r[element] = 1
        else:
            r[element] += 1
    return r

listTenrac = Tenrac['id_grade'].tolist()
nbPersonneParGrade = get_occur(listTenrac)

y = list(nbPersonneParGrade.values())

c = Grade['nom_grade']
plt.bar(c, y)
plt.xticks(rotation=45, ha='right')
plt.show()

