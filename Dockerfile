# Étape 1 : Utilisez une image Node.js officielle
FROM node:16

# Étape 2 : Définir le répertoire de travail
WORKDIR /app

# Étape 3 : Copier les fichiers de l'application
COPY package*.json ./
COPY index.js ./

# Étape 4 : Installer les dépendances
RUN npm install

# Étape 5 : Exposer le port de l'application
EXPOSE 3000

# Étape 6 : Démarrer l'application
CMD ["npm", "start"]