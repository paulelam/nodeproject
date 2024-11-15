# Étape 1 : Construction de l'image
FROM node:18 AS build

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste du code
COPY . .

# Générer Prisma Client
RUN npx prisma generate

# Étape 2 : Image de production
FROM node:18

# Définir le répertoire de travail pour l'image finale
WORKDIR /app

# Copier les dépendances installées et le code de l'étape de build
COPY --from=build /app /app

# Exposer le port de l'application (exemple : 3000)
EXPOSE 5000

CMD ["sh", "-c", "npx prisma generate && node index.js"]


