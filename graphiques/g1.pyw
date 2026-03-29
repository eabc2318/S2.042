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

table1 = pandas.read_csv("csv_output/Titre.csv")
table1 = table1['nom_titre'].tolist()
resultat = get_occur(table1)

x = list(resultat.keys())
y = list(resultat.values())

plt.title("Répartition des titres de tenracs")
plt.xlabel('Titres')
plt.ylabel('Nombre de tenracs')

plt.bar(x,y,align='center', color='gray')
plt.show()