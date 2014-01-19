# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="achen"

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
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

######################
# Aliases
######################

# Program aliases
alias ll='ls -l'
alias lr='ranger'
alias o='open .'
alias em='emacs'
alias py="python"
alias tf="tail -f"
alias hr="heroku run"
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
alias tmux="TERM=screen-256color-bce tmux" # Force 256 colors in tmux
alias viewhidden='. ~/customscripts/viewfile' # Hidden files visibility in Finder
alias hidehidden='. ~/customscripts/hidefile'
alias reload=". ~/.zshrc && echo 'zsh config reloaded from ~/.zshrc'" # Reload .zshrc configs
alias v='vim'
alias t='todo.sh'

#Navigation Aliases
alias dropbox='cd ~/Dropbox'     
alias htdocs='cd ~/Dropbox/Programming/XAMPP/htdocs'
alias programming='cd ~/Dropbox/Programming'
alias DC='cd ~/Downloads/DC++'
alias home='cd ~'
alias school="cd ~/Dropbox/School"
alias huddleup='cd /Users/anthonychen/Dropbox/Programming/RoR/huddleup'
alias 3152='cd /Users/anthonychen/Dropbox/School/CS\ 3152'


######################
# Path Configuration
######################

export PATH="/opt/local/bin:/opt/local/sbin:/.:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Users/anthonychen/.pyenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/CrossPack-AVR/bin:/usr/local/git/bin:/usr/texbin:/usr/local/eb/macosx/python2.7"

# Python packages
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

# Android SDK
export PATH="/Users/anthonychen/Documents/AndroidSDK/platform-tools":$PATH

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Initialize rbenv
# export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

