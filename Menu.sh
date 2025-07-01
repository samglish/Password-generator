#!/bin/bash
# This script is used to display a menu and execute the selected option.
dialog --mgsbox "Welcome to the Menu" 10 30
dialog --menu "Select an option" 15 50 4 \
1 "Generer mot de passe" \
2 "Telecharger wordlists(password)" \
3 "Telecharger" \
4 "Exit" 2>temp.txt
choice=$(<temp.txt)
rm temp.txt
case $choice in
1)  bash generator.sh ;;
2)  