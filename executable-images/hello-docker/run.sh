docker container run \
    --rm \
    --detach \
    --publish 3000:3000 \
    --name hd \
    --volume $(pwd)/hello-dock:/home/node/app \
    --volume /home/node/app/node_modules \
    hello-docker