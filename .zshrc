# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY      
setopt SHARE_HISTORY       
setopt HIST_IGNORE_DUPS    
setopt HIST_REDUCE_BLANKS  


autoload -U promptinit; promptinit
prompt pure

source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/vulkan/1.4.335.0/setup-env.sh


export EDITOR=nvim
# Open buffer line in editor
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^e' edit-command-line


alias c='clear'
alias l='eza -lh --icons=auto'
alias ls='eza -1 --icons=auto'
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'
# alias ld='eza -lhD --icons=auto'
alias lt='eza --icons=auto --tree'

alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

alias mkdir='mkdir -p'

alias t='tmux attach || tmux'
alias b=bluetuith

alias asm='gcc -S -masm=intel -fno-asynchronous-unwind-tables -O0'
