# Service FindMe

Ce service scanne en permanence votre système d'exploitation à la recherche d'un fichier FindMe.txt et le supprime en cas de détection.

## Installation

1. Clonez ce dépôt :
   ```
   git clone https://github.com/[votre-nom-utilisateur]/utc502/findme.git
   cd findme
   ```

2. Copiez le script findme.sh dans /usr/local/bin/ et rendez-le exécutable :
   ```
   sudo cp findme.sh /usr/local/bin/
   sudo chmod +x /usr/local/bin/findme.sh
   ```

3. Copiez le fichier de service dans le répertoire de configuration systemd :
   ```
   sudo cp findme.service /etc/systemd/system/
   ```

4. Rechargez la configuration systemd :
   ```
   sudo systemctl daemon-reload
   ```

5. Activez le service pour qu'il démarre automatiquement au démarrage :
   ```
   sudo systemctl enable findme.service
   ```

6. Démarrez le service :
   ```
   sudo systemctl start findme.service
   ```

## Vérification du fonctionnement

Pour vérifier que le service fonctionne correctement :

```
sudo systemctl status findme.service
```

Pour voir les logs en temps réel :

```
journalctl -u findme.service -f
```

## Désinstallation

1. Arrêtez et désactivez le service :
   ```
   sudo systemctl stop findme.service
   sudo systemctl disable findme.service
   ```

2. Supprimez les fichiers :
   ```
   sudo rm /etc/systemd/system/findme.service
   sudo rm /usr/local/bin/findme.sh
   ```

3. Rechargez la configuration systemd :
   ```
   sudo systemctl daemon-reload
   ```
