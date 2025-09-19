#!/bin/sh
docker run \
    -it --rm --name certbot_script \
    -v "letsencrypt_data:/etc/letsencrypt" \
    certbot/certbot renew  --webroot -w /etc/letsencrypt/ --dry-run
