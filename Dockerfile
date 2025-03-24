FROM node:18-alpine

WORKDIR /app

# Install git, Python, build dependencies, and Linux headers
RUN apk add --no-cache git python3 make g++ linux-headers

# Clone the repository
RUN git clone https://github.com/mohamedfawzy96/nerco-ai .

# Install dependencies
RUN npm install

# Build the application
RUN npm run build

# Expose the application port
EXPOSE 1880

# Start the application
CMD ["npm", "start"] 