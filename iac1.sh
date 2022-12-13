#! /bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -c "Carlos" -s /bin/bash -G GRP_ADM -p $(openssl passwd Senha123)
useradd maria -m -c "Maria" -s /bin/bash -G GRP_ADM -p $(openssl passwd Senha123)
useradd joao -m -c "Joao" -s /bin/bash -G GRP_ADM -p $(openssl passwd Senha123)

useradd debora -m -c "Debora" -s /bin/bash -G GRP_VEN -p $(openssl passwd Senha123)
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -G GRP_VEN -p $(openssl passwd Senha123)
useradd roberto -m -c "Roberto" -s /bin/bash -G GRP_VEN -p $(openssl passwd Senha123)

useradd josefina -m -c "Josefina" -s /bin/bash -G GRP_SEC -p $(openssl passwd Senha123)
useradd amanda -m -c "Amanda" -s /bin/bash -G GRP_SEC -p $(openssl passwd Senha123)
useradd rogerio -m -c "Rogerio" -s /bin/bash -G GRP_SEC -p $(openssl passwd Senha123)

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim do procedimento."
