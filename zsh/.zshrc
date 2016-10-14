setopt nosharehistory

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#
# zsh-syntax-highlighting needs to be last!
plugins=(git archlinux scala sbt systemd dirhistory wd zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias cb='cargo build'
alias cr='cargo run'
alias ct='cargo test'
alias mr='rustup'
alias mrs='mr run stable'
alias mrscb='mrs cargo build'
alias mrscr='mrs cargo run'
alias mrb='mr run beta'
alias mrbcb='mrb cargo build'
alias mrbcr='mrb cargo run'
alias mrn='mr run nightly'
alias mrncb='mrn cargo build'
alias mrncr='mrn cargo run'

# added by travis gem
[ -f ~/.travis/travis.sh ] && source ~/.travis/travis.sh

# is the internet on fire?
nm-online -x && dig +short txt istheinternetonfire.com | sed -E 's/^"|"$//g'

setopt NO_BEEP

STREAM_MODE='true'
if [ "$STREAM_MODE" = "true" ]; then
    DISABLE_AUTO_TITLE="true"
    export PROMPT='%(!.%{$fg_bold[red]%}.) %{$fg_bold[blue]%}%(!.%1~.%~) $(git_prompt_info)%_$(prompt_char)%{$reset_color%} '
    precmd () {
        print -Pn "\e]0;%~\a" 
    }
fi
