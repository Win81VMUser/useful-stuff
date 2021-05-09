echo "This will install Qemu Spice ON TERMUX NO LINUX OS!!! 500mb of space will be used!"
wget https://github.com/mjuned47/qemu-termux/raw/master/qemu-system-spice_arm64.deb
wget https://github.com/mjuned47/qemu-termux/raw/master/libspice-server_arm64.deb
wget https://github.com/mjuned47/qemu-termux/raw/master/liborc_arm64.deb
apt update && apt upgrade
echo "Installing qemu..."
dpkg -i libspice-server_arm64.deb
dpkg -i liborc_arm64.deb
dpkg -i qemu-system-spice_arm64.deb
dpkg --configure -a
apt --fix-broken install
apt install liblz4
echo "Done! Now download aSpice app and have fun! Starting test command..."
echo "Press ctrl-c to exit!"
qemu-system-x86_64 -spice port=5900,addr=127.0.0.1,disable-ticketing $@ -monitor stdio
echo "Spice is installed! Have fun!"
