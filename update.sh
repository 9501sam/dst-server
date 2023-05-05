#!bin/sh
systemctl stop dst
systemctl stop dst-caves

 cd /home/dst
 sleep 10
./steamcmd.sh +force_install_dir /home/dst/server_dst +login anonymous +app_update 343050 validate +quit

systemctl start dst
systemctl start dst-caves
