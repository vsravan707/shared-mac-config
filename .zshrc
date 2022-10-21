setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:"$(brew --prefix)/bin":$PATH

export PATH="$(brew --prefix)/opt/php@7.4/bin:$PATH"
export PATH="$(brew --prefix)/opt/php@7.4/sbin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/sravan/.oh-my-zsh"

ZSH_THEME="jispwoso"

COMPLETION_WAITING_DOTS="true"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(yarn docker)

source $ZSH/oh-my-zsh.sh

typeset -U PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/sravan/miniforge3/bin/conda' 'shell.zsh' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/sravan/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/sravan/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/sravan/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# bun completions
[ -s "/Users/sravan/.bun/_bun" ] && source "/Users/sravan/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/sravan/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sravan/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sravan/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sravan/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sravan/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# aliases
alias python=$(which python3)
alias pip=$(which pip3)

alias apps="cd /Users/sravan/local-sites && ls -la"
alias myip="curl http://ipecho.net/plain; echo"

alias gp="git remote | xargs -L1 -I {} sh -c 'git push --all -v {}; git push --tags -v {};'"
alias gl="git remote | xargs -L1 -I {} sh -c 'git fetch -v {}; git fetch --tags -v {};'"
alias gr="git remote -v"

# open apps
alias code="open -a /Applications/Visual\ Studio\ Code.app"
alias c="code"

alias ds="open /Applications/Docker.app"
alias asana="open /Applications/Asana.app"
alias gh="open /Applications/GitHub\ Desktop.app"
alias salck="open /Applications/Slack.app"
alias fg="open /Applications/Figma.app"
alias iterm="open -a iTerm.app"

alias yd="yarn deploy"
alias yd-p="yarn deploy-push"

alias ydl="yarn deploy-live"
alias ydl-p="yarn deploy-push-live"

alias ys="yarn && yarn start"

alias t="tldr"

startup_dev_apps() {
    ds
    asana
    gh
    salck
}

alias dev="startup_dev_apps"

alias backup-local-sites="rsync -azvP --delete-after --exclude '**/node_modules/**' --exclude '**/logs/**' --exclude '**/.parcel-cache/**' --exclude '**/.cache/**' --exclude '.DS_Store' /Users/sravan/local-sites/ /Volumes/USB250GB/local-sites/"

# custom alias
alias sh30="sudo shutdown -h +30"
alias sh="sudo shutdown -h"
alias clean-brew='brew cleanup -s --prune=all && brew update && brew upgrade'
