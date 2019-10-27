#!bin/bash

# Install xcode tools, then install homebrew
xcode-select --install;
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
brew tap caskroom/cask;

# Install node + go + vim package manager
brew install node;
brew install go;
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;

# Copy various profiles from cloned dotfiles repo
git clone https://github.com/captainsidd/dotfiles.git;
cd dotfiles;
cp ./.bash_profile ~/.bash_profile;
cp ./.vimrc ~/.vimrc;

# Finish setting up vim, install other stuff
vim +PluginInstall +qall;
git config --global core.editor /usr/bin/vim;
brew install bash;
brew install git;
brew install pt;
brew install tmux;
npm install -g tldr;

# Install pyenv
brew install pyenv;
brew install pyenv-virtualenvwrapper;

# Install essential programs
brew cask install google-chrome;
brew cask install dropbox;
brew cask install flux;
brew cask install iterm2;
brew cask install slack;
brew cask install visual-studio-code;
brew cask install spotify;
brew cask install adobe-acrobat-reader;
brew cask install polymail;
brew cask install notion;
brew cask install postman;
brew cask install rstudio;
brew cask install filezilla;

open -a iterm
