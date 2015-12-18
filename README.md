# Marechal
Diagramme de collaboration

# Traduction de modèle avec ATL

## 1.Génération de XMI depuis un fichier collab

Lancer /org.collaboration/src/org/collaboration/ModelGenerator.java en passant le fichier collab en paramètre.
Il va créer un XMI atl_input.xmi à la racine du projet.

## 2.Lancement de ATL

Le projet ATL est dans le dossier org.collaboration.atl, il y a un launch eclipse (collab2uml.launch)
qui va récupérer le XMI créé par ModelGenerator et le traduire, le résultat s'appelle out.xmi.
Suivant la configuration de votre workspace Eclipse, il faudra peut-être modifier les chemins dans le launch.
