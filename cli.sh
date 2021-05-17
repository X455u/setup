#!/bin/zsh

set -e

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
if type brew > /dev/null 2>&1; then
  Echo "Brew installed"
else
  Echo "Installing Brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Brew
brew install awscli
brew install bat
brew install csvkit
brew install diff-so-fancy
brew install direnv
brew install git
brew install gpg
brew install jenv
brew install jq
brew install micro
brew install node@12
brew install nvm
brew install parquet-tools
brew install python
brew install redis
brew install sbt
brew install scala
brew install yarn

# Brew cask
brew install aerial
brew install anaconda
brew install arduino
brew install docker
brew install google-chrome
brew install insomnia
brew install intellij-idea
brew install iterm2
brew install keepingyouawake
brew install macpass
brew install postico
brew install slack
brew install spectacle
brew install spotify
brew install ukelele
brew install visualvm
brew install visual-studio-code

# Brew cask-versions
brew tap homebrew/cask-versions
brew install corretto8

# PIP
pip3 install git-remote-codecommit

# Configure git
git config --global user.name "$NAME"
git config --global user.email "$EMAIL"
git config --global core.editor micro
git config --global core.pager "diff-so-fancy | less --tabs=1,5 -RFX"
git config --global pull.ff only

# Oh My Zsh
if [ ! -d ~/.oh-my-zsh ]; then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# ZSH autosuggestions
AUTO_DIR=~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
if [ ! -d $AUTO_DIR ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions $AUTO_DIR
fi

# Font for Agnoster theme
curl -fsSL https://github.com/powerline/fonts/raw/master/SourceCodePro/Source%20Code%20Pro%20for%20Powerline.otf -o /Library/Fonts/Source\ Code\ Pro\ for\ Powerline.otf

if ! grep -q "DO NOT OVERWRITE" ~/.zshrc; then
  cp files/zshrc.sh ~/.zshrc
fi

echo "Done!"
