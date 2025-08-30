#!/bin/bash
echo "What is your name?"
read NAME

echo "Hi $NAME, what is a skill you have?"
read SKILL

echo "So $NAME, you are good at $SKILL-ing"

read -p "Username: " USR
read -sp "Password:" pass
echo
echo "Username: $USR and password is $pass"
