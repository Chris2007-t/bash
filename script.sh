#!/bin/bash
#EXERCICE1
#mon premier script

#echo "initialisation du systeme"

#EXERCICE2

#MESSAGE="bienvenue dans le gestionnaire de projet"

#echo $MESSAGE



#PROJET=test1

#mkdir $PROJET
#cd $PROJET
#echo "projet crée avec succès"   >${PROJET}.c

#EXERCICE3

read -p "nom du projet:" pheldyne

mkdir $pheldyne
cd $pheldyne
echo '#inclide <stdlib.h>'    > ${pheldyne}1.c
echo 'int main() {'          >> ${pheldyne}2.c
echo 'return EXIT_SUCCESS;'  >> ${pheldyne}3.c
echo 'dossier crée avec success tu es un génie chris'







