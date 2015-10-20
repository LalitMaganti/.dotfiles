# Set environment vars
set fish_user_paths $fish_user_paths $HOME/.cabal/bin $HOME/.local/bin
set EDITOR vim
#env -i HOME=$HOME dash -l -c 'export -p' | sed -e "/PATH/s/'//g;/PATH/s/:/ /g;s/=/ /;s/^export/set -x/" | source

# Powerline setup
#powerline-daemon -q
#set fish_function_path $fish_function_path "$HOME/.local/lib/python2.7/site-packages/powerline/bindings/fish"
#powerline-setup
function fish_prompt
  ~/.powerline-shell/powerline-shell.py $status --shell bare ^/dev/null
end

# Vim stuff
alias nano="vim"
#fish_vi_mode
