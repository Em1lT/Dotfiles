export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
# Commandline color
export PS1=" [%(?.%F{082}√.%F{red}X)%F{white}] [%*] %F{015}%n%f:%F{220}%~%f$ "
export PS2="[%(?.%F{082}√.%F{red}X)%F{white}] [%T] %F{124}%n%f:%F{160}%~%f$ "


export CLICOLOR=1
# directory and file colors
export LSCOLORS=exGxBxDxCxEgEdxbxgxcxd
export TERM="screen-256color"

# android studio exports
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:/usr/local/go/bin
export TERMINAL=kitty
export GOPATH=$HOME
export SCRIPTPATH=$HOME/Scripts
export EDITOR=vim
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
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
zstyle ':vcs_info:git:*' formats '%K{220}  %F{black}%b  %k'

# Aliases
if [ -e ~/.zsh_aliases ]; then
.	~/.zsh_aliases
fi
