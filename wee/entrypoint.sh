#!/bin/bash
cd /home/container

# Make internal Docker IP address available to processes.
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

npm i ${DBD_THEME}@latest discord-dashboard@${DBD_VERSION} discord.js@${DISCORD_VERSION} mongoose knex;
if [ ! -f index.js ]; then
    echo -e "Downloading index.js";
    curl -o index.js https://mydbd.xyz/assets/js/${DBD_THEME}.js;
fi;

sed -i "s/{THEME}/${DBD_THEME}/g" index.js;
sed -i "s/{TOKEN}/${DISCORD_TOKEN}/g" index.js;
sed -i "s/{DBD_LICENSE}/${DBD_LICENSE}/g" index.js;
sed -i "s/{PORT}/${SERVER_PORT}/g" index.js;
sed -i "s/{CLIENT_ID}/${CLIENT_ID}/g" index.js;
sed -i "s/{CLIENT_SECRET}/${CLIENT_SECRET}/g" index.js;

echo -e "Free discord-dashboard hosting - mydbd.xyz";
/usr/local/bin/node /home/container/index.js
