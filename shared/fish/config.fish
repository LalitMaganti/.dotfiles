source "$HOME/.config/fish/powerline.fish"
source "$HOME/.config/fish/env.fish"
source "$HOME/.config/fish/fish-vi.fish"

# Set environment vars
set fish_user_paths $fish_user_paths $HOME/.cabal/bin $HOME/.local/bin
set EDITOR vim

# Vim stuff
alias nano="vim"

# Override exit when inside tmux
#if [ $TMUX ]
    #function exit
        #set --local panes (tmux list-panes | wc -l)
        #if [ $panes = "1" ]
            #tmux detach
        #else
            #builtin exit
        #end
    #end
#else
    #set --local id (tmux ls | grep -vm1 attached | cut -d: -f1)
    #if [ $id ]
        #exec tmux -2 attach-session -t $id
    #else
        #exec tmux -2 new-session
    #end
#end
