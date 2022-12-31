#!/bin/ash

cd /home/container;

if [[ ! -f Lavalink.jar ]]; then
	curl -L -o Lavalink.jar https://github.com/freyacodes/Lavalink/releases/latest/download/Lavalink.jar
fi;

if [[ ! -f application.yml ]]; then
	curl -L -o application.yml https://raw.githubusercontent.com/freyacodes/Lavalink/master/LavalinkServer/application.yml.example
fi;

if [[ $(md5sum Lavalink.jar) =~ 87a0b32723282d074081daac41877f59 ]]; then
	echo Approved;
	java -jar Lavalink.jar
else
	echo Lavalink.jar has been tampered with. Please download version 3.6.2 from GitHub.;
fi
