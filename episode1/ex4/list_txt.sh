#!/bin/bash

txt_files=$(ls *.txt 2>/dev/null)

if [ -n "$txt_files" ]; then
    echo "$txt_files"
else
    echo "Aucun fichier .txt trouvé"
fi
