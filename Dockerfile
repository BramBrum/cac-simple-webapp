FROM node:10
# Create app directory
WORKDIR /usr/src/app

COPY package*.json /usr/src/app
COPY app.js /usr/src/app
RUN npm install
RUN export PORT=80

COPY . .
EXPOSE 80
CMD ["npm", "run", "start"]
