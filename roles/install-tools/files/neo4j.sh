#!/bin/bash
## removing neo4j from the apt source list
sudo rm -rf /etc/apt/sources.list.d/neo4j.list &&
## adding neo4j to the apt source list
wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add - && 
sudo echo 'deb https://debian.neo4j.com stable 4.4' | sudo tee -a /etc/apt/sources.list.d/neo4j.list && 
sudo apt update -y && 
sudo apt upgrade -y &&
sudo apt-get install neo4j=1:4.4.20 -y &&
sleep 5 ;
