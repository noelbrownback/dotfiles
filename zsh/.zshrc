# Lines configured by zsh-newuser-install
export ZDOTDIR=$HOME/.config/zsh
source "$ZDOTDIR/path.zsh"
# HISTFILE=~/.zsh_history
setopt appendhistory

# beeping is annoying
unsetopt BEEP


source "$ZDOTDIR/alias.zsh"
source "$ZDOTDIR/completion.zsh"

# Plugins
source "$ZDOTDIR/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$ZDOTDIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

plugins=(git nvm)

eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
