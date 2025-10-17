ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions)

source <(fzf --zsh)
finder() {
    open .
}

optimize() {
    ffmpeg -i "$1" -map 0:v:0 -an -dn \
      -c:v libx264 -profile:v high -level 4.1 -pix_fmt yuv420p -crf 18 \
      -maxrate 10000k -bufsize 20000k -r 30 -g 60 -keyint_min 60 \
      -movflags +faststart -timecode "00:00:00;00" -write_tmcd 1 \
      output.mp4
}

alias vim="nvim"
alias vi="nvim"

source $HOME/.cargo/env

bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^t "time.sh\n"

export EDITOR="nvim"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/Users/s167452/tizen-studio/tools/tizen-core
export PATH=$PATH:/Users/s167452/tizen-studio/tools
export PATH=$PATH:/Users/s167452/tizen-studio/tools/ide/bin/
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
export PNPM_HOME="/Users/s167452/Library/pnpm"
[ -s "/Users/s167452/.bun/_bun" ] && source "/Users/s167452/.bun/_bun"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
