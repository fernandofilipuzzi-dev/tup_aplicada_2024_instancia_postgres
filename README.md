# tup_aplicada_2024_instancia_postgres

```csharp
docker build -t postgres .
docker run -d -p 8080:8080 postgres
```


docker run -d \
    -e POSTGRES_USER=miusuario \
    -e POSTGRES_PASSWORD=miclave \
    -e POSTGRES_DB=midatabase \
    -p 8080:5432 \
    postgres


docker run -d -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -e POSTGRES_DB=postgres:v1.1  -p 8080:5432 postgres

docker run -d -p 5432:5432 postgres:v1.1

 psql -h localhost -U postgres -d envios


 docker exec -it tender_clarke bash
 docker restart tender_clarke 


 psql -h humble-zebra-g454r5xjgr7qhvj9-5432.app.github.dev -U postgres -d envios


 https://humble-zebra-g454r5xjgr7qhvj9-5432.app.github.dev/


curl ifconfig.me
sudo ufw status
 sudo ufw allow 5432/tcp
 sudo ufw disable
 sudo systemctl stop firewalld  