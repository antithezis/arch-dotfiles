#!/bin/bash

# Obtiene la distribución del teclado actual
layout=$(setxkbmap -query | grep layout | awk '{print $2}')

# Verifica si la distribución actual es US
if [ "$layout" = "us" ]; then
  # Cambia la distribución del teclado a latam
  setxkbmap -layout latam
  echo "La distribución del teclado ha sido cambiada a latam"
else
  # Cambia la distribución del teclado a US
  setxkbmap -layout us
  echo "La distribución del teclado ha sido cambiada a US"
fi

