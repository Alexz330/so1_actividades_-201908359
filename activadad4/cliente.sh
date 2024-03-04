#!/bin/bash

# Nombre del Named Pipe
PIPE=chat_pipe

# Bucle principal para enviar mensajes al servidor
while true; do
    read -p "Tú: " message
    echo $message >$PIPE
done
