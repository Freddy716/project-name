FROM node:20
#crear directorio
WORKDIR /app
# Copiar archivos de package.json y package-lock.json
COPY package*.json ./
# Instalar dependencias 
RUN npm install
# Copiar el resto de los archivos de la aplicación
COPY . .
RUN npm build
# Exponer el puerto en el que la aplicación escuchará
EXPOSE 3000
# Comando para iniciar la aplicación
CMD ["npm", "run", "start:prod"]