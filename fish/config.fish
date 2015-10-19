# Powerline setup
powerline-daemon -q
set fish_function_path $fish_function_path "/usr/lib/python2.7/site-packages/powerline/bindings/fish"
powerline-setup

# Vim stuff
alias nano="vim"
fish_vi_mode

# Set environment vars
set PATH $PATH $HOME/.cabal/bin
set EDITOR vim
env -i HOME=$HOME dash -l -c 'export -p' | sed -e "/PATH/s/'//g;/PATH/s/:/ /g;s/=/ /;s/^export/set -x/" | source
