# add paths                                                                                                                                                                                      ✔ 
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
export DISABLE_SPRING=true
