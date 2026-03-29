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

table1 = pandas.read_csv("csv_output/Reunion.csv")
table1 = table1['date_reunion'].tolist()
retour = []
for element in table1:
    retour.append(element[21]+element[22])
    
resultat = get_occur(retour)

x = list(resultat.keys())
y = list(resultat.values())

plt.fill_between(x, y, color="lightgreen", alpha=0.4)

plt.title("Réunions de tenracs par mois")
plt.xlabel('Mois')
plt.ylabel('Nombre de réunions')

plt.plot(x,y, "green")
plt.show()