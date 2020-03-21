FROM node:12-alpine

WORKDIR /api

ENV TOKEN_SECRET=${TOKEN_SECRET}
ENV DB_USER=${DB_USER}
ENV DB_NAME=${DB_NAME}
ENV DB_HOST=${DB_HOST}
ENV DB_PASSWORD=${DB_PASSWORD}

COPY package.json ./
COPY package-lock.json ./

RUN npm install
RUN npm install -g pg

EXPOSE 8000

CMD [ "node", "app.js" ]
