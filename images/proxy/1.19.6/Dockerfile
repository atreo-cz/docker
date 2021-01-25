FROM nginx:1.19.6

RUN apt-get update && apt-get install -y nano

COPY ./nginx.conf /etc/nginx/nginx.conf

WORKDIR /srv/app
