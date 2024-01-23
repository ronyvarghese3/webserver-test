# Using the official Nginx base image
FROM nginx:alpine

# Copy the custom hellodevops.html to the Nginx document root
COPY hellodevops.html /usr/share/nginx/html/hellodevops.html
