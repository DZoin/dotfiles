set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
set -gx PATH $PATH /usr/local/bin/joe/build
set -gx PATH $PATH $HOME/.composer/vendor/bin
rvm > /dev/null
rvm default
set fish_plugins brew rvm
set -gx PATH $GEM_HOME/bin $PATH
set -gx PATH $PATH /System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources 
alias emacs="/usr/local/Cellar/emacs/25.2/bin/emacs"
source ~/.config/fish/nvm-wrapper/nvm.fish
set -gx NVM_DIR ~/.nvm
set -gx NODE_ENV development
set -gx PATH $PATH ~/bin
set -g fish_user_paths "/usr/local/opt/libxml2/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/sqlite/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/llvm/bin" $fish_user_paths
set -gx fish_user_paths "/usr/local/opt/python/libexec/bin" $fish_user_paths
set -gx PATH /usr/local/opt/python/libexec/bin $PATH
set -gx fish_user_paths export "homebrew/php/php71" $fish_user_paths
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'  			# Go back 6 directory levels
alias ll='ls -FGlAhp'
alias f='open -a Finder ./'                 # f: Opens current directory in MacOS Finder

function mcd
  mkdir -p "$argv[1]"; and cd "$argv[1]";   # mcd: Makes new Dir and jumps inside
end        

function trash
  command mv "$argv[1]" ~/.Trash       
end

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -gx EDITOR "/usr/local/bin/nvim"
alias mux="tmuxinator"

set -gx POWERLINE_PATH /Users/dimitarzoin/Library/Python/2.7/lib/python/site-packages/powerline
source $POWERLINE_PATH/bindings/fish/powerline-setup.fish

set -g theme_display_ruby no
