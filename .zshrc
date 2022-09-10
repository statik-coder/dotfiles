# *****************************
# ======= ENV AND THEME =======
# *****************************

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
# Init "Starship" theme
eval "$(starship init zsh)"

# Plugins
plugins=(git rust yarn zsh-autosuggestions zsh-syntax-highlighting sudo)

# Oh-my-zsh initialization
source $ZSH/oh-my-zsh.sh

# ****************************
# ======= USER CONFIG ========
# ****************************

export EDITOR='nvim'

# Aliases
alias zshconf="code ~/.zshrc"
alias gitclearlocal="git branch | grep -v "master" | xargs git branch -D"
alias config='/usr/bin/git --git-dir=/home/stat1k --work-tree=/home/stat1k'

# **********************
# ======= OTHER ========
# **********************

# NVM (Node Version Manager) initialization
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ************************
# ======= AUTOSTART ======
# ************************

neofetch

# ****************************
# ======= HELPFUL INFO =======
# ****************************

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
