[![Neovim](https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png)](https://neovim.io)

Dotfiles for nvim + zsh

<b>Download neovim mac or linux</b>
```console
brew install neovim
sudo apt install neovim
```
Note: I wouldn't recommend using brew for this on linux or sudo apt get

<b>Install vim plug</b>
```console
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

<b>Make changes to your neovim</b>

In neovim
```console
:source ~/.vimrc

:PlugInstall
```


After installing, your going to need to mkdir some files

```console
cd ~/.config
mkdir nvim
vim init.vim
```

Inside init.vim make your neovimrc

```console
// make sure you're in nvim dir
mkdir autoload
cd autoload
curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' -o plug.vim
```

## lsp commands
Configured servers list: diagnosticls, ccls, flow, tsserver, pyright, jdtls, jedi_language_server
```
gD = go to declaration
gd = go to definition
gi = implementation
;f = find files
;r = rip grep
;b = browse
sf = defx search
```

[Helpful link](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md) to find lspconfigs


