# Using the official Nginx base image. Not using a tagged base image since our web application is not tightly coupled to a specific version.
FROM nginx:alpine

# Copy the custom hellodevops.html to the Nginx document root
COPY hellodevops.html /usr/share/nginx/html/hellodevops.html
