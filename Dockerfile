#FROM node:10-alpine

#RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

#WORKDIR /home/node/app

#COPY package*.json ./

#USER node

#RUN npm install
#RUN npm run start
#RUN export PORT=80
#COPY --chown=node:node . .

#EXPOSE 80

#CMD [ "node", "app.js" ]

FROM node:10
# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /usr/src/app
RUN npm install
RUN npm run start
RUN export PORT=80

# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .
EXPOSE 80
CMD [ "node", "server.js" ]
