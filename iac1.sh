#!/bin/bash

echo "Criando diretório..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usuários..."

groupadd GRP_adm
groupadd GRP_ven
groupadd GRP_sec

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_adm
useradd maria -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_adm
useradd joao -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_adm


useradd debora -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ven
useradd sebastiao -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ven
useradd roberto -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ven


useradd daniel -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_sec
useradd amanda -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_sec
useradd janclei -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_sec

echo "Especificando permissôes dos diretórios..."

chown root:GRP_adm /adm
chown root:GRP_ven /ven
chown root:GRP_sec /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM..."
# Linux-projeto1-iac
# Linux-projeto1-iac
# Linux-projeto1-iac
# Linux-projeto1-iac
# Linux-projeto1-iac
# Linux-projeto1-iac
# Linux-projeto1-iac
# Linux-projeto1-iac
