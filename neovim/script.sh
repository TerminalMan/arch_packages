useradd -m builder
echo 'builder ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/builder
chmod 440 /etc/sudoers.d/builder

chown -R builder:builder "$GITHUB_WORKSPACE/arch_packages/neovim"
su builder -c 'makepkg -sf --noconfirm'
chown -R root:root "$GITHUB_WORKSPACE/arch_packages/neovim"

