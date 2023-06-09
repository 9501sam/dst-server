```sh
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install lib32gcc1-s1    # If running a 64bit OS
```

```sh
sudo apt-get install lib32stdc++6 # If running a 64bit OS
sudo apt-get install libcurl4-gnutls-dev:i386
```

```sh
adduser dst # 之後全部選項都按 enter
su - dst
```

```sh
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
mkdir server_dst
```

```sh
./steamcmd.sh
```
```sh
Steam> force_install_dir /home/dst/server_dst
Steam> login anonymous
Steam> app_update 343050 validate
Steam> quit
```
```sh
cd /home/dst/server_dst/bin
echo " ./dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Master" > start_overworld.sh
echo "./dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Caves" > start_caves.sh
```

```sh
sh start_overworld.sh
```
when you see in end of log: "Your Server Will Not Start"
press CTRL+C for stop server

```
sh start_caves.sh
```
when you see in end of log: "Your Server Will Not Start"
press CTRL+C for stop server

launch dst > account > 右上角"三"的圖示 > games > game servers(dst) > 
cluster name "turtlegod test 123" > add new server > 取得 token

```sh
vim /home/dst/.klei/DoNotStarveTogether/MyDediServer/cluster_token.txt # 貼上 token
```

```sh
cd /home/dst/
git clone https://github.com/9501sam/dst-server
```

```sh
cd /home/dst/dst-server

cp master-worldgenoverride.lua /home/dst/.klei/DoNotStarveTogether/MyDediServer/Master/worldgenoverride.lua
cp caves-worldgenoverride.lua /home/dst/.klei/DoNotStarveTogether/MyDediServer/Caves/worldgenoverride.lua
cp modoverrides.lua /home/dst/.klei/DoNotStarveTogether/MyDediServer/Master/modoverrides.lua
cp modoverrides.lua /home/dst/.klei/DoNotStarveTogether/MyDediServer/Caves/modoverrides.lua
cp cluster.ini /home/dst/.klei/DoNotStarveTogether/MyDediServer/cluster.ini
cp master-server.ini /home/dst/.klei/DoNotStarveTogether/MyDediServer/Master/server.ini
cp caves-server.ini /home/dst/.klei/DoNotStarveTogether/MyDediServer/Caves/server.ini
```

### services
```sh
exit # 使用者從 dst 回到 root
cp /home/dst/dst-server/dst.service /etc/systemd/system/dst.service
cp /home/dst/dst-server/dst-caves.service /etc/systemd/system/dst-caves.service
```

```sh
systemctl start dst
systemctl start dst-caves
```

```sh
systemctl restart dst
systemctl restart dst-caves
```

```sh
systemctl status dst
systemctl status dst-caves
```

```sh
systemctl stop dst
systemctl stop dst-caves
```

```sh
systemctl daemon-reload
```

### update steamCMD
```sh
./steamcmd.sh +force_install_dir /home/dst/server_dst +login anonymous +app_update 343050 validate +quit
```
#### setting up auto update server every day at 6:00
```sh
cp update.sh /home/dst/server_dst/bin/update.sh
chmod +x /home/dst/server_dst/bin/update.sh
```

```sh
crontab -e
```
then paste
```sh
0 22 * * * sh /home/dst/server_dst/bin/update.sh
```

## reference
* [linode promote](https://www.youtube.com/watch?v=e-Ymi3W_qc4)
* [How to setup dedicated server with cave on Linux](https://steamcommunity.com/sharedfiles/filedetails/?id=590565473)
* [Execute a shell script everyday at specific time](https://stackoverflow.com/questions/34753831/execute-a-shell-script-everyday-at-specific-time)
* [Crockpot Repeater](https://steamcommunity.com/sharedfiles/filedetails/?id=2336105249)
* [Minimap HUD](https://steamcommunity.com/sharedfiles/filedetails/?id=345692228)
* [Insight (Show Me+)](https://steamcommunity.com/sharedfiles/filedetails/?id=2189004162)
* [Gem Core](https://steamcommunity.com/sharedfiles/filedetails/?id=1378549454)
* [Chinese++](https://steamcommunity.com/sharedfiles/filedetails/?id=1418746242)
* [Combined Status (Server-Sided)](https://steamcommunity.com/sharedfiles/filedetails/?id=2885354999)
