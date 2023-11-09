FROM node:18-alpine

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY --chown=node:node . .

RUN npm run build

EXPOSE 3001

CMD ["npm", "run", "start:prod"]