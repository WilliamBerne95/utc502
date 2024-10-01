#!/bin/bash

who | awk '{print $1}' | sort | uniq > connected_users.log 2> error_users.log

echo "La liste des utilisateurs connectés a été enregistrée dans connected_users.log."
echo "Les erreurs éventuelles ont été enregistrées dans error_users.log."
