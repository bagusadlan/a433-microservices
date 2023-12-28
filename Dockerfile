# Base image Node.js versi 14
FROM node:14

# Working directory
WORKDIR /app

# Salin seluruh source code ke working directory di container
COPY . .

# Tentukan environment variable NODE_ENV dan DB_HOST
ENV NODE_ENV=production DB_HOST=item-db

# Instal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port
EXPOSE 8080

# Jalankan server saat container diluncurkan
CMD ["npm", "start"]