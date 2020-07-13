#!/bin/zsh

#NAME="My name"
#EMAIL=my.email@address.com

if [ -z $NAME ]; then
  echo "Please, edit this script and add your name."
  exit
fi

if [ -z $EMAIL ]; then
  echo "Please, edit this script and add your email."
  exit 1
fi


# Ask for password
sudo -v

# Create projects directory if it does not exist
if [ ! -d ~/projects ]; then
  echo "Creating projects folder"
  mkdir ~/projects
  chmod 700 ~/projects
fi

# Xcode Command Line Tools
if [ -d "$(xcode-select -p)" ]; then
  # Already installed
else
  echo "Installing Xcode Command Line Tools"
  xcode-select --install
fi

# Brew
if test ! $(which brew); then
  Echo "Installing Brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Brew
brew install awscli
brew install aws-sam-cli
brew install bat
brew install diff-so-fancy
brew install direnv
brew install git
brew install jenv
brew install jq
brew install micro
brew install node@12
brew install nvm
brew install python
brew install redis
brew install sbt
brew install scala
brew install yarn

# Brew cask
brew cask install aerial
brew cask install anaconda
brew cask install arduino
brew cask install docker
brew cask install insomnia
brew cask install intellij-idea
brew cask install iterm2
brew cask install macpass
brew cask install microsoft-teams
brew cask install pock
brew cask install postico
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install ukelele
brew cask install visual-studio-code

# Brew cask-versions
brew tap homebrew/cask-versions
brew cask install corretto8

# PIP
pip3 install git-remote-codecommit

# Configure git
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git config --global core.editor micro
git config --global core.pager "diff-so-fancy | less --tabs=1,5 -RFX"
git config --global pull.ff only

# Conda
conda config --set auto_activate_base false

# Oh My Zsh
RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# ZSH autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Font for Agnoster theme
curl -fsSL https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20for%20Powerline.otf -o /Library/Fonts/Source\ Code\ Pro\ for\ Powerline.otf

if ! grep -q "DO NOT OVERWRITE" ~/.zshrc; then
  cp files/zshrc.sh ~/.zshrc
fi
