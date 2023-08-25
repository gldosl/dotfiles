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
alias x86='arch -x86_64 zsh' # Start Shell in Rosetta 2 (M1)
alias grep='grep --color'

# ncdu - directory size
# fzf - fuzzy file search

# Sublime Text
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# if x86, show in prompt
if [ `arch` = "i386" ];
then
    PROMPT=$PROMPT"%F{yellow}[x86] %F{240}%f%"
fi

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

