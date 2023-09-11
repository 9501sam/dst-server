### 安裝必要套件
```sh
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install lib32gcc-s1    # If running a 64bit OS
```

```sh
sudo apt-get install lib32stdc++6 # If running a 64bit OS
sudo apt-get install libcurl4-gnutls-dev:i386
```

### 建立`dst`使用者
```sh
adduser dst # 之後全部選項都按 enter
su - dst
```

### 下載steamcmd

```sh
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
mkdir server_dst
```

```sh
./steamcmd.sh
```

### 使用`steamcmd`下載`dst_server`

```sh
Steam> force_install_dir /home/dst/server_dst
Steam> login anonymous
Steam> app_update 343050 validate
Steam> quit
```

### 使用`dontstarve_dedicated_server_nullrenderer`執行檔案打開`MyDediServer`資料夾的世界

```sh
cd /home/dst/server_dst/bin
echo " ./dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Master" > start_overworld.sh
echo "./dontstarve_dedicated_server_nullrenderer -console -cluster MyDediServer -shard Caves" > start_caves.sh
```

### 先跑一次

```sh
sh start_overworld.sh
```

### 在本機建立世界以後，移動到`/home/dst/.klei/DoNotStarveTogether/MyDediServer`

`cluster_token.txt`要放在`MyDediServer`底下  


```bash
MyDediServer/
├── cluster.ini
├── cluster_token.txt
└── Master
    ├── backup
    │   ├── server_chat_log
    │   │   ├── server_chat_log_2023-09-10-18-23-18.txt
    │   │   ├── server_chat_log_2023-09-10-18-26-32.txt
    │   │   └── server_chat_log_2023-09-10-18-33-07.txt
    │   └── server_log
    │       ├── server_log_2023-09-10-18-23-17.txt
    │       ├── server_log_2023-09-10-18-26-32.txt
    │       └── server_log_2023-09-10-18-33-07.txt
    ├── leveldataoverride.lua
    ├── modoverrides.lua
    ├── save
    │   ├── boot_modindex
    │   ├── cached_userid
    │   ├── client_temp
    │   ├── event_match_stats
    │   ├── mod_config_data
    │   ├── modindex
    │   ├── profile
    │   ├── server_temp
    │   │   └── server_save
    │   ├── session
    │   │   ├── 13D01453AA1BE69A
    │   │   │   ├── 0000000002
    │   │   │   ├── 0000000002.meta
    │   │   │   ├── 0000000003
    │   │   │   ├── 0000000003.meta
    │   │   │   └── A7HC9N7485LM
    │   │   │       ├── 0000000004
    │   │   │       └── 0000000004.meta
    │   │   └── 1CA601BDE6633852
    │   │       ├── 0000000166
    │   │       ├── 0000000166.meta
    │   │       ├── 0000000167
    │   │       ├── 0000000167.meta
    │   │       ├── 0000000168
    │   │       ├── 0000000168.meta
    │   │       ├── 0000000169
    │   │       ├── 0000000169.meta
    │   │       ├── 0000000170
    │   │       ├── 0000000170.meta
    │   │       ├── 0000000171
    │   │       ├── 0000000171.meta
    │   │       ├── A7HC9N7485LM
    │   │       │   ├── 0000000166
    │   │       │   ├── 0000000166.meta
    │   │       │   ├── 0000000167
    │   │       │   ├── 0000000167.meta
    │   │       │   ├── 0000000168
    │   │       │   ├── 0000000168.meta
    │   │       │   ├── 0000000169
    │   │       │   ├── 0000000169.meta
    │   │       │   ├── 0000000170
    │   │       │   ├── 0000000170.meta
    │   │       │   ├── 0000000171
    │   │       │   └── 0000000171.meta
    │   │       ├── A7IMAN8AGANJ
    │   │       │   ├── 0000000166
    │   │       │   ├── 0000000166.meta
    │   │       │   ├── 0000000167
    │   │       │   ├── 0000000167.meta
    │   │       │   ├── 0000000168
    │   │       │   ├── 0000000168.meta
    │   │       │   ├── 0000000169
    │   │       │   ├── 0000000169.meta
    │   │       │   ├── 0000000170
    │   │       │   ├── 0000000170.meta
    │   │       │   ├── 0000000171
    │   │       │   └── 0000000171.meta
    │   │       ├── A7JMCD0JH1LG
    │   │       │   ├── 0000000166
    │   │       │   ├── 0000000166.meta
    │   │       │   ├── 0000000167
    │   │       │   ├── 0000000167.meta
    │   │       │   ├── 0000000168
    │   │       │   ├── 0000000168.meta
    │   │       │   ├── 0000000169
    │   │       │   ├── 0000000169.meta
    │   │       │   ├── 0000000170
    │   │       │   ├── 0000000170.meta
    │   │       │   ├── 0000000171
    │   │       │   └── 0000000171.meta
    │   │       └── A7LK9AEP35CF
    │   │           ├── 0000000164
    │   │           └── 0000000164.meta
    │   ├── shardindex
    │   ├── shardindex_time
    │   └── world_presets
    ├── server_chat_log.txt
    ├── server.ini
    └── server_log.txt
```


### 進入`/home/dst/server_dst/bin`跑shell

```sh
sh start_overworld.sh
```


---


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
 