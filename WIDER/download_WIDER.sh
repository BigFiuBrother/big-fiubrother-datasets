#! /bin/bash

rm -f ./cookies.txt
touch ./cookies.txt
if [ ! -e "WIDER_val.zip" ]
then
	wget --load-cookies ./cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies ./cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=0B6eKvaijfFUDd3dIRmpvSk8tLUk' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=0B6eKvaijfFUDd3dIRmpvSk8tLUk" -O WIDER_val.zip && rm -rf ./cookies.txt
	unzip WIDER_val.zip
fi
mv WIDER_val/images raw
rmdir WIDER_val
