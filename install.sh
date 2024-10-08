# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# codespaces already comes with zsh but not ohmyzsh, remove and install ohmyzsh
rm -rf ~/.oh-my-zsh
rm ~/.zshrc

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc

# install rbenv
brew install rbenv ruby-build

# install plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# add git aliases
git config --global alias.s status
git config --gloabl alias.c commit

echo '# add paths                                                                                                                                                                                      ✔ 
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

# Check if theres a ruby version file in the directory
if [ -f .ruby-version ]; then
    rvm use
fi

# oh my zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# zsh plugins
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  web-search
  copypath
  copyfile
  copybuffer
)

source $ZSH/oh-my-zsh.sh

# disables spring (mainly for bugs related to rails)
export DISABLE_SPRING=true' > ~/.zshrc

source ~/.zshrc
