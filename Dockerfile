FROM node:18-alpine

WORKDIR /app

# Install git, Python and build dependencies
RUN apk add --no-cache git python3 make g++ 

# Clone the repository
RUN git clone https://github.com/node-red/node-red.git .

# Install dependencies
RUN npm install

# Build the application
RUN npm run build

# Expose the application port
EXPOSE 1880

# Start the application
CMD ["npm", "start"] 