#!/bin/bash
# shebang : indique que le script doit etre exécuté avec l'interpreéteur bash

#si le premier argument ($1) est vide 
if test "$1" = ""
then
#affiche un message d'erreur si c'est vide	
echo "il faut au moins un nom du projet."
#quite le script avec un code d'erreur (1=erreur) 

exit 1
fi

#affiche un titre
echo "ANALYSE DES PROJETS"

#boucle sur tous les arguments passées au script

for projet in "$@"
do

#ligne vide pour affichage
echo
#affiche le nom du dossier en cours
echo ">> projet : $projet"

#si le dossier n'existe pas

if test ! -d "$projet"
then
echo "dossier absent"
#passe au projet suivant
continue
fi 

#affiche que le dossier à été trouvé
echo "dossier trouvé mr chris"

# compte le nombre de fichier .c dans le dossier
nb_c=$(ls -1 "$projet"/*.c 2>/dev/null | wc -l)

#nombre de ligne des les fichier .c
total_lignes=0

#si il y'a aumoins un fichier .c
if test "$nb_c" -gt 0
then
for f in "$projet"/*.c
do	

#compteer les lignes du fichier

lignes=$(wc -l < "$f")
#additione au totale
total_lignes=$((total_lignes + lignes))
done
fi

# affichage des resultats

echo "Nb fichier .c : $nb_c"
echo "Nb lignes totales : $total_lignes"
done

echo
#exit 0   #fin
