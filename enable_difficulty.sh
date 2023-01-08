#!/bin/sh
DIFFICULTY=$1
cd /root/minecraft
cp server.${DIFFICULTY}.properties server.properties
screen -r -X stuff '/stop\n'
sleep 10
screen -d -m -S mcs java -Xmx3072M -Xms3072M -jar server.jar nogui
