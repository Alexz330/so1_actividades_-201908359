1.Hacer que el script sea ejecutable:
sudo chmod +x /ruta/al/script/saludito.servide
2.Habilitar el servicio:
sudo systemctl enable saludito.servide.service
3.Iniciar el servicio:
sudo systemctl start saludito.service

Comprobación de los logs:

Ver el estado del servicio:
sudo systemctl status mi_servicio.service
Ver los logs del servicio:
sudo journalctl -u mi_servicio.service