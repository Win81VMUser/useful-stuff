echo "Setup will now install and configure audio files..."
pkg update -y
pkg install wget && wget https://andronixos.sfo2.cdn.digitaloceanspaces.com/OS-Files/setup-audio.sh && chmod +x setup-audio.sh && ./setup-audio.sh
echo "Now setup will run some scripts on pulseaudio..."
pkg install pulseaudio
pulseaudio --start
pulseaudio -D
pulseaudio -v
echo "Now setup will install x11-repo and qemu-system-x86_64 WITH SDL..."
pkg update -y
pkg install x11-repo -y
pkg install qemu-system-x86_64 -y
echo "Now setup will download a hdd file(if Win8.1VMUser uploaded it into disk images)
echo "No disk found here... Wait... We can test it in another way!"
echo "Now qemu is starting... To quit type "quit" or press ctrl+c"
qemu-system-x86_64 -boot n -monitor stdio -accel tcg -m 256 -vnc :1
