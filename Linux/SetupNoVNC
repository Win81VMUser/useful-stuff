echo "Starting commands..."
lsb_release -a ; hostname -I; hostname ; getconf LONG_BIT
echo "Installing packages needed for NoVNC(without DE)"
apt-get install vnc4server novnc websockify python-numpy -y
vncserver
vncserver -kill :1
mv ~/.vnc/xstartup ~/.vnc/xstartup.bak
chmod +x ~/.vnc/xstartup
vncserver
cd /etc/ssl ; openssl req -x509 -nodes -newkey rsa:2048 -keyout novnc.pem -out novnc.pem -days 365
chmod 644 novnc.pem
websockify -D --web=/usr/share/novnc/ --cert=/etc/ssl/novnc.pem 6080 localhost:5901
echo "NoVNC is ready! Now go to https://localhost:6080/vnc_auto.html to connect!"
