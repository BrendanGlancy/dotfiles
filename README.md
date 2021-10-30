# Vimrc

My vimrc settings

<b>Download vim mac or linux</b>
```console
brew install vim
sudo apt install vim
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
:source ~/.vimrc

:PlugInstall
```

# Wow, I guess I am now using Neovim

```console
brew install neovim
```

After installing, your going to need to mkdir some files

```console
cd ~/.config
mkdir nvim
vim init.vim
```

Inside init.vim make your vimrc

```console
// make sure you're in nvim dir
mkdir autoload
cd autoload
curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' -o plug.vim
```

The above will install vim Plug, in vim do a :PlugInstall
