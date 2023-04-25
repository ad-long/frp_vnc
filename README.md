# what for
this is for acceccing your computer in anyway
- client is your target computer
- server is public ip computer

notes: all computer  os is debain/ubuntu

## install server
``` shell
sudo bash install_server.sh
```

## install client
1. change your public ip computer address
``` shell
nano frpc.ini
```
``` ini
[common]
server_addr = x.x.x.x
```

2. change your vnc password
``` shell
nano x11vnc.service
```
``` ini
[Service]
Type=simple
ExecStart=/usr/bin/x11vnc -ncache 10 -forever -display :0 -auth guess -passwd yourPassword
```

3. install
``` shell
sudo bash install_client.sh
```
## close suspend
``` shell
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
systemctl status sleep.target
```
