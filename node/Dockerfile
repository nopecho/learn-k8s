FROM node:10.23.0-alpine

ADD . /app

WORKDIR /app

RUN npm ci

CMD ["npm", "run", "start"]
