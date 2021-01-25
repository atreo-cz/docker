vendor=atreo
image=node
tag=15.5.1

docker rmi --force $vendor/$image:$tag
docker build -t $vendor/$image:$tag . --no-cache
docker push $vendor/$image:$tag
