#!/bin/ash

cd /home/container;

if [[ ! -f Lavalink.jar ]]; then
	curl -L -o Lavalink.jar https://github.com/freyacodes/Lavalink/releases/download/3.6.2/Lavalink.jar
fi;

if [[ ! -f application.yml ]]; then
	curl -L -o application.yml https://raw.githubusercontent.com/freyacodes/Lavalink/master/LavalinkServer/application.yml.example
fi;

if [[ $(md5sum Lavalink.jar) =~ 87a0b32723282d074081daac41877f59 ]]; then
	echo Approved;
	java -jar Lavalink.jar
else
	echo This egg is for Lavalink only, we've detected you've attempted to replace the JAR file.;
	echo Downloading Lavalink 3.6.2
	
	curl -L -o Lavalink.jar https://github.com/freyacodes/Lavalink/releases/download/3.6.2/Lavalink.jar
	java -jar Lavalink.jar
fi
