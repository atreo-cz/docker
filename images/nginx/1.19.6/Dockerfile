FROM nginx:1.19.6

RUN apt-get update && apt-get install -y nano && apt-get clean;

COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/nginx.conf

WORKDIR /srv/app
