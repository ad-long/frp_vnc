mkdir /usr/sbin/frp && cp -f ./frpc /usr/sbin/frp
mkdir /etc/frp && cp -f ./frpc.ini /etc/frp
cp -f frpc.service /etc/systemd/system
systemctl daemon-reload
systemctl enable frpc.service
systemctl start frpc.service

apt install -y lightdm
apt install -y x11vnc
cp -f x11vnc.service /lib/systemd/system
systemctl daemon-reload
systemctl enable x11vnc.service
systemctl start x11vnc.service
