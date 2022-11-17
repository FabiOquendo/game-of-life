#stage 1
FROM node:18.12.1 AS build

WORKDIR /usr/src/app

COPY . .

RUN npm install
RUN npm run build --prod

#stage 2
FROM nginx:alpine

COPY --from=build /usr/src/app/dist/game-of-life /usr/share/nginx/html
