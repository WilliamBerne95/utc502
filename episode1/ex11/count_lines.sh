#!/bin/bash

# Vérifier si un argument a été fourni
if [ $# -eq 0 ]; then
    echo "Usage: $0 <nom_du_fichier>"
    exit 1
fi

# Vérifier si le fichier existe
if [ ! -f "$1" ]; then
    echo "Le fichier $1 n'existe pas."
    exit 1
fi

# Compter les lignes et afficher le résultat
lines=$(wc -l < "$1")
echo "Le fichier $1 contient $lines lignes."
