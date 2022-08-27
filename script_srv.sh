#! /bin/bash

echo "Criando as pastas..."

mkdir "/Public"
mkdir "/adm"
mkdir "/ven"
mkdir "/sec"

echo "Criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios..."

useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

echo "Definindo permissões das pastas..."

chown root:root /Public
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /Public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim!"
