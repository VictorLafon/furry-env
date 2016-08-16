#!/usr/bin/bash
echo "$(tput setaf 2)1.Start docker-machine$(tput sgr0)"
docker-machine start furry
docker-machine env furry
echo ''
echo "$(tput setaf 2)2.Config docker machine env :$(tput setaf 3) $(docker-machine ip default)$(tput sgr0)"
eval $(docker-machine env furry)
echo ''
echo "$(tput setaf 2)2.1 Create the folder for the mount$(tput sgr0)"
docker-machine ssh furry mkdir $(docker-machine ssh furry pwd)/app
docker-machine ssh furry sudo mount -t vboxsf app /home/docker/app
# echo ''
# echo "$(tput setaf 2)3.Start docker compose$(tput sgr0)"
# docker-compose up -d
# echo ''
# echo "$(tput setaf 2)4.Copy app folder to the docker-machine so it can be linked to the containers$(tput sgr0)"
# docker-machine ssh furry mkdir $(docker-machine ssh magisystem pwd)/app
# ssh-keygen -R $(docker-machine ip magisystem)
# rsync -avzhe ssh --relative --omit-dir-times --progress app/ docker@$(docker-machine ip magisystem):$(docker-machine ssh default pwd)
