# Use official Node.js runtime as base image
FROM node:20-alpine

# Set working directory in container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy rest of application code
COPY . .

# Expose port (Next.js default is 3000)
EXPOSE 3000

# Command to run the development server
CMD ["npm", "run", "dev"]
