# Use a lightweight base image with Node.js
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the local content to the container
COPY . /app

# Install http-server globally
RUN npm install -g http-server

# Expose port 8080 for the application
EXPOSE 8080

CMD ["http-server", "-p", "8080"]
