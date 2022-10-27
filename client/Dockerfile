FROM node:fermium-bullseye-slim
WORKDIR /src
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080