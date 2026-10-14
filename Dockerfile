FROM node:24-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

# Wir lassen das Skript dynamisch auf dem Port laufen, den SnapDeploy vorgibt
CMD ["node", "index.js", "--http-host", "0.0.0.0", "--http-port", "3000"]
