echo "WARNING YOU NEED PROOT-DISTRO UBUNTU TO MAKE IT WORKING! IF YOU DON'T HAVE IT PLEASE USE INSTALLER FROM github.com/Win8.1VMUser
echo "Make sure you have 4 gb left on your phone storage!"
apt update -y
clear
echo "Installing packages needed for qemu!"
apt-get install gcc g++ make automake python -y && apt-get install git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev -y
clear
echo "Downloading qemu..."
git clone https://github.com/qemu/qemu
clear
echo "Creating build dir and setting up qemu!"
cd qemu
mkdir build
clear
echo "Installling ninja because it don't work..."
apt install ninja -y
clear
echo "Installing spice protocol and spice..."
apt install libspice-protocol-dev libspice-server-dev -y
clear
echo "Setting up qemu!!!"
../configure --target-list=x86_64-softmmu --enable-spice
make -j4
make install
clear
echo "Now everything is done! Have fun on Spice Qemu!!!"

