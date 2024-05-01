# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# codespaces already comes with zsh but not ohmyzsh, remove and install ohmyzsh
rm -rf ~/.oh-my-zsh
rm ~/.zshrc

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install rbenv
brew install rbenv ruby-build

# install plugins
brew install zsh-autosuggestions

# add git aliases
git config --global alias.s status
git config --gloabl alias.c commit
 
# source zshrc
source ~/.zshrc
