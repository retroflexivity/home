export PATH=$PATH:$HOME/.local/bin:$HOME/bin:/usr/local/texlive/2024/bin/x86_64-linux:$HOME/.ghcup/bin:$HOME/.cabal/bin
export ZSH="$HOME/.oh-my-zsh"
export TERMINAL="/usr/bin/kitty"
export FPATH=$FPATH:$HOME/.config/zsh-functions
export EDITOR='/usr/bin/helix'
export BROWSER='/usr/bin/zen-browser'

ZSH_THEME="robbyrussell"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# ALIASES

eval $(thefuck --alias fuck)

alias -g  dl="~/Downloads"

alias f="sudo find 2>/dev/null . -name"
alias fr="sudo find 2>/dev/null / -name"
alias rmr="rm -rf"

alias c="wl-copy"
alias p="wl-paste"

alias ts="trash-put"

alias hx="helix"
alias cat="bat --theme=OneHalfLight"
alias op="xdg-open"
alias cal="calcurse"
alias wifi="nmcli dev wifi"
alias bt="bluetoothctl"
alias tms="transmission-remote"
alias tml="watch -n 1 'transmission-remote -l'"

alias logout="loginctl terminate-user $USER"

alias kc="kdeconnect-cli --name the\ void\ phone"
alias kcc="kdeconnect-cli --name the\ void\ phone --send-clipboard"
alias kcs="kdeconnect-cli --name the\ void\ phone --share"

alias myip='curl -s ipinfo.io | tr --delete "\n" | jq -r ".ip,.country"'

alias cf='copy-file'

alias lxm='latexmk'
alias lxmc='latexmk -c'

alias cex='calibredb export --dont-write-opf --dont-save-cover --dont-asciiize --single-dir --to-dir Books'

alias -s txt=$EDITOR
alias -s md=$EDITOR
alias -s json=$EDITOR
alias -s conf=$EDITOR
alias -s config=$EDITOR
alias -s toml=$EDITOR
alias -s yaml=$EDITOR
alias -s pdf=op

# COMPLETION

[[ -f /home/ark/.dart-cli-completion/zsh-config.zsh ]] && . /home/ark/.dart-cli-completion/zsh-config.zsh || true

