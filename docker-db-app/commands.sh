docker ps --all | grep Exited | awk '{print $1}' | xargs docker rm -f
docker build -t db-app .
docker run --name DB --rm --mount type=volume,src=volume-db,target=/var/lib/postgresql/data -e POSTGRES_PASSWORD=admin -d db-app
#docker run --name DB -e POSTGRES_PASSWORD=admin -d db-app -e PGDATA=/var/lib/postgresql/data/pgdata
