#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <nom_du_fichier>"
    exit 1
fi

if [ ! -e "$1" ]; then
    echo "Le fichier $1 n'existe pas."
    exit 1
fi

if [ -r "$1" ]; then
    echo "Vous avez les droits de lecture."
fi

if [ -w "$1" ]; then
    echo "Vous avez les droits d'écriture."
fi

if [ -x "$1" ]; then
    echo "Vous avez les droits d'exécution."
fi
