echo Downloading packages... Please dont touch anything...
apk add gnome-terminal gnome-backgrounds gnome-shell wayvnc phosh phoc mesa mesa-dri-swrast mesa-e
gl
clear
echo Starting server...
export XDG_RUNTIME_DIR=/tmp
export $(dbus-launch)
export WLN_BACKENDS=headless
phoc -E '/usr/libexec/phosh -U' &
wayvnc
echo If failed, starting xsdl server...
export DISPLAY=127.0.0.1:0 PULSE_SERVER=tcp:127.0.0.1:4713
phoc
