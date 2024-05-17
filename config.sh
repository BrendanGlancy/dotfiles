#!/bin/bash

# Regular Shit
sudo apt install zsh
sudo apt install git-all

sudo apt install curl
sudo apt install wget

sudo apt install kitty
sudo apt install neofetch

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Chrome and Discord
wget https://discord.com/api/download?platform=linux&format=deb
sudo dpkg -i discord-0.0.54.deb

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# LLVM Shit
sudo apt install -y software-properties-common
sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
sudo apt install -y clang
clang --version

# NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
source ~/.zshrc

nvm install node

# go
wget https://go.dev/dl/go1.22.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.22.3.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
source ~/.zshrc
go version

rm go1.22.3.linux-amd64.tar.gz

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# For zsh users:
echo 'source $HOME/.cargo/env' >> ~/.zshrc
source ~/.zshrc

# Verify the installation
rustc --version

# Nvim shit
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

mkdir -p /opt/nvim
mv nvim.appimage /opt/nvim/nvim

echo 'export PATH="$PATH:/opt/nvim/"' >> ~/.zshrc
echo 'alias vim = "nvim' >> ~/.zshrc
source ~/.zshrc

git clone https://github.com/BrendanGlancy/dotfiles.git
cd dotfiles

mv nvim ~/.config
mv kitty ~/.config
mv neofetch ~/.config
mv i3 ~/.config

# Font
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
unzip JetBrainsMono.zip
 Update the font cache
fc-cache -fv
