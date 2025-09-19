#!/bin/sh
docker run \
    -it --rm --name certbot_script \
    -v "letsencrypt_data:/etc/letsencrypt" \
    certbot/certbot certonly --agree-tos --webroot -w /etc/letsencrypt/ \
        -m yoshi@chubachi.net -d km.co-creation.info --dry-run
