#!/bin/bash

# Nombre del Named Pipe
PIPE=chat_pipe

# Limpiar el Named Pipe si ya existe
[ -p $PIPE ] && rm $PIPE

# Crear el Named Pipe
mkfifo $PIPE

# Bucle principal para leer mensajes del cliente
while true; do
    if read message <$PIPE; then
        echo "Cliente: $message"
    fi
done
