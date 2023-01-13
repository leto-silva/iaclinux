#!/bin/bash

echo "criando grupos"

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

echo "criando diretórios"

mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publico

echo "mudando grupos de diretórios"

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "criando usuários e permissões"

useradd -m -s /bin/bash -p $(openssl passwd -crypt leto1808) carlos 
useradd -m -s /bin/bash -p $(openssl passwd -crypt leto1808) maria 
useradd -m -s /bin/bash -p $(openssl passwd -crypt leto1808) joao

usermod -a -G GRP_ADM carlos
usermod -a -G GRP_ADM maria
usermod -a -G GRP_ADM joao

useradd -m -s /bin/bash -p $(openssl passwd -crypt leto1808) debora
useradd -m -s /bin/bash -p $(openssl passwd -crypt leto1808) sebastiana
useradd -m -s /bin/bash -p $(openssl passwd -crypt leto1808) roberto

usermod -a -G GRP_VEN debora
usermod -a -G GRP_VEN sebastiana
usermod -a -G GRP_VEN roberto

useradd -m -s /bin/bash -p $(openssl passwd -crypt leto1808) josefina
useradd -m -s /bin/bash -p $(openssl passwd -crypt leto1808) amanda
useradd -m -s /bin/bash -p $(openssl passwd -crypt leto1808) rogerio

usermod -a -G GRP_SEC josefina
usermod -a -G GRP_SEC amanda
usermod -a -G GRP_SEC rogerio


echo "configurando permissões dos diretórios"

chmod 777 /publico/

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/







