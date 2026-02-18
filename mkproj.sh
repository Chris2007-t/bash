#!/bin/bash


#EXERCICE4
# ce script crée un projet C : dossier et source

projet=$1

mkdir ${projet}
cd ${projet}

echo "j'ai faim"          > ${projet}1.c
echo 'pourquoi'           >> ${projet}2.c
echo 'je wanda'           >> ${projet}3.c
echo " moi aussi"         >> ${projet}4.c

echo "Projet créé avec success tu es un monstre: $projet"


#EXERCICE5
