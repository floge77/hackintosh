xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask
brew tap caskroom/versions
brew doctor

### Tools and Software

## Dev Tools
brew install golang pyhton3 pyenv pip3 hub ffmpeg lame maven nmap openssl \
            tree vim wget fzf tmux thefuck postman  mtr htop

## Tools
brew install pass pinentry pinentry-mac firefox signal alfred caffeine youtube-dl Itsycal

## Programms
brew cask install java8 slack docker visual-studio-code iterm2 mas itsycal vlc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash

### Terminal

#powerlevel fonts and nerd fonts
# do not forget: iTerm → Preferences → Profiles → Text → Change Font
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

brew install zsh
sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# auto suggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# dotfiles for zsh
cp -f dotfiles/.zshrc $HOME/.zshrc
mkdir -p $HOME/.dotfiles
cp dotiles/aliases dotfiles/powerlevel $HOME/.dotfiles/

### osx configs
chflags nohidden ~/Library #Show Library
defaults write com.apple.finder AppleShowAllFiles YES #Show Hidden Files
defaults write com.apple.finder ShowPathbar -bool true #Show Path Bar
defaults write com.apple.finder ShowStatusBar -bool true #Show status Bar

### mas installs
# Log into Appstore before
mas signin
# Amphetamine, Automute, BetterSnapTool, Outbank
mas install 937984704 1118136179 417375580 1094255754
