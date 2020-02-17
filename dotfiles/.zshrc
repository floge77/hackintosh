export ZSH="$HOME/.oh-my-zsh"

plugins=(
  zsh-autosuggestions
  cp
  docker
  extract
  fzf
  git
  github
  gradle
  history
  jsontools
  rsync
  vscode
  zsh-syntax-highlighting
)

[ -f $HOME/.dotfiles/powerlevel ] && . $HOME/.dotfiles/powerlevel
source $ZSH/oh-my-zsh.sh
[ -f $HOME/.dotfiles/aliases ] && . $HOME/.dotfiles/aliases

# kubernetes completion
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

# Source zsh-autosuggestions installed via brew
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'


# DEV stuff
export GOPATH="$HOME/go"
PATH="$GOPATH/bin:$PATH"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home/"
PATH="$JAVA_HOME:$PATH"

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

LANG=en_US.utf8
