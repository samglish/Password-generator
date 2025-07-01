#!/bin/bash
dialog --msgbox "Bienvenue sur le generateur de mot de passe \n Veuillez Accepter pour continuer" 10 49
min=$(dialog --inputbox "Entrez la longueur minimale du mot de passe" 10 49 2>&1 >/dev/tty)
max=$(dialog --inputbox "Entrez la longueur maximale du mot de passe" 10 49 2>&1 >/dev/tty)
caract=$(dialog --inputbox "Entrez les caracteres autorisés (ex: abcd!@%^+)" 10 49 2>&1 >/dev/tty)
if [ -z "$min" ] || [ -z "$max" ] || [ -z "$caract" ]; then
    dialog --msgbox "Veuillez remplir tous les champs." 10 49
    exit 1
fi
if ! [[ "$min" =~ ^[0-9]+$ ]] || ! [[ "$max" =~ ^[0-9]+$ ]]; then
    dialog --msgbox "La longueur doit être un nombre entier." 10 49
    exit 1
fi
if [ "$min" -gt "$max" ]; then
    dialog --msgbox "La longueur minimale doit être inférieure ou égale à la longueur maximale." 10 49
    exit 1
fi
crunch "$min" "$max" "$caract" -o motdepasse.txt