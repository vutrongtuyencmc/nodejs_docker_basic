# Use the official Node.js image from the Docker Hub
FROM alpine:3.10

RUN apk add --update nodejs npm

# Create and change to the app directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json .

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 4500

# Start the application
CMD ["node", "index.js"]