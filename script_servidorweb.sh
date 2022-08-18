
#!/bin/bash

echo "Atualizando sistema"

apt update
apt upgrade -y

echo "Instalando pacote: apache2"

apt install apache2 -y

echo "Instalando pacote: unzip"

apt install unzip -y

echo "Baixando aplicação"

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando aplicação"

unzip /tmp/main.zip -d /tmp/

echo "Copiando aplicação"

cp /tmp/linux-site-dio-main/* /var/www/html/ -r
