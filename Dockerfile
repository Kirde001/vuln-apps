FROM vulnerables/web-dvwa:latest
RUN sed -i 's/allow_url_include = Off/allow_url_include = On/g' /etc/php/*/apache2/php.ini