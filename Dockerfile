# Base image choose karein, jaise Node.js
FROM node:14

# Application directory set karein
WORKDIR /app

# Application dependencies copy karein
COPY package*.json ./
RUN npm install

# Application code copy karein
COPY . .

# Port expose karein jis par application run hoga
EXPOSE 3000

# Application start command
CMD ["npm", "start"]