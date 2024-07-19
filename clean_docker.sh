#!/bin/bash

# Detener todos los contenedores en ejecución
docker stop $(docker ps -aq)

# Eliminar todos los contenedores
docker rm $(docker ps -aq)

# Eliminar todas las imágenes
docker rmi $(docker images -q)

# Eliminar volúmenes no utilizados
docker volume prune -f

# Eliminar redes no utilizadas
docker network prune -f

echo "All containers, images, volumes, and networks have been removed."