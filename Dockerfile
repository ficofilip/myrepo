FROM ficofilip/webserver_php:zadatak1 

EXPOSE 80
CMD apache2ctl -D FOREGROUND

