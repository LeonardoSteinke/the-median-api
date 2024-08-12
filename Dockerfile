FROM node:20.16-alpine AS base

FROM base as dev
WORKDIR /app
COPY package*.json /app
COPY . /app
RUN npm install
RUN npm run build