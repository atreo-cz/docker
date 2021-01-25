vendor=atreo
image=mysql
tag=8.0.22

docker rmi --force $vendor/$image:$tag
docker build -t $vendor/$image:$tag . --no-cache
docker push $vendor/$image:$tag
