vendor=atreo
image=nginx
tag=1.19.6

docker rmi --force $vendor/$image:$tag
docker build -t $vendor/$image:$tag . --no-cache
docker push $vendor/$image:$tag
