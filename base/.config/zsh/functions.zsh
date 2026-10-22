
take() { mkdir -p "$@" && cd "$_" }

extract() {
    case $1 in
        *.tar.gz)  tar xzf $1  ;;
        *.tar.bz2) tar xjf $1  ;;
        *.zip)     unzip $1    ;;
        *.gz)      gunzip $1   ;;
        *.tar)     tar xf $1   ;;
        *.rar)     unrar x $1  ;;
        *)         echo "unknown format" ;;
    esac
}

zsh_stats() { history | awk '{print $2}' | sort | uniq -c | sort -rn | head -20 }

path() { echo $PATH | tr ':' '\n' }

leet() {
  ~/bin/leetcode-cookie
  cd /home/aaron/Dev/Personal/Trellis || return
  exec claude --resume 99bd4feb-5d69-412b-b9cc-b7e4f8d73af6 --dangerously-skip-permissions "resume the latest question"
}

