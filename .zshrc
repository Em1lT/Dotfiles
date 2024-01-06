export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export themeColor=148
# Commandline color
export PS1=" [%(?.%F{$themeColor}√.%F{red}X)%F{white}] [%*] %F{045}%n%f:%F{$themeColor}%~%f$ "
export PS2="[%(?.%F{082}√.%F{red}X)%F{white}] [%T] %F{124}%n%f:%F{160}%~%f$ "


export CLICOLOR=1
# directory and file colors
export LSCOLORS=exGxBxDxCxEgEdxbxgxcxd
export TERM="screen-256color"

#set history size
export HISTSIZE=5000
#history file
export HISTFILE=~/.zsh_history
#save history after logout
export SAVEHIST=10000
#append into history file
setopt INC_APPEND_HISTORY
#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS
#add timestamp for each entry
setopt EXTENDED_HISTORY

# Git branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_

# Right side prompt
zstyle ':vcs_info:git:*' formats '%K{148}  %F{black}%b  %k'

# Aliases
# if [ -e ~/.zsh_aliases ];
#     then ~/.zsh_aliases
# fi

# 
# if [ -e ~/.ssh_keys ]; then
# 	~/.ssh_keys
# fi

fortune | cowsay

export PATH="${HOME}/.pyenv/shims:${PATH}"

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/etvertics/Projects/Other/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/etvertics/Projects/Other/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/etvertics/Projects/Other/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/etvertics/Projects/Other/google-cloud-sdk/completion.zsh.inc'; fi
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

alias mfs='git diff | grep console.' # find console.log in git diff

# bun completions
# [ -s "/Users/etvertics/.bun/_bun" ] && source "/Users/etvertics/.bun/_bun"
