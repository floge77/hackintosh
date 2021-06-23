#!/bin/bash

## Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor

## Terminal
brew install --cask iterm2

# oh-my-zsh (RUNZSH=no supresses shell switch)
sh -c "RUNZSH=no; $(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting


# powerlevel fonts and nerd fonts
# do not forget: iTerm → Preferences → Profiles → Text → Change Font
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# dotfiles for zsh
cp -f dotfiles/.zshrc $HOME/.zshrc
cp -f dotfiles/.p10k.zsh $HOME/.p10kzsh
mkdir -p $HOME/.dotfiles
cp -f dotfiles/aliases dotfiles/powerlevel $HOME/.dotfiles/

# iTerm config has to be imported manually again :/ need fix!
mkdir -p ~/Library/Application\ Support/iTerm2/DynamicProfiles/
cp iterm.json ~/Library/Application\ Support/iTerm2/DynamicProfiles/

## CLI Tools, languages...
brew install golang python pyenv hub ffmpeg lame nmap openssl \
            tree vim wget jq fzf tldr tmux thefuck ranger mtr htop \
            pinentry-mac youtube-dl mas kubernetes-cli openjdk maven

## Dev tools
brew install --cask docker visual-studio-code postman hiddenbar stats rectangle \
    alt-tab slack discord itsycal vlc signal telegram alfred firefox google-chrome

## Paswordmanager
brew tap amar1729/formulae
brew install coreutils gnu-sed gnupg browserpass pass pinentry
PREFIX='/usr/local/opt/browserpass' make hosts-chrome-user -f /usr/local/opt/browserpass/lib/browserpass/Makefile
PREFIX='/usr/local/opt/browserpass' make hosts-firefox-user -f /usr/local/opt/browserpass/lib/browserpass/Makefile
sudo echo "pinentry-program $(echo $(which pinentry-mac))" > ~/.gnupg/gpg-agent.conf
gpgconf --kill gpg-agent


# configure vs code
code --install-extension akamud.vscode-theme-onedark
code --install-extension ban.spellright
code --install-extension christian-kohler.path-intellisense
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension donjayamanne.githistory
code --install-extension EditorConfig.EditorConfig
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.code-runner
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools
code --install-extension ms-python.python
code --install-extension ms-vscode.Go
code --install-extension redhat.java
code --install-extension redhat.vscode-yaml
code --install-extension techer.open-in-browser
code --install-extension ziyasal.vscode-open-in-github

# install node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install node

### osx configs
# Show Library
chflags nohidden ~/Library
# now we can copy vs code settings
cp -f vs-code-settings.json ~/Library/Application\ Support/Code/User/settings.json
# Show Hidden Files
defaults write com.apple.finder AppleShowAllFiles YES
# Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true
# Show status Bar
defaults write com.apple.finder ShowStatusBar -bool true

echo "installation done!"
