# Docker commands
* List down images  - docker images
* List Active Containers - docker ps
* List Active and Inactive Containers - docker ps -a
* Docker Build - docker build -t image_name:tag . (. specify the Dockerfile path)
* Docker run - docker run -d --name container_name -p8080:8080 image_name:tag
* Docker stop - docker stop container_id
* Docker remove container - docker rm container_id
* Docker remove image - docker image rm image_id
* Docker volume - docker volume ls
* Docker network - docker network ls
