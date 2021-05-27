vendor=atreo
image=node
tag=15.5.1-buster-slim

docker rmi --force $vendor/$image:$tag-arm64v8
docker rmi --force $vendor/$image:$tag-amd64

docker buildx build --push --platform linux/arm64/v8 --tag $vendor/$image:$tag-arm64v8 .
docker buildx build --push --platform linux/amd64 --tag $vendor/$image:$tag-amd64 .

manifest-tool --debug push from-spec manifest.yaml
