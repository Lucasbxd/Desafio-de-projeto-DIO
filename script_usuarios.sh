#!/bin/bash

echo "Criando diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários"

useradd carlos -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd maria -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd joao -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM


useradd debora -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd roberto -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN


useradd josefina -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd amanda -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

echo "Resetando senha dos usuários"

passwd -e carlos
passwd -e maria
passwd -e joao

passwd -e debora
passwd -e sebastiana
passwd -e roberto

passwd -e josefina
passwd -e amanda
passwd -e rogerio

echo "Atribuindo permissões"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
