#!/bin/bash

echo "atualizando repositorios"

apt update

echo "atualizando s.o."

apt upgrade -y 

echo "Instalando DOCKER"

sudo apt install -y aufs-tools
curl -sSL get.docker.com | sudo sh

echo "subindo conteiner"

docker run -d -p 80:80 nginx

echo "configurando o boot"

cp /vagrant/docker-nginx.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable docker-nginx.service
systemctl start docker-nginx.service

echo "boa cabelo"
