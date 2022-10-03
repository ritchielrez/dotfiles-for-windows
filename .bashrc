PROMPT_COMMAND='history -a'

# ls aliases
alias ll="ls -la"

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

# lunarvim alias
alias lvim='~/AppData/Roaming/lunarvim/bin/lvim'

# My prompt
# eval "$(oh-my-posh.exe init bash --config ~/Documents/PowerShell/Modules/oh-my-posh/themes/zash1.omp.json)"

# Enable zoxide (alternative to cd and autojump) support
eval "$(zoxide init bash)"

# FZF gruvbox colorscheme
export FZF_DEFAULT_OPTS="--color=fg:#ebdbb2,bg:-1,hl:#689d6a,fg+:#d5c4a1,bg+:#504945,hl+:#8ec07c,info:#fe8019,prompt:#fb4934,pointer:#8ec07c,marker:#b8bb26,spinner:#d3869b,header:#fabd2f"
