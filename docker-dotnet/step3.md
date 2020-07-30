# Docker 101 + .NET (Core) + SQL Server (Linux)

## 1. Attach & run

- docker exec -it <DOCKER_CONTAINER> /bin/sh -c "[ -e /bin/bash ] && /bin/bash || /bin/sh"

## 2. Build a Docker+SQL Server image (locally)

- Go to source files
`cd ~/lab/docker-dotnet/assets/docker/mssql-server-linux/adventure-works`{{execute}}

- Docker build image
`docker build --rm -t adventure-works:latest .`{{execute}}

- List local images (download & build)
`docker image list`{{execute}}

- Run an instance (stop others)
`docker run -e 'ACCEPT_EULA=Y' -e 'SA_Password=Password.123' -p 1433:1433 --name=sql1 -d adventure-works:latest`{{execute}}

Alternatively, from existing image:
`docker run -e 'ACCEPT_EULA=Y' -e 'SA_Password=Password.123' -p 1433:1433 --name=sql1 -d stvansolano/adventure-works-sql-server:latest`{{execute}}

- List containers
`docker ps`{{execute}}

- Check logs of CONTAINER
`docker logs -f <CONTAINER>`{{execute}}

> **Connection string:** data source=localhost;initial catalog=Adventureworks;persist security info=True;user id=sa;password=Password.123;MultipleActiveResultSets=True;

## 2. Run your SQL scripts!

- Attach to existing instance (<CONTAINER> id)
`docker exec -it <CONTAINER> /bin/sh -c "[ -e /bin/bash ] && /bin/bash || /bin/sh"`{{execute}}

- Export PATH
`export PATH="$PATH:/opt/mssql-tools/bin`{{execute}}

- SQLCMD
`sqlcmd -S localhost -U SA -P Password.123`{{execute}}

`select getdate();`{{execute}}
`GO`{{execute}}

## References
- https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup-tools?view=sql-server-2017
