#!/bin/bash

DIRECTORIES=("/home" "/tmp" "/var")

while true; do
    echo "Recherche de FindMe.txt..."
    
    for dir in "${DIRECTORIES[@]}"; do
        fichiers_trouves=$(find "$dir" -name "FindMe.txt" 2>/dev/null)
        
        if [ -n "$fichiers_trouves" ]; then
            echo "Fichier(s) trouvé(s) dans $dir :"
            echo "$fichiers_trouves"
            
            while IFS= read -r fichier; do
                proprietaire=$(stat -c '%U' "$fichier")
                echo "Le fichier $fichier appartient à l'utilisateur : $proprietaire"
                echo "Suppression du fichier..."
                rm "$fichier"
                echo "Fichier $fichier supprimé."
            done <<< "$fichiers_trouves"
        fi
    done
    
    if [ -z "$fichiers_trouves" ]; then
        echo "Aucun fichier trouvé. Redémarrage dans 1 minute."
    else
        echo "Tous les fichiers FindMe.txt ont été traités. Redémarrage dans 1 minute."
    fi
    
    sleep 60
done
