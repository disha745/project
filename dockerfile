FROM ubuntu:18.04
RUN apt-get update
RUN DEBIAN_FRONTEND="non interactive" apt-get install tzdata -y
RUN apt-get install apache2 --y
COPY index.html /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND


