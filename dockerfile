FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
RUN rm -rf /var/www/html/index.html
COPY index.html /var/www/html/index.html
Expose 80
CMD nginx -g 'daemon off;'

