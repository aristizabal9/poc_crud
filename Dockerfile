FROM node

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY api ./api
COPY config ./config
COPY server.js .

EXPOSE 4000
CMD [ "node", "server.js" ]