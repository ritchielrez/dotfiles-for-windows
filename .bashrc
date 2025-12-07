PROMPT_COMMAND="history -a"

# ls aliases
alias ls="eza"
alias ll="ls -la"

# dotfiles bare repo aliases
alias dotfiles="yadm"
alias dts="dotfiles status"
alias dta="dotfiles add"
alias dtc="dotfiles cz"
alias dtp="dotfiles push -u origin"

alias dtnv="yadm enter nvim"

alias dlg="yadm enter lazyyadm"
alias lg="lazygit"

# git aliases
alias gs="git status"
alias ga="git add"
alias gp="git push -u origin"
alias gl="git log --oneline"

# lunarvim alias
alias lvim="pwsh /c/Users/strange.ritchiel/AppData/Roaming/lunarvim/bin/lvim.ps1"

# My prompt
# eval "$(oh-my-posh.exe init bash --config ~/Documents/PowerShell/Modules/oh-my-posh/themes/zash1.omp.json)"

# Enable zoxide (alternative to cd and autojump) support
eval "$(zoxide init bash)"

# FZF gruvbox colorscheme
# export FZF_DEFAULT_OPTS="--color=fg:#ebdbb2,bg:-1,hl:#689d6a,fg+:#d5c4a1,bg+:#504945,hl+:#8ec07c,info:#fe8019,prompt:#fb4934,pointer:#8ec07c,marker:#b8bb26,spinner:#d3869b,header:#fabd2f"

# FZF catppuccin colorscheme
export FZF_DEFAULT_OPTS=" \
--color=bg+:#1e1e2e,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# Set the PATH variable for local bash scripts
export PATH="$HOME/.local/bin/:$PATH"
export PATH="$HOME/.scripts/:$PATH"

# fnm
export PATH="/c/Users/ritux/AppData/Local/fnm_multishells/3784_1709199347247":$PATH
export FNM_MULTISHELL_PATH="C:\\Users\\ritux\\AppData\\Local\\fnm_multishells\\3784_1709199347247"
export FNM_LOGLEVEL="info"
export FNM_VERSION_FILE_STRATEGY="local"
export FNM_DIR="C:\\Users\\ritux\\AppData\\Roaming\\fnm"
export FNM_NODE_DIST_MIRROR="https://nodejs.org/dist"
export FNM_COREPACK_ENABLED="false"
export FNM_RESOLVE_ENGINES="false"
export FNM_ARCH="x64"
__fnm_use_if_file_found() {
    if [[ -f .node-version || -f .nvmrc ]]; then
    fnm use --silent-if-unchanged
fi

}

__fnmcd() {
    \cd "$@" || return $?
    __fnm_use_if_file_found
}

alias cd=__fnmcd
__fnm_use_if_file_found
