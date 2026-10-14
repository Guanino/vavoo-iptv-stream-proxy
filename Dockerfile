FROM node:24-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8888

CMD ["node", "index.js", "--http-host", "0.0.0.0", "--http-port", "8888"]
