# Dockerfile para Nanobot - Agente Climático
# Uso: docker build -t nanobot-clima . && docker run -it nanobot-clima

FROM ubuntu:22.04

# Evitar prompts interactivos durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Instalar dependencias del sistema
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    curl \
    nano \
    wget \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Crear directorio de trabajo
WORKDIR /app

# Clonar Nanobot
RUN git clone https://github.com/HKUDS/nanobot.git .

# Instalar Nanobot en modo editable
RUN pip3 install -e . --break-system-packages

# Crear directorio de configuración
RUN mkdir -p /root/.nanobot

# Copiar archivos de configuración (se sobreescribirán en tiempo de ejecución)
COPY config.json /root/.nanobot/config.json
COPY TOOLS.md /app/TOOLS.md
COPY AGENTS.md /app/AGENTS.md

# Exponer puertos del gateway y API
EXPOSE 18790 8900

# Comando por defecto
CMD ["nanobot", "gateway"]
