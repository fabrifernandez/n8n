FROM n8nio/n8n

# Cambiar a usuario root para poder instalar y modificar permisos si es necesario
USER root

# Crear directorio de datos y asegurarse que existe
RUN mkdir -p /home/node/.n8n

# Establecer permisos adecuados
RUN chown -R node:node /home/node/.n8n

# Regresar a usuario node (seguridad)
USER node

# Puerto en el que n8n escucha (Render lo detecta automáticamente)
EXPOSE 5678

# Comando que inicia n8n
CMD ["n8n"]
