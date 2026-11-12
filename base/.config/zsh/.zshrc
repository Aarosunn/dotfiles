# ==================================================
# History
# ==================================================

HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=100000
SAVEHIST=100000

setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# ==================================================
# Shell Behavior
# ==================================================

setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT

# ==================================================
# Smart Directory Navigation 
# ==================================================

# Initialize zoxide
eval "$(zoxide init zsh)"

# ==================================================
# Completion 
# ==================================================

# Load completion system
autoload -Uz compinit

# Initialize completion with cached metadata file
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"

# Enable interactive completion menu selection
zstyle ':completion:*' menu select

# Make completion case-insensitive
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# ==================================================
# Fuzzy Finder
# ==================================================

if [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
	source /usr/share/fzf/key-bindings.zsh
	source /usr/share/fzf/completion.zsh
fi

# ==================================================
# Modular Config Files
# ==================================================

# fzf config
source "$ZDOTDIR/fzf.zsh"

# Aliases
source "$ZDOTDIR/aliases.zsh"

# Custom keybindings
source "$ZDOTDIR/bindings.zsh"

# Plugins and plugin manager
source "$ZDOTDIR/plugins.zsh"

# Prompt/theme
source "$ZDOTDIR/prompt.zsh"

# Custom functions
source "$ZDOTDIR/functions.zsh"

TRANSIENT_PROMPT_TRANSIENT_PROMPT='%F{#a6e3a1}❯%f '
source ~/.config/zsh/plugins/zsh-transient-prompt/transient-prompt.plugin.zsh

# bun completions
[ -s "/home/aaron/.bun/_bun" ] && source "/home/aaron/.bun/_bun"

# git push: ssh stdin is a pipe + DISPLAY set -> ssh tries missing /usr/lib/ssh/ssh-askpass; force tty prompt
export SSH_ASKPASS_REQUIRE=never

alias claude2="CLAUDE_CONFIG_DIR=$HOME/.claude-2 claude"
export PATH=/opt/cuda/bin:$PATH
