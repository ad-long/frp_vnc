mkdir /usr/sbin/frp && cp -f ./frps /usr/sbin/frp
mkdir /etc/frp && cp -f ./frps.ini /etc/frp
cp frps.service /etc/systemd/system
systemctl daemon-reload
systemctl enable frps.service
systemctl start frps.service