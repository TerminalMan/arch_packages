useradd -m builder
echo 'builder ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/builder
chmod 440 /etc/sudoers.d/builder

chown -R builder:builder "$GITHUB_WORKSPACE"

su builder -c 'makepkg -sf --noconfirm'
ls
