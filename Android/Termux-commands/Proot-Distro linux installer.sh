echo "Setup will install proot-distro!"
pkg install proot-disteo
echo "Now will be shown list of distros. Select your favourite!"
proot-distro list
clear
echo "Select your distro!: 1. Ubuntu-18.04, 2. Parrot-OS, 3. Ubuntu 20.04, 4. Debian-10, 5. Alpine linux, 6. Arch Linux
1) proot-distro install ubuntu-18.04
2) proot-distro install parrot-lts
3) proot-distro install ubuntu-20.04
4) proot-distro install debian-buster
5) proot-distro install alpine
6) proot-distro install archlinix
echo "Use proot-distro login <alias> --isolated to use your linux!"
