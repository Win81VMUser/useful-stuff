echo "This will install Qemu Spice ON TERMUX NO LINUX OS!!! 500mb of space will be used!"
wget https://github.com/mjuned47/qemu-termux/releases/download/QEMU-4.2/liborc-0.4.32_aarch64.deb
wget https://github.com/mjuned47/qemu-termux/releases/download/QEMU-4.2/libspice-server-0.14.91_aarch64.deb
wget https://github.com/mjuned47/qemu-termux/releases/download/QEMU-4.2/qemu-system-aarch64-4.2.1_aarch64.deb
wget https://github.com/mjuned47/qemu-termux/releases/download/QEMU-4.2/qemu-system-ppc64_aarch64.deb
wget https://github.com/mjuned47/qemu-termux/releases/download/QEMU-4.2/qemu-system-riscv64_aarch64.deb
wget https://github.com/mjuned47/qemu-termux/releases/download/QEMU-4.2/qemu-system-sparc64_aarch64.deb
wget https://github.com/mjuned47/qemu-termux/releases/download/QEMU-4.2/qemu-system-x86-64-4.2_aarch64.deb
apt update && apt upgrade
echo "Installing qemu..."
dpkg -i *
dpkg --configure -a
apt --fix-broken install
apt install liblz4
echo "Done! Now download aSpice app and have fun! Starting test command..."
echo "Press ctrl-c to exit!"
qemu-system-x86_64 -spice port=5900,addr=127.0.0.1,disable-ticketing $@ -monitor stdio
echo "Spice is installed! Have fun!"
