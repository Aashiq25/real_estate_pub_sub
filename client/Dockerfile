FROM node:14.21.3-bullseye-slim
WORKDIR /src
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080