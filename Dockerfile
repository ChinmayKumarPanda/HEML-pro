# Dockerfile
FROM node:18-alpine

WORKDIR /app

# No package.json → remove npm ci / npm install
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]

