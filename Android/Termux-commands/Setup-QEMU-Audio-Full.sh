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
echo "Now setup will run some commands to setup correctly audio on termux/qemu"
pulseaudio --start
pulseaudio -D
pulseaudio -v
export QEMU_AUDIO_DRV=sdl
export QEMU_SDL_SAMPLES=2048
export QEMU_AUDIO_DRV=sdl
echo "Everything is fine! Now test QEMU and have fun!
echo "Now qemu is starting... To quit type "quit" or press ctrl+c"
qemu-system-x86_64 -boot n -monitor stdio -accel tcg -m 256 -soundhw all -vnc :1
