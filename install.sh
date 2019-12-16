xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew tap caskroom/cask
brew tap caskroom/versions
brew doctor

### Tools and Software
brew install golang pyhton3 pyenv pip3 hub ffmpeg lame \
            maven nmap openssl pass pinentry pinentry-mac \
            tree vim wget youtube-dl fzf tmux thefuck caffeine \
            firefox postman signal alfred mtr htop
brew cask install java8 slack docker visual-studio-code iterm2
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
cp dotiles/* $HOME/.dotfiles/

### osx configs
chflags nohidden ~/Library #Show Library
defaults write com.apple.finder AppleShowAllFiles YES #Show Hidden Files
defaults write com.apple.finder ShowPathbar -bool true #Show Path Bar
defaults write com.apple.finder ShowStatusBar -bool true #Show status Bar