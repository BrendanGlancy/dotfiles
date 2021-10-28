# Vimrc

My vimrc settings

<b>Download vim mac or linux</b>
```console
brew install vim
sudo apt get vim
```

<b>Access your vimrc</b>

```console
vim ~/.vimrc
```

<b>Install vim plug</b>
```console
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

<b>Make changes to your vim</b>

In vim 
```console
:source vimrc

:PlugInstall
```
