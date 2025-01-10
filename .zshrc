export PATH=$PATH:$HOME/bin:/usr/local/texlive/2024/bin/x86_64-linux
export ZSH="$HOME/.oh-my-zsh"
export TERMINAL="/usr/bin/kitty"
export FPATH=$FPATH:$HOME/.config/zsh-functions

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='/usr/bin/nvim'
else
export EDITOR='/usr/bin/nvim'
fi

export ANDROID_HOME="$HOME/.android_sdk"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

eval $(thefuck --alias fuck)

alias -g  dl="~/Downloads"

alias f="sudo find 2>/dev/null . -name"
alias fr="sudo find 2>/dev/null / -name"
alias rmr="rm -rf"

alias c="wl-copy"
alias p="wl-paste"

alias ts="trash-put"
alias rm="echo 'warning! use ts for moving to trash'; false"

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


alias cex='calibredb export --dont-write-opf --dont-save-cover --dont-asciiize --single-dir --to-dir Books'

alias -s conf=$EDITOR
alias -s txt=$EDITOR
alias -s json=$EDITOR
alias -s pdf=op

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/ark/.dart-cli-completion/zsh-config.zsh ]] && . /home/ark/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

