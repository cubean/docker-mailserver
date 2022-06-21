#! /bin/bash

# Change `mail.example.com` below to your own FQDN.
# Requires access to port 80 from the internet, adjust your firewall if needed.
docker run --rm -it \
  -v "/docker-data/dms/letsencrypt/:/etc/letsencrypt/" \
  -v "/docker-data/dms/letsencrypt/logs/:/var/log/letsencrypt/" \
  -p 80:80 \
  certbot/certbot certonly --standalone -d mail.woolworlds.com