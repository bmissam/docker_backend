FROM node:14 

WORKDIR /app

COPY package.json /app 

RUN npm i 

ARG MONGO_CONNECT 

ENV DB_CONNECT $MONGO_CONNECT

COPY . /app

CMD ["node","app.js"]