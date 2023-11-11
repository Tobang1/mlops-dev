FROM node:16.15
#update and upgrade the image
RUN apt update
RUN apt upgrade -y
WORKDIR /usr/src/app
# copypackage.json and all .json to working directory
COPY package*.json ./
RUN npm install
#Test the npm is installed
RUN npm -v
COPY . .
# Build the React app
RUN npm run build
EXPOSE 3000
RUN  echo "docker build successfully"
CMD ["npm", "start"]



