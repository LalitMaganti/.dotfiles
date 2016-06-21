source "$HOME/.config/fish/env.fish"

# Plugins
fundle plugin 'edc/bass'
fundle plugin 'fisherman/z'
fundle plugin 'oh-my-fish/theme-bobthefish'
fundle plugin 'oh-my-fish/plugin-tmux'
fundle plugin 'fisherman/getopts'
fundle init

# Base16 Shell
eval sh $HOME/.config/base16-shell/base16-monokai.dark.sh

# Set environment vars
set fish_user_paths $fish_user_paths $HOME/.cabal/bin $HOME/.local/bin
set EDITOR nvim

# Z hack
for file in ~/.config/fish/fundle/fisherman/z/conf.d/*.fish
    source $file
end

# Vim stuff
alias trm="trash"
alias mrm="maybe rm"

function rm
  echo "NO! Don't use rm. Use trm, mrm or rmi instead."
end
function rmi
  command rm -i $argv
end
