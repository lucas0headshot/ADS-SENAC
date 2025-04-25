FROM node:22-alpine

WORKDIR /app
COPY package*.json ./
RUN npm i && npm i -g @angular/cli @ionic/cli
COPY . .

EXPOSE 8100