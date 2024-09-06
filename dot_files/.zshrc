###########
# ENVIRON #
###########
#export PATH="$PATH:$HOME/.local/bin"
export PATH=$PATH:/home/nmask/bin

# Cargo bin path
export PATH=$PATH:~/.cargo/bin/

# brew environment variables
 [ -d /home/linuxbrew/.linuxbrew ] && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
 export XDG_DATA_DIRS="/home/linuxbrew/.linuxbrew/share:$XDG_DATA_DIRS"
export PATH="/opt/homebrew/bin:$PATH"

 #############
#  ohmypsh  #
#############
# Install zsh and ohmyposh curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/bin
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/config.json)"


#############
#  GENERAL  #
#############

export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 13   # how often to auto-update (in days).

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

DISABLE_LS_COLORS="false"

DISABLE_AUTO_TITLE="false"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="false"


###########
# HISTORY #
###########
export HISTSIZE=10000
export HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups


#############
#  PLUGINS  #
#############
plugins=(
	git
	zsh-autosuggestions
	#zsh-autocomplete
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


########################
#  User configuration  #
########################
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Man page highlighting with nvim
# export MANPAGER="nvim +Man!"

# Man page highlighting with bat
export BAT_THEME="tokyonight_night"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"


######################
#      ALIASES       #
######################
alias :q="exit"
alias py="python"
alias vim="nvim"
alias nf="neofetch"
alias ls='eza --icons --color=always --group-directories-first'
alias ll='eza -alF --icons --color=always --group-directories-first'
alias la='eza -a --icons --color=always --group-directories-first'
alias l='eza -F --icons --color=always --group-directories-first'
alias l.='eza -a | egrep "^\."'
alias mk="musikcube"
alias z="./.local/bin/zero/Zero.CLI"
alias zero="./.local/bin/zero/Zero.CLI"
alias tmt="./.local/bin/timecanvas/TimeCanvas"
alias dr="dotnet run"
alias dpl="dotnet publish -r linux-x64 --sc"
alias dpw="dotnet publish -r win-x64 --sc"
alias wall="swww img"
alias vz="vim .zshrc"
alias ns="notify-send 'Arch Linux' 'DAMN! You have not riced me since last month. Did u forget ur loving arch wifey..?' --urgency=normal"
alias uu="./.local/bin/check-update"
alias jr="java"
alias jc="javac"