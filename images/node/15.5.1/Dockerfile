FROM node:15.5.1-buster-slim

RUN apt-get update && apt-get install -y nano && apt-get clean;

WORKDIR /srv/app
ENTRYPOINT ["tail", "-f", "/dev/null"]
EXPOSE 4444
