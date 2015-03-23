
export ZSH=/Users/izbor/.oh-my-zsh

# use vim as the visual editor
export VISUAL='vim'
export EDITOR=$VISUAL
export BUNDLER_EDITOR='vim'

alias vim='mvim -v'
alias vi='mvim -v'
alias be='bundle exec'

# Convenience aliases
alias ls="ls -FG"
alias l='ls -l'
alias la='ls -la'
alias c='clear'

alias ez='vim ~/.zshrc'
alias ev='vim ~/.vim/vimrc'
alias et='vim ~/.tmux.conf'
alias sz='src'
alias git=hub

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cjt"
DEFAULT_USER="izbor"


function conflicted { vim +Conflicted }
function iphonesim { open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app }
function trash() { mv $1 ~/.Trash }

function mkcd() { mkdir $1 && cd $1 }
function mkgit() { mkdir $1 && cd $1 && git init }
function mkclone() { git clone $1 && cd $( echo "$1" | sed -E 's|.*/(.*).git$|\1|' ) }

function test-addr {
  local address
  local port
  address=$(ipconfig getifaddr en0)
  port=$(cat ~/.pow/$(basename `pwd`))
  echo http://$address:$port
}

function current_branch() {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo ${ref#refs/heads/}
}

function gitup {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        cd "./"$(git rev-parse --show-cdup)
    else
        return
    fi
}



# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
plugins=(zsh_reload vundle rvm tmux rake-fast rails osx git command-not-found common-aliases compleat copydir copyfile dircycle colorize zsh-syntax-highlighting vagrant heroku brew gem gitfast)

# User configuration

export PATH=$PATH:"/Users/izbor/.rvm/gems/ruby-2.2.0/bin:/Users/izbor/.rvm/gems/ruby-2.2.0@global/bin:/Users/izbor/.rvm/rubies/ruby-2.2.0/bin:/Users/izbor/.nvm/v0.10.30/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/RubyMine.app/Contents/bin:/usr/local/git/bin:/usr/local/MacGPG2/bin:/Users/izbor/.rvm/gems/ruby-2.2.0/bin:/Users/izbor/.rvm/gems/ruby-2.2.0@global/bin:/Users/izbor/.rvm/rubies/ruby-2.2.0/bin:/Users/izbor/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Add this to your zshrc or bzshrc file
_not_inside_tmux() { [[ -z "$TMUX" ]] }

ensure_tmux_is_running() {
  if _not_inside_tmux; then
    tat
  fi
}

ensure_tmux_is_running
