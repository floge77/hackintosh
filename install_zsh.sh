/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

brew update && brew upgrade
brew install zsh
sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font
