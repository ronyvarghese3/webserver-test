# Using the official Nginx base image. Not using a tagged base image since our web application is not tightly coupled to a specific version.
FROM nginx:alpine

# Copy the custom hellodevops.html to the Nginx document root
COPY hellodevops.html /usr/share/nginx/html/hellodevops.html

#Port in which to expose, this is optional since while running docker we can mention port then.
EXPOSE 8001

#To prevent nginx from self-demonizing and to run in foreground.
CMD ["nginx", "-g","daemon off;"]
