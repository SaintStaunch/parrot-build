#!/bin/bash

wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add - &&

echo 'deb https://debian.neo4j.com stable 4.4' | sudo tee -a /etc/apt/sources.list.d/neo4j.list &&

sudo apt update -y && sudo apt install neo4j=1:4.4.20 -y &&


done ;
