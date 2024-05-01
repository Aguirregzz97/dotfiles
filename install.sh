# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# change default terminal to zsh
chsh -s $(which zsh)

# install rbenv
brew install rbenv ruby-build

# install plugins
brew install zsh-autosuggestions

# source zshrc
source ~/.zshrc

# add git aliases
git config --global alias.s status
git config --gloabl alias.c commit