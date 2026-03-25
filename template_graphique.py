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

titre_table = pandas.read_csv("csv_output/Titre.csv")
titres = titre_table['nom_titre'].tolist()
titres = get_occur(titres)

x = list(titres.keys())
y = list(titres.values())

plt.bar(x,y,align='center')
plt.show()