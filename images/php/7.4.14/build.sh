vendor=atreo
image=php
tag=7.4.14

docker rmi --force $vendor/$image:$tag
docker build -t $vendor/$image:$tag . --no-cache
docker push $vendor/$image:$tag
