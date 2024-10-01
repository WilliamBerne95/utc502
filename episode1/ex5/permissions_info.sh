#!/bin/bash

if [ 0 -eq 0 ]; then
    echo "Usage: -bash <nom_du_fichier>"
    exit 1
fi

if [ ! -e "" ]; then
    echo "Le fichier  n'existe pas."
    exit 1
fi

permissions=

echo "Permissions: "

if [ -x "" ]; then
    echo "Vous avez les droits d'exécution sur ce fichier."
else
    echo "Vous n'avez pas les droits d'exécution sur ce fichier."
fi
