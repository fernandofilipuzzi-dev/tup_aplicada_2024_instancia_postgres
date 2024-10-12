# Usa una imagen base de Ubuntu
FROM ubuntu:20.04

# Establece el modo no interactivo para evitar prompts durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Actualiza el sistema e instala Docker
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    lsb-release \
    sudo

# Agrega la llave GPG oficial de Docker
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Agrega el repositorio de Docker a las fuentes de APT
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Instala Docker CE
RUN apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io

# Permite que el usuario no root acceda a Docker sin sudo
RUN groupadd docker && usermod -aG docker vscode

# Configuración opcional: instala herramientas adicionales (por ejemplo, Git, Node.js, etc.)
RUN apt-get install -y git nodejs npm

# Limpia los archivos de caché de APT para reducir el tamaño de la imagen
RUN apt-get clean

# Expone los puertos necesarios (por ejemplo, para una aplicación web)
EXPOSE 8080

# Establece un comando por defecto si es necesario
CMD ["bash"]
