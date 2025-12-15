FROM node:20-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos primero dependencias (mejor cache)
COPY package.json ./

# Instalamos dependencias
RUN npm install --production

# Copiamos el código
COPY index.js ./

# Puerto interno del contenedor
EXPOSE 3000

# Comando de arranque
CMD ["npm", "start"]
