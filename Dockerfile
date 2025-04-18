# Usa la imagen oficial de n8n
FROM n8nio/n8n:latest

# Establece el directorio de trabajo
WORKDIR /data

# Expone el puerto por defecto de n8n
EXPOSE 5678

# Usa la carpeta /data como volumen (Render ignora esto pero sirve en local)
VOLUME ["/data"]

# Comando por defecto para iniciar n8n
CMD ["n8n"]
