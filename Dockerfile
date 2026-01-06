# Bruk en lettvekts Node-image
FROM node:20-slim

# Installer 'serve' globalt i containeren
RUN npm install -g serve

# Sett arbeidsmappe
WORKDIR /app

# Kopier kun den ferdige 'dist'-mappen fra din maskin til containeren
# (Dette forutsetter at du har kjørt 'npm run build' lokalt først)
COPY dist ./dist

# Start serveren på port 3000
EXPOSE 3000
CMD ["serve", "-s", "dist", "-l", "3000"]