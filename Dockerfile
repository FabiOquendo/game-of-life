FROM node:18.12.1 AS build

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

EXPOSE 4200

CMD ["npm", "start"]
