#!/bin/bash

# Write your translation instead of ##########

# Grafana can completely die after translating, so we should create backup of build folder
echo "Backup in /usr/share/grafana/public/backup"
sudo cp -r /usr/share/grafana/public/build/ /usr/share/grafana/public/backup/
cd /usr/share/grafana/public/build

echo "Übersetzung gestartet..."

sed -i 's/" to "/" zu "/g' app*.js*
# Login page
sed -i 's/"Welcome to "/"Wilkommen beim "/g' app*.js*

sed -i 's/"Logged in"/"Eingeloggt"/g' app*.js* # katja: not working
sed -i 's/placeholder:"email or username"/placeholder:"Email oder Benutzername"/g' app*.js* # Not working yet, idk why 
sed -i 's/placeholder:"password"/placeholder:"Passwort"/g' app*.js* # Not working yet, idk why 
sed -i 's/"Logging in..."/"Einloggen..."/g' app*.js*
sed -i 's/"Email or username is required"/"E-Mail oder Benutzername ist erforderlich"/g' app*.js*
sed -i 's/"Password is required"/"Passwort ist erforderlich"/g' app*.js*
sed -i 's/"Invalid username or password"/"Ungültige Daten"/g' app*.js*

sleep 5
#sudo service grafana-server restart
echo "Übersetzung erledigt! Löschen Sie den Browser-Cache, um Änderungen zu sehen! (CTRL+F5)"
