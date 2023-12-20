# Use an existing image as a base
FROM node:14

# Set the working directory
WORKDIR /

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Define the command to run the app
CMD ["node", "index.js"]
