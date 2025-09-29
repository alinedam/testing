# Base image
FROM node:18-alpine

WORKDIR /app

# Copy dependency files
COPY package.json package-lock.json ./

# Install production dependencies
RUN npm ci --only=production

# Copy source code
COPY . .

# Expose app port
EXPOSE 3000

# Start app
CMD ["npm", "start"]

