FROM node:12.18.3-buster

WORKDIR /vue/src

RUN npm install -g @vue/cli