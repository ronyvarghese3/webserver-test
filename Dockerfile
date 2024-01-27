# Using the official Nginx base image. Not using a tagged base image since our web application is not tightly coupled to a specific version.
FROM nginx:alpine

# Copy the custom hellodevops.html to the Nginx document root
COPY source/html /usr/share/nginx/html

#Port in which to expose, this is optional since while running docker we can mention port then.
EXPOSE 80

#RUN chown -R 1015790001:root /etc/nginx
#RUN chown -R 1015790001:root /etc/conf.d
#RUN chown -R 1015790001:root /var/cache/nginx
#RUN chown -R 1015790001:root /var/run/
#RUN sed -i 's/nginx;/1015790001;/g' /etc/nginx/nginx.conf
#RUN sed -i 's/80;/8001;/g' /etc/nginx/conf.d/default.conf
#To prevent nginx from self-demonizing and to run in foreground.
CMD ["nginx", "-g","daemon off;"]
