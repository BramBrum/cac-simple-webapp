# Gebruik een Node.js basisafbeelding
FROM node:14

# Stel de werkdirectory in binnen de container
WORKDIR /usr/src/app

# Clone de GitHub-repo naar de werkdirectory binnen de container
RUN git clone https://github.com/TimothySealy/cac-simple-webapp.git .

# Installeer de afhankelijkheden
RUN npm install

# Exporteer de poort
ENV PORT=80

# Open poort 3000 voor de buitenwereld
EXPOSE 80

# Voer de applicatie uit bij het starten van de container
CMD ["npm", "run", "start"]