set PHP_VERSION (ls /usr/local/Cellar/PHP71/7.1.2_13/bin/ | sort -n | tail -1)
set -x PATH /usr/local/Cellar/PHP71/7.1.2_13/bin/ $PATH
set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
set -gx PATH $PATH /usr/local/bin/joe/build
set -x PATH $PATH /usr/local/bin /usr/local/sbin
set -gx PATH $PATH $HOME/.composer/vendor/bin
rvm > /dev/null
rvm default
set fish_plugins brew rvm
set -gx PATH $GEM_HOME/bin $PATH
set -gx PATH $PATH /System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources 
alias emacs="/usr/local/Cellar/emacs/25.2/bin/emacs"
source ~/.config/fish/nvm-wrapper/nvm.fish
set -gx NVM_DIR ~/.nvm

