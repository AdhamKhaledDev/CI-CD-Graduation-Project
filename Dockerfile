# Use a lightweight node image to serve the app
FROM node:16-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy only the necessary files (avoiding the `pics` folder initially)
COPY index.html styles.css app.js README.md /app/

# Copy the pics folder
COPY pics /app/pics

# Expose port 80 for the app to run
EXPOSE 80

# Install a basic HTTP server globally
RUN npm install -g http-server

# Start the server to serve the files on port 80
CMD ["http-server", "-p", "80"]

