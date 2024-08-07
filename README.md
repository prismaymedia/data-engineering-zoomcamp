# data-engineering-zoomcamp

```bash
pip install -r requirements.txt
pgcli -h localhost -p 5432 -u root -d ny_taxi
```

```bash
docker run -it \
  -e POSTGRES_USER="root" \
  -e POSTGRES_PASSWORD="root" \
  -e POSTGRES_DB="ny_taxi" \
  -v $(pwd)/ny_taxi_postgres_data:/var/lib/postgresql/data \
  -p 5432:5432 \
  --network=pg-network \
  --name pg-database \
  postgres:13
```

```bash
docker run -it \
  -e PGADMIN_DEFAULT_EMAIL="admin@admin.com" \
  -e PGADMIN_DEFAULT_PASSWORD="root" \
  -p 8080:80 \
  --network=pg-network \
  --name pgadmin-2 \
  dpage/pgadmin4
```

```bash
docker network create pg-network
docker network ls
docker network prune
docker network inspect [name]

docker rm -f $(docker ps -aq)
```

```bash
mkdir data_pgadmin
sudo chown 5050:5050 data_pgadmin
```

chmod +x clean_docker.sh

 docker-compose up --build
