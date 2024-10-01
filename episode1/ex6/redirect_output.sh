#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 \"<commande>\""
    exit 1
fi

eval "$1" > output.log 2> error.log

echo "Exécution terminée. Vérifiez output.log et error.log pour les résultats."
