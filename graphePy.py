import pandas as pd
import matplotlib.pyplot as plt

Grade = pd.read_csv("./csv_output/Grade.csv")
Tenrac = pd.read_csv("./csv_output/Tenrac.csv")


def get_occur(d):
    r = {}
    for element in d:
        if element not in r:
            r[element] = 1
        else:
            r[element] += 1
    return r

listTenrac = Tenrac['id_grade']
nbGradeOuOrdre = get_occur(listTenrac)


y = list(nbGradeOuOrdre.values())

c = Grade['nom_grade']
plt.bar(c, y)
plt.xticks(rotation=45, ha='right')
plt.show()
