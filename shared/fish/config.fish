source "$HOME/.config/fish/env.fish"

# Base16 Shell
if status --is-interactive
  eval sh $HOME/.config/base16-shell/scripts/base16-onedark.sh
end
