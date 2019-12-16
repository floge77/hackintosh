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

LANG=en_US.utf8