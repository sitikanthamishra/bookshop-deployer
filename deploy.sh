#!/bin/bash



echo "Provided bookstore-ui sha:"

read BOOKSTORE_UI_SHA

echo "Provided bookstore-api sha:"

read BOOKSTORE_API_SHA
# shellcheck disable=SC1073
echo "Provided bookstore-ui sha is $BOOKSTORE_UI_SHA and bookstore-api sha is $BOOKSTORE_API_SHA"

echo "Removing Running Containers"
docker stop $(docker ps -aq)


echo "Runnning Docker compose"
docker-compose up -d

