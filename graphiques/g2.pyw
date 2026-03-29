import pandas
import matplotlib.pyplot as plt

def get_occur(d):
    r = {}
    for element in d:
        if element not in r:
            r[element] = 1
        else:
            r[element] += 1
    return r

table1 = pandas.read_csv("csv_output/TenracClub.csv")
table1 = table1['id_club'].tolist()
resultat = get_occur(table1)

x = list(resultat.keys())
y = list(resultat.values())

plt.title("Répartition des tenracs par clubs")
plt.xlabel('Clubs de tenracs (ID)')
plt.ylabel('Proportion de tenracs (%)')

plt.pie(y, labels = x,            # si l'on veut "écarter" un secteur
           autopct = lambda z: str(round(z, 2)) + '%', # affichage des pourcentages dans les secteurs
           pctdistance = 0.7,                    # distance au centre pour l'affichage des pourcentages
           labeldistance = 1.2,                  # distance au centre pour l'affichage des labels
           normalize=True)                      # normalisation des données (ici déjà normalisées = somme à 1)

plt.show()