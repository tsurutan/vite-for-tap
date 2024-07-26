FROM node:20-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm ci

COPY . .

ENV NODE_ENV production
RUN npm run build

EXPOSE 5173
CMD ["node", "server.js"]
