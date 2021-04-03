echo "Installer will install necessary files for cloud VPS"
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg -i chrome-remote-desktop_current_amd64.deb 
sudo dpkg --configure -a
sudo apt --fix-broken install -y
echo "Go to https://remotedesktop.google.com/headless and click on debian/linux and copy it here"
echo "   "
echo "   "
echo "   "
echo "Go to https://remotedesktop.google.com/headless and click on debian/linux and copy it here"
echo "Now go to https://remotedesktop.google.com/access and look for your desktop! HAVE FUN!!!
echo "BYE!!!"
