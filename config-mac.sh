#!/bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Detect Operating System
OS=$(uname -s)

if [[ "$OS" == "Linux" ]]; then
    INSTALL_CMD="sudo apt install -y"
    FONT_INSTALL_DIR="$HOME/.local/share/fonts"
elif [[ "$OS" == "Darwin" ]]; then
    INSTALL_CMD="brew install"
    FONT_INSTALL_DIR="$HOME/Library/Fonts"
else
    echo "Unsupported OS: $OS"
    exit 1
fi

# Install Zsh, Git, and Other Essentials
$INSTALL_CMD zsh git curl wget

# xclip and Neovim (Linux Only)
if [[ "$OS" == "Linux" ]]; then
    $INSTALL_CMD xclip
    $INSTALL_CMD neovim
else
    $INSTALL_CMD neovim
fi

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Chrome Installation
if [[ "$OS" == "Linux" ]]; then
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb || sudo apt -f install -y
fi

# LLVM Installation
# $INSTALL_CMD llvm
# clang --version

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

cat <<EOL >>~/.zshrc
export NVM_DIR="\$([ -z "\${XDG_CONFIG_HOME-}" ] && printf %s "\${HOME}/.nvm" || printf %s "\${XDG_CONFIG_HOME}/nvm")"
[ -s "\$NVM_DIR/nvm.sh" ] && \. "\$NVM_DIR/nvm.sh" # This loads nvm
EOL

source ~/.zshrc
nvm install node

# Go Installation
if [[ "$OS" == "Linux" ]]; then
    wget https://go.dev/dl/go1.23.4.linux-amd64.tar.gz
    sudo tar -C /usr/local -xzf go1.23.4.linux-amd64.tar.gz
else
    brew install go
fi

echo 'export PATH=$PATH:/usr/local/go/bin' >>~/.zshrc
source ~/.zshrc
go version

# Rust Installation
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
echo 'source $HOME/.cargo/env' >>~/.zshrc
source ~/.zshrc
rustc --version

# Install Nerd Font
mkdir -p "$FONT_INSTALL_DIR"
cd "$FONT_INSTALL_DIR"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
unzip -o JetBrainsMono.zip
fc-cache -fv

# Neovim (AppImage for Linux)
if [[ "$OS" == "Linux" ]]; then
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
    chmod u+x nvim.appimage
    ./nvim.appimage --appimage-extract
    sudo mv squashfs-root /opt/nvim
    sudo ln -sf /opt/nvim/AppRun /usr/bin/nvim
fi

# Clone and Configure Dotfiles
git clone https://github.com/BrendanGlancy/dotfiles.git
cd dotfiles
mv nvim ~/.config
mv kitty ~/.config
mv neofetch ~/.config
mv tmux ~/.config

# Git Credential Manager
if [[ "$OS" == "Linux" ]]; then
    wget https://github.com/git-ecosystem/git-credential-manager/releases/download/v2.5.0/gcm-linux_amd64.2.5.0.deb
    sudo dpkg -i gcm-linux_amd64.2.5.0.deb || sudo apt -f install -y
else
    brew install --cask git-credential-manager-core
fi
