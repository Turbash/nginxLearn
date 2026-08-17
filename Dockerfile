FROM node:latest

WORKDIR /app

COPY server.js .
COPY index.html .
COPY /images ./images
COPY package.json .

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]