# Neovim Configuration Guide

This guide provides detailed instructions for installing, updating, and uninstalling NvChad for Neovim, along with additional setup for dotfiles for nvim + zsh.

## Prerequisites

Before proceeding with the installation, ensure the following prerequisites are met:

- **Neovim 0.9.0**: The latest version of Neovim.
- **Nerd Font**: Use a Nerd Font as your terminal font. Avoid fonts ending with 'Mono' to prevent small icons (e.g., use JetbrainsMono Nerd Font, not JetbrainsMono Nerd Font Mono).
- **Ripgrep** (Optional): Required for grep searching with Telescope.
- **GCC**: Windows users must have mingw installed and set on the path.
- **Clang**: If you want to use the formatting and debugger tools.
- **Make**: Windows users should have GnuWin32 installed and set on the path.
- **Delete Old Neovim Folder**: Remove any previous installations of Neovim (see commands below).

## Installation

### Linux / MacOS

1. Delete the old Neovim folder:
   ```bash
   rm -rf ~/.config/nvim
   rm -rf ~/.local/share/nvim
   ```

2. Install Neovim
    ```bash
    brew install neovim # for MacOS
    sudo apt install neovim # for Linux
    ```

3. Delete your old configuation

**Linux / MacOS (Unix)**
    ```bash
    rm -rf ~/.config/nvim
    rm -rf ~/.local/share/nvim
    ```

**Windows**
    ```cmd
    rd -r ~\AppData\Local\nvim
    rd -r ~\AppData\Local\nvim-data
    ```


4. Clone the repo
    ```bash
    git clone https://github.com/BrendanGlancy/dotfiles.git ~/.config/nvim --depth 1 && nvim
    ```

## Common Commands

    ```makefile
    gD = go to declaration
    gd = go to definition
    gi = implementation
    ff = find files
    fw = rip grep
    ;b = browse
    ```

[Helpful link](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md) to find lspconfigs
