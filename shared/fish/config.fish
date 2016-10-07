source "$HOME/.config/fish/env.fish"

# Plugins
fundle plugin 'edc/bass'
fundle plugin 'fisherman/z'
fundle plugin 'oh-my-fish/theme-bobthefish'
fundle plugin 'oh-my-fish/plugin-tmux'
fundle plugin 'fisherman/getopts'
fundle init

# Base16 Shell
if status --is-interactive
  eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh
end

# Set environment vars
set fish_user_paths $fish_user_paths $HOME/.cabal/bin $HOME/.local/bin
set EDITOR nvim

# Z hack
for file in ~/.config/fish/fundle/fisherman/z/conf.d/*.fish
  source $file
end
