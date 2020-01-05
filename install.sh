#!/bin/bash

## Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor

## Terminal
brew cask install iterm2

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
brew cask install font-hack-nerd-font

# dotfiles for zsh
cp -f dotfiles/.zshrc $HOME/.zshrc
mkdir -p $HOME/.dotfiles
cp -f dotfiles/aliases dotfiles/powerlevel $HOME/.dotfiles/

# iTerm config has to be imported manually again :/ need fix!
mkdir -p ~/Library/Application\ Support/iTerm2/DynamicProfiles/
cp iterm.json ~/Library/Application\ Support/iTerm2/DynamicProfiles/

## CLI Tools
brew install golang python pyenv hub ffmpeg lame nmap openssl \
            tree vim wget fzf tmux thefuck mtr htop \
            pinentry-mac youtube-dl mas kubernetes-cli

## Paswordmanager
brew tap amar1729/formulae
brew install coreutils gnu-sed gnupg browserpass pass pinentry
PREFIX='/usr/local/opt/browserpass' make hosts-chrome-user -f /usr/local/opt/browserpass/lib/browserpass/Makefile
PREFIX='/usr/local/opt/browserpass' make hosts-firefox-user -f /usr/local/opt/browserpass/lib/browserpass/Makefile
sudo echo "pinentry-program $(echo $(which pinentry-mac))" > ~/.gnupg/gpg-agent.conf
gpgconf --kill gpg-agent


## Dev tools
brew cask install java docker visual-studio-code postman
cp -f vs-code-settings.json ~/Library/Application\ Support/Code/User/settings.json
brew install maven
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" && nvm install node

## Other tools
brew cask install slack discord itsycal vlc firefox google-chrome signal alfred little-snitch homebrew/cask-drivers/steelseries-engine homebrew/cask-drivers/steelseries-exactmouse-tool

# mount little-snitch * is for any version
hdiutil attach /usr/local/Caskroom/little-snitch/*/*.dmg

### osx configs
# Show Library
chflags nohidden ~/Library
# Show Hidden Files
defaults write com.apple.finder AppleShowAllFiles YES
# Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true
# Show status Bar
defaults write com.apple.finder ShowStatusBar -bool true

### mas installs
# Log into Appstore before
# Amphetamine, BetterSnapTool, Outbank
mas install 937984704 417375580 1094255754 

echo "Execute now the little-snitch installer which is mounted!"
