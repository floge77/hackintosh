xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask
brew tap caskroom/versions
brew doctor

### Tools and Software

## CLI Tools
brew install golang python pyenv hub ffmpeg lame maven nmap openssl \
            tree vim wget fzf tmux thefuck mtr htop pass pinentry \
            pinentry-mac youtube-dl mas

## Programms
brew cask install java slack docker visual-studio-code iterm2 itsycal vlc postman firefox signal alfred caffeine
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

### Terminal

#powerlevel fonts and nerd fonts
# do not forget: iTerm → Preferences → Profiles → Text → Change Font
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# dotfiles for zsh
cp -f dotfiles/.zshrc $HOME/.zshrc
mkdir -p $HOME/.dotfiles
cp dotiles/aliases dotfiles/powerlevel $HOME/.dotfiles/

# iTerm config
cp iterm.json ~/Library/Application\ Support/iTerm2/DynamicProfiles/

### osx configs
chflags nohidden ~/Library #Show Library
defaults write com.apple.finder AppleShowAllFiles YES #Show Hidden Files
defaults write com.apple.finder ShowPathbar -bool true #Show Path Bar
defaults write com.apple.finder ShowStatusBar -bool true #Show status Bar

### mas installs
# Log into Appstore before
# Amphetamine, Automute, BetterSnapTool, Outbank
mas install 937984704 1118136179 417375580 1094255754 
