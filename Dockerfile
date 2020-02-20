FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

RUN mkdir ./dist
COPY ./dist ./dist

EXPOSE 8080
CMD ["npm", "run", "dev"]
