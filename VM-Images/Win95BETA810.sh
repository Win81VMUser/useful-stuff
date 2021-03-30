echo "Welcome to Windows 95 BETA Build 810 hdd downloader!"
echo "Setup will now download and setup qemu/termux with audio fixed!"
wget https://raw.githubusercontent.com/Win81VMUser/useful-stuff/main/Android/Termux-commands/Setup-QEMU-Audio-Full.sh && bash Setup-QEMU-Audio-Full.sh
clear
echo "Now setup will search all available mirrors to download disk..."
echo "Checking https://github.com/Win81VMUser/useful-stuff/edit/main/VM-Images/Win95BETA810.zip...[OK]"
echo "Downloading hdd from https://github.com/Win81VMUser/useful-stuff/edit/main/VM-Images/Win95BETA810.zip
wget
clear
echo "Cleaning up Setup-QEMU-Audio-Full.sh... Please wait..."
rm Setup-QEMU-Audio-Full.sh
clear
echo "Now lets setup hdd!"
pkg install unzip -y
clear
unzip Win95BETA810.zip
echo "Starting qemu... Please wait..."
echo "Type "quit" to quit or press ctrl+c
qemu-system-x86_64 -monitor stdio -vnc :1 -accel tcg -soundhw sb16 -usbdevice tablet
echo "To clear disk images type rm Win95BETA810.zip and rm c.img"
echo "Setup will clear zip file of disk... Please wait...
rm Win95BETA810.zip
echo "Everything is done! Have fun on your new VM!!!"
