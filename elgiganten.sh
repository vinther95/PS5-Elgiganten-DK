#!/bin/bash 
RED='\033[0;31m'
GREEN='\033[0;32m'

cd /home/mathias.sorensen/ps5

wget -O playstation-5-ps5 --no-check-certificate https://www.elgiganten.dk/product/gaming/konsoller/playstation-konsoller/220276/playstation-5-ps5

PS5="$(grep -o 'itemprop="availability" href="https://schema.org/InStock' playstation-5-ps5)"

if [ "$PS5" == "" ]; 
then
	echo -e "${RED}Playstation 5 er ikke på lager i Elgiganten"
else 
	echo -e "${GREEN}Playstation 5 er på lager i Elgiganten"
	echo -e "${GREEN}Sender en mail"
	python3 mailsender.py
fi
