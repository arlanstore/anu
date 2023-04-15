#!/bin/bash

read -p "Menambah Domain : " domainbaru

#Validate
if [[ $domainbaru == "" ]]; then
echo "Silakan Masukan Domain Anda"
exit 1
fi

#Input To Domain
cat > /etc/v2ray/domain << END
$domainbaru
END

clear 
echo "Sukses Menambahkan Domain"
