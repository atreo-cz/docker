vendor=atreo
image=adminer
tag=4.7.8

docker rmi --force $vendor/$image:$tag
docker build -t $vendor/$image:$tag . --no-cache
docker push $vendor/$image:$tag
