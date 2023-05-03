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
adduser dst2 # 之後全部選項都按 enter
su - dst2
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
Steam> force_install_dir /home/dst2/server_dst
Steam> login anonymous
Steam> app_update 343050 validate
Steam> quit
```
```sh
cd /home/dst2/server_dst/bin
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
echo <token> /home/dst2/.klei/DoNotStarveTogether/MyDediServer/cluster_token.txt
```

```sh
cd /home/dst2/
git clone https://github.com/9501sam/dst-server
cd /home/dst2/dst-server

cp master-worldgenoverride.lua /home/dst2/.klei/DoNotStarveTogether/MyDediServer/Master/worldgenoverride.lua
cp caves-worldgenoverride.lua /home/dst2/.klei/DoNotStarveTogether/MyDediServer/Caves/worldgenoverride.lua
cp modoverrides.lua /home/dst2/.klei/DoNotStarveTogether/MyDediServer/Master/modoverrides.lua
cp modoverrides.lua /home/dst2/.klei/DoNotStarveTogether/MyDediServer/Caves/modoverrides.lua
cp cluster.ini /home/dst2/.klei/DoNotStarveTogether/MyDediServer/cluster.ini
cp master-server.ini /home/dst2/.klei/DoNotStarveTogether/MyDediServer/Master/server.ini
cp caves-server.ini /home/dst2/.klei/DoNotStarveTogether/MyDediServer/Caves/server.ini
```

### services
```sh
exit # 使用者從 dst 回到 root
cp /home/dst2/dst-server/dst.service /etc/systemd/system/dst2.service
cp /home/dst2/dst-server/dst-caves.service /etc/systemd/system/dst2-caves.service
```

```sh
systemctl start dst2
systemctl start dst2-caves
```

```sh
systemctl restart dst2
systemctl restart dst2-caves
```

```sh
systemctl status dst2
systemctl status dst2-caves
```

```sh
systemctl stop dst2
systemctl stop dst2-caves
```

```sh
systemctl daemon-reload
```

## reference
* [linode promote](https://www.youtube.com/watch?v=e-Ymi3W_qc4)
* [How to setup dedicated server with cave on Linux](https://steamcommunity.com/sharedfiles/filedetails/?id=590565473)
