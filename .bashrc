PROMPT_COMMAND='history -a'

# ls aliases
alias ls="lsd"
alias ll="ls -a"
alias la="ls -la"

# dotfiles bare repo aliases
alias dotfiles="git --git-dir=$HOME/.git/ --work-tree=$HOME"
alias dts='dotfiles status'
alias dta='dotfiles add'
alias dtc='dotfiles cz'
alias dtp='dotfiles push -u origin'

# git aliases
alias gs='git status'
alias ga='git add'
alias gp='git push -u origin'
