FROM ubuntu:18.04 
RUN apt update && apt install apache2 -y && apt install curl -y 
HEALTHCHECK  CMD curl -f http://localhost/ || exit 1
VOLUME [ "/var/www/html/" ]
EXPOSE 80 
CMD ["apache2ctl", "-D",  "FOREGROUND" ]