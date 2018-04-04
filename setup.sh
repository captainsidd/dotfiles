#!bin/bash

# Install xcode tools, then install homebrew
xcode-select --install;
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

# Install node + vim package manager
brew install node;
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;

# Copy various profiles from cloned dotfiles repo
git clone https://github.com/sidgonuts/dotfiles.git;
cd dotfiles;
cp ./.bash_profile ~/.bash_profile;
cp ./.vimrc ~/.vimrc;
mkdir ~/.ssh
cp ./config ~/.ssh/config;

# Finish setting up vim, install other stuff
vim +PluginInstall +qall;
git config --global core.editor /usr/bin/vim;
brew install pt;
brew install tmux;
npm install -g tldr;

# Install python2, python3, virtualenv
brew install python3;
brew install python@2;
python2 -m pip install --upgrade setuptools;
pip2 install virtualenvwrapper;
echo "export VIRTUALENVWRAPPER_PYTHON=$(which python2)" >> ~/.bash_profile;
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bash_profile;
source ~/.bash_profile;

# Open a new Terminal window
open ./DotGov.Terminal;

