## Available images
- atreo/adminer:4.7.8
- atreo/mysql:8.0.22
- atreo/nginx:1.19.6
- atreo/php:7.4.14
- atreo/php:8.0.1
- atreo/node:15.5.1

## How to update image
- run `docker login --username=martinpanek87 --password=********`
- run `cd image/image-name/tag; bash build.sh`

## How to download updated image
- run `docker rmi --force atreo/image-name:tag`
- run `docker-sync-stack start`

## How to implement into new project
- install docker for mac https://docs.docker.com/docker-for-mac/install/
- install docker sync http://docker-sync.io
- copy and modify docker-compose.yml
- rename all "-sync" attributes in docker-compose.yml to unique names 
- copy and modify docker-sync.yml
- rename all "-sync" attributes in docker-sync.yml to unique names
- WINDOWS users have to modify www_data_uid and www_data_gid in docker-compose.yml and sync_userid in docker-sync.yml

## How to run project
- run `docker-sync-stact start`
- in another tab run `docker-compose exec node bash` and inside container `npm run start:dev`
- if there are sync problems run `docker-sync-stack clean` and then `docker-sync-stact start` again

## Where to find my application?
- php application: `localhost:8080`
- adminer: `localhost:1111`
- node application: `localhost:4444`
- mysql port: `localhost:3636`
