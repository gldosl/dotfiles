# git prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'
PROMPT='%F{cyan}%n@%M%f %F{240}%1~ %f%# '
RPROMPT='%F{green}${vcs_info_msg_0_} %F{240}%*%f'

# dotfiles
alias dt='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# aliases
alias ls='ls -G'
alias x86='arch -x86_64 zsh' # Start Shell in Rosetta 2 (Apple M-series CPUs)
alias grep='grep --color'

# if x86, show in prompt
if [ `arch` = "i386" ];
then
    PROMPT=$PROMPT"%F{yellow}[x86] %F{240}%f%"
fi

# other programs
# bat - colored cat
# ncdu - directory size
# fzf - fuzzy file search

# Sublime Text
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # load nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # nvm bash_completion

# AWS
export AWS_PROFILE=os-dev
export AWS_REGION=us-west-2

# Docker
export PATH=$PATH:~/.docker/bin

# sdkman # uncomment for java setup
# export SDKMAN_DIR="$HOME/.sdkman"
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

