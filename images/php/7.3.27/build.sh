vendor=atreo
image=php
tag=7.3.27-fpm-buster-slim

docker rmi --force $vendor/$image:$tag-arm64v8
docker rmi --force $vendor/$image:$tag-amd64

docker buildx build --push --platform linux/arm64/v8 --tag $vendor/$image:$tag-arm64v8 .
docker buildx build --push --platform linux/amd64 --tag $vendor/$image:$tag-amd64 .
