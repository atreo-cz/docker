## How to push images
- docker login --username=martinpanek87 --password=********
- cd image/mysql/8.0.22; bash build.sh

## How to implement into new project
- install docker for mac https://docs.docker.com/docker-for-mac/install/
- install docker sync http://docker-sync.io
- copy and modify docker-compose.yml
- rename all "-sync" attributes in docker-compose.yml to unique names 
- copy and modify docker-sync.yml
- rename all "-sync" attributes in docker-sync.yml to unique names
- WINDOWS users have to modify www_data_uid and www_data_gid in docker-compose.yml and sync_userid in docker-sync.yml
- run docker-sync-stact start
- in another tab run docker-compose exec node bash and type npm run start:dev
- if there are sync problems run docker-sync-stack clean and then docker-sync-stact start again
