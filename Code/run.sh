# created by Joannier Pinales
if [ -z $(docker ps -a -q -f name=cryptdb_v1) ]
then
    docker run --name cryptdb_v1 --volume $(pwd)/docker-setup/data:/opt/cryptdb/data/ -d -e MYSQL_ROOT_PASSWORD='letmein' cryptdb:v1 --priviled=true
else
    docker start cryptdb_v1
fi

sleep 1

docker exec -it cryptdb_v1 bash

docker stop cryptdb_v1