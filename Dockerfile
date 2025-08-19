# Dockerfile
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files and install deps
COPY package*.json ./
RUN npm install

# Copy rest of the files
COPY . .

# Expose port & run
EXPOSE 3000
CMD ["npm", "start"]
