# Use the official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the production version of the app
RUN npm run build

# Expose the app on port 3000
EXPOSE 3000

# Start the app
CMD [ "npm", "start" ]