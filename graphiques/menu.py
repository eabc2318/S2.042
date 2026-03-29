import subprocess

print("Choisir le numéro de graphique voulu :")
print("1 - Nombre de tenracs par titres (diagramme baton)")
print("2 - Répartition des clubs (camembert)")
print("3 - Nombre de réunions chaque mois (fonction)")
print("4 - Nombre de tenracs par réunion (Diagramme baton)")

entry = input("-> ")

while entry not in ["1", "2", "3", "4"]:
    print("/!\ Entrée Invalide /!\\")
    entry = input("-> ")
match entry:
    case "1":
        subprocess.Popen(['pythonw', 'g1.pyw'])
    case "2":
        subprocess.Popen(['pythonw', 'g2.pyw'])
    case "3":
        subprocess.Popen(['pythonw', 'g3.pyw'])
    case "4":
        subprocess.Popen(['pythonw', 'g4.pyw'])