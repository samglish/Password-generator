#!/bin/bash
dialog --msgbox "Bienvenue sur le generateur de mot de passe \n Veuillez Accepter pour continuer" 10 49
min=$(dialog --inputbox "Entrez la longueur minimale du mot de passe" 10 49 2>&1 >/dev/tty)
max=$(dialog --inputbox "Entrez la longueur maximale du mot de passe" 10 49 2>&1 >/dev/tty)
caract=$(dialog --inputbox "Entrez les caracteres autorisés (ex: abcd!@%^+)" 10 49 2>&1 >/dev/tty)

