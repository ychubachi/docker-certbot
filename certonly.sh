#!/bin/sh
docker run -it --rm --name certbot -v "./nginx/html/:/var/www/html" -v "./nginx/letsencrypt:/etc/letsencrypt" certbot/certbot certonly --agree-tos -m yoshi@chubachi.net -d km.co-creation.info --webroot -w /var/www/html/ --dry-run
