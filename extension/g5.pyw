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

table1 = pandas.read_csv("csv_output/Legume.csv")
table1 = table1['type_legume'].tolist()
resultat = get_occur(table1)

print(resultat)
x = list(resultat.keys())
y = list(resultat.values())

plt.bar(x,y)
plt.show()
