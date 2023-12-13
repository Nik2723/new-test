FROM nik7894/testingimages01:customubuntu 
# File Author / Maintainer
MAINTAINER nikhil
RUN apt update
RUN apt install apache2 -y
COPY index.html  /var/www/html/
EXPOSE 9000
ENTRYPOINT apachectl -D FOREGROUND

