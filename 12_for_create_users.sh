#!/bin/bash

MYUSERS="alpha beta gamma theta"

for usr in $MYUSERS
do
  echo "Creating User $usr"
  useradd $usr
  id $usr
  echo "========CREATED user======== "
done
