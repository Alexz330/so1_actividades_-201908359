#!/bin/bash

USUARIO_GITHUB="alexz330"

API_URL="https://api.github.com/users/$USUARIO_GITHUB"
RESPUESTA=$(curl -s "$API_URL")

USUARIO_ID=$(echo "$RESPUESTA" | jq -r '.id')
CREACION=$(echo "$RESPUESTA" | jq -r '.created_at')

MENSAJE="Hola $USUARIO_GITHUB. User ID: $USUARIO_ID. Cuenta fue creada el: $CREACION."
echo "$MENSAJE"


DIRECTORIO_LOG="/tmp/$(date '+%Y%m%d')"
ARCHIVO_LOG="$DIRECTORIO_LOG/saludos.log"

mkdir -p "$DIRECTORIO_LOG"
echo "$(date '+%Y-%m-%d %H:%M:%S'): $MENSAJE" >> "$ARCHIVO_LOG"

(crontab -l 2>/dev/null; echo "*/5 * * * * /ruta/al/script.sh") | crontab -
