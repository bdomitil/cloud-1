#! /bin/bash

openssl req -x509 -nodes -days 365 -subj "/C=RU/ST=Tatarsatan/L=Kazan/O=bdomitil/OU=21-school/CN=somesite" -newkey rsa:2048 -keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt
rm /etc/nginx/sites-enabled/default
cp ./default /etc/nginx/sites-enabled/default
