#!/bin/bash

echo "Atualizando o servidor..."

apt-get update 

apt-get upgrade 

echo "Instalando o Apache..."

apt-get install apache2 -y

echo "Instalando o unzip..."

apt-get install unzip -y

echo "Abrindo diretorio tmp..."

cd /tmp

echo "Baixando a aplicação..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando pasta baixada ..."

unzip  main.zip

echo "Mudando para a pasta baixada..."

cd linux-site-dio

echo "Copiando pasta para o diretorio do Apache"

cp -R * /var/www/html/







