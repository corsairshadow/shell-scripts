#!/bin/bash

MYUSERS="alpha beta gamma theta"

for usr in $MYUSERS
do
  echo "Deleting user $usr"
  userdel $usr
  echo "Deleted $usr"
done

