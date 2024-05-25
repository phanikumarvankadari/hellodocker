# Use the official Node.js image from the Docker Hub
FROM node:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm i 

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the application will run on
EXPOSE 3000

# Define the command to run the application
CMD ["node", "app.js"]
