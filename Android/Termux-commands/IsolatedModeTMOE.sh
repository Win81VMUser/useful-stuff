echo "Warning! It is REAL ISOLATED MODE, proc or dev are mounted."
echo "Use this for edit: nano ~/.config/tmoe-linux/proot_global.conf"
cat > ${HOME}/.config/tmoe-linux/proot_global.conf<<-'EOF'
MOUNT_SD=false
SD_DIR_01="/storage/self/primary"

MOUNT_TERMUX=false
TERMUX_DIR="/data/data/com.termux/files"

MOUNT_TF=false
TF_CARD_LINK="${HOME}/storage/external-1"

MOUNT_STORAGE=false
STORAGE_DIR="/storage"

MOUNT_SYSTEM=false
SYSTEM_DIR="/system"

MOUNT_APEX=false
APEX_DIR="/apex"

MOUNT_PROC=true
PROC_DIR="/proc"
FAKE_PROOT_PROC=true

MOUNT_DEV=true
DEV_DIR="/dev"
EOF
