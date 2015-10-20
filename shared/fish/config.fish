source "$HOME/.config/fish/powerline.fish"
source "$HOME/.config/fish/env.fish"
source "$HOME/.config/fish/fish-vi.fish"

# Set environment vars
set fish_user_paths $fish_user_paths $HOME/.cabal/bin $HOME/.local/bin
set EDITOR vim

# Vim stuff
alias nano="vim"
