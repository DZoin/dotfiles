# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Set default prompt type
prompt agnoster

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias ll='ls -FGlAhp'
alias f='open -a Finder ./'                 # f: Opens current directory in MacOS Finder

# Jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Custom functions
mcd() {
  mkdir -p $1 && cd $1;   # mcd: Makes new Dir and jumps inside
}

trash() {
  command mv $1 ~/.Trash
}

