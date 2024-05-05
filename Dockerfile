FROM ubuntu:latest
RUN mkdir /app
WORKDIR /app
RUN apt-get update
RUN apt-get install -y apache2
COPY aplicacaoweb.html /var/www/html/index.html
CMD ["service", "apache2", "start"]
CMD ["tail", "-f", "/dev/null"]
CMD apachectl -D FOREGROUND