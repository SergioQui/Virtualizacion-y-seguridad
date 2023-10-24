#Each student must fill this file with the correct information
#LABEL authors = "sergioquintero 22042257"
#LABEL version = "1.0"
#LABEL description = "Dockerfile for a custom image of Kali Linux OS examen"
# Use the official Kali Linux base image
FROM kalilinux/kali-rolling

# Actualizar el sistema y los paquetes
RUN apt-get update && apt-get upgrade -y

# Instalar nano para la edición de texto
RUN apt-get install -y nano

# Instalar Python y Jupyter
RUN apt-get install -y python3 python3-pip
RUN pip3 install jupyter

# Instalar Nmap
RUN apt-get install -y nmap

# Configurar el usuario root con la contraseña igual a su número de expediente
RUN echo "root:22042257" | chpasswd

# Limpieza del sistema
RUN apt-get clean

# Exponer los puertos 600 y 700
EXPOSE 600 700

# Establecer la línea de comando como punto de partida
CMD ["/bin/bash"]
