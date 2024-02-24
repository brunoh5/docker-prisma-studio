FROM node:lts-alpine

WORKDIR /usr/app

COPY package*.json .

RUN npm up --save

RUN npm ci

COPY . .

EXPOSE 5555

ENTRYPOINT ["/bin/sh", "prisma-introspect.sh"]