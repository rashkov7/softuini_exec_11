FROM node:14-alpine

WORKDIR /app

COPY package*.json /app

EXPOSE 8080

RUN npm install

COPY . /app

VOLUME ["/app/node_modules"]

CMD ["npm", "start"]
