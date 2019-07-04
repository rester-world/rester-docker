#!/bin/bash

if [ -z "$WEBROOT" ] || [ -z "$EMAIL" ] || [ -z "$DOMAIN" ] || [ ! -f "/etc/nginx/sites-available/default-ssl.conf" ]; then
 echo "You need the \$EMAIL and the \$DOMAIN variables and default-ssl.conf file"
else
 if [ ! -d "/etc/letsencrypt/live" ]; then
    mkdir /etc/letsencrypt/live
 fi

 if [ ! -d  "/etc/letsencrypt/live/$DOMAIN" ]; then
    certbot certonly --webroot -w $WEBROOT -d $DOMAIN --email $EMAIL --agree-tos --quiet
 fi

 if [ ! -f "/etc/letsencrypt/live/privkey.pem" ]; then
    ln -s /etc/letsencrypt/live/$DOMAIN/privkey.pem /etc/letsencrypt/live/
 fi

 if [ ! -f "/etc/letsencrypt/live/fullchain.pem" ]; then
    ln -s /etc/letsencrypt/live/$DOMAIN/fullchain.pem /etc/letsencrypt/live/
 fi

 if [ ! -f "/etc/nginx/sites-enabled/default-ssl.conf" ]; then
    ln -s /etc/nginx/sites-available/default-ssl.conf /etc/nginx/sites-enabled/
 fi

 nginx -s reload
fi
