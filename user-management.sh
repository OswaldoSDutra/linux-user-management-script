#!/bin/bash

cd /

echo "Removendo diretórios"
rm -Rf /publico
rm -Rf /adm
rm -Rf /ven
rm -Rf /sec

echo "Exibindo conteúdo atual:"
ls

echo "Removendo usuarios"
userdel -r carlos
userdel -r maria
userdel -r joao

userdel -r debora
userdel -r sebastiana
userdel -r roberto

userdel -r josefina
userdel -r amanda
userdel -r rogerio

echo "Removendo grupos"
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Adicionando diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Exibindo conteúdo atual:"
ls

echo "Adicionando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Exibindo grupos:"
cat /etc/group

echo "Adicionando usuários"
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "Exibindo usuarios:"
cat /etc/passwd

echo "Atribuindo dono "
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Atribuindo permissoes"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec 
chmod 777 /publico

echo "Exibindo diretórios"
ls -l

echo "Todoas as instruções foram executadas"



