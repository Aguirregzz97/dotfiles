# add paths
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


# zsh plugins
plugins=(
  git
  zsh-autosuggestions
  web-search
  copypath
  copyfile
  copybuffer
)


# disables spring (mainly for bugs related to rails)
export DISABLE_SPRING=true
