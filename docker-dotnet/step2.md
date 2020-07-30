Docker 101 + .NET (Core)

## 1. Run single Containers

- Pull an image (Docker Hub Registry)

`docker pull nginx:alpine`{{execute}}

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

### Others
- SQL SErver on Linux (unaccessible externally, port 1433)