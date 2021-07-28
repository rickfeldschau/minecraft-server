#!/bin/sh
cd /home/minecraft
cp difficulty_scripts/server.normal.properties server.properties
screen -r -X stuff '/stop\n'
sleep 10
screen -d -m -S mcs java -Xmx1024M -Xms1024M -jar server.jar nogui
