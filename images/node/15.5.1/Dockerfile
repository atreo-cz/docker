FROM node:15.5.1-buster-slim

RUN apt-get update && apt-get install -y python python-dev python-pip && apt-get clean;

# Global node-sass
RUN npm install --unsafe-perm -g node-sass

WORKDIR /srv/app
ENTRYPOINT ["tail", "-f", "/dev/null"]
EXPOSE 4444
