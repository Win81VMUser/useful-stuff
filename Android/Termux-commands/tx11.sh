#TERMUX X11 STARTUP FILE 
#Change display port to the one you want to use (default is :0)
termux-x11 -listen tcp :0 & sleep 5
DISPLAY=:0 xhost +
debian
