FROM alpine:latest

# Update and upgrade the image
RUN apk update && \
    apk upgrade

WORKDIR /usr/src/app

# Copy package.json and all .json to working directory
COPY package*.json ./

# Install Node.js and npm
RUN apk add --update nodejs npm

# Install node module using npm

RUN npm install

# Test that npm is installed
RUN npm -v

# Copy the rest of the application code
COPY . .

# Build the React app
RUN npm run build

EXPOSE 3000

# Print a message indicating successful build
RUN echo "docker build successfully"

CMD ["npm", "start"]
