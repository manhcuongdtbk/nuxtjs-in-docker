FROM node:12.14.0-alpine

ENV HOST 0.0.0.0

RUN mkdir -p /usr/src/nuxtjs-in-docker
WORKDIR /usr/src/nuxtjs-in-docker

RUN apk update && apk upgrade
RUN apk add git

EXPOSE 3000

COPY . /usr/src/nuxtjs-in-docker/
RUN npm install
