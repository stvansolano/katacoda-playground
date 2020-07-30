Docker 101 + .NET (Core)

## 1. Run single Containers

- Pull an image (Docker Hub Registry)

`docker pull nginx:latest`{{execute}}

- Run a container **host:container**
`docker run -d --rm  -p 7000:80 --name=web_server nginx`{{execute}}

- List containers
`docker ps`{{execute}}

## 2. Check images

### NGINX
https://[[HOST_SUBDOMAIN]]-7000-[[KATACODA_HOST]].environments.katacoda.com/

### WebApp (.NET Core)
https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com/

### WebApi (.NET Core)
https://[[HOST_SUBDOMAIN]]-8081-[[KATACODA_HOST]].environments.katacoda.com/products

### Play With Docker
https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/

### Other commands & resources
- SQL Server on Linux (unaccessible externally, port 1433)

- VS Code server
`docker run -d -it -p 3000:8080 -v "$PWD:/home/coder/project" -u "$(id -u):$(id -g)" codercom/code-server:latest`{{execute}}
- https://github.com/cdr/code-server

- Attach shell/bash to existing container
`docker exec -it <CONTAINER> /bin/sh -c "[ -e /bin/bash ] && /bin/bash || /bin/sh"`{{execute}}

### Docker documentation
- https://docs.docker.com/compose/reference/up/