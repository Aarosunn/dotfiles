# aliases.zsh

# Better ls
alias ls='eza --icons'

# Detailed listing
alias ll='eza -lh --icons --git'

# Detailed listing including hidden files
alias la='eza -lah --icons --git'

# Tree view
alias tree='eza --tree --icons'

# Reuse ls completions for eza (avoid defining a separate completion function)
compdef eza=ls

# ==================================================
# Core Utilities
# ==================================================

alias grep='rg --color=auto'
alias diff='diff --color=auto'
alias df='df -h'

# ==================================================
# Navigation
# ==================================================

alias -- -='cd -'

# ==================================================
# Editor
# ==================================================

alias vim='nvim'

# ==================================================
# Git
# ==================================================

