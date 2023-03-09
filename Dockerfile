# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory
WORKDIR /app

# Menyalin seluruh source code ke dalam container
COPY . .

# Menentukan mode production dan DB host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Menentukan port yang digunakan oleh aplikasi
EXPOSE 8080

# Menjalankan server dengan perintah 'npm start'
CMD ["npm", "start"]
