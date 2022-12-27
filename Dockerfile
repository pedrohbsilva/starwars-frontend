FROM node:18

WORKDIR /usr/src/app/my-app

COPY package*.json ./

RUN npm install -g npm@9.2.0

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]
