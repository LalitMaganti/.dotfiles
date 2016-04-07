source "$HOME/.config/fish/powerline.fish"
source "$HOME/.config/fish/env.fish"
source "$HOME/.config/fish/fish-vi.fish"

# Set environment vars
set fish_user_paths $fish_user_paths $HOME/.cabal/bin $HOME/.local/bin
set EDITOR vim

# Vim stuff
alias nano="vim"
alias trm="trash"
alias mrm="maybe rm"

function rm
  echo "NO! Don't use rm. Use trm, mrm or rmi instead."
end
function rmi
  command rm -i $argv
end
