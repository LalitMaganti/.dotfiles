export GUROBI_HOME=$HOME/gurobi701/linux64
export PATH=$HOME/gurobi701/linux64/bin:$PATH
export LD_LIBRARY_PATH=$HOME/perl5/lib:$HOME/playerctl/usr/lib:$HOME/gurobi701/linux64/lib:$LD_LIBRARY_PATH
set -x PATH $HOME/perl5/bin $HOME/.local/bin $PATH
set -q PERL5LIB; and set -x PERL5LIB $HOME/perl5/lib/perl5:$PERL5LIB
set -q PERL5LIB; or set -x PERL5LIB $HOME/perl5/lib/perl5
set -q PERL_LOCAL_LIB_ROOT; and set -x PERL_LOCAL_LIB_ROOT $HOME/perl5:$PERL_LOCAL_LIB_ROOT
set -q PERL_LOCAL_LIB_ROOT; or set -x PERL_LOCAL_LIB_ROOT $HOME/perl5
set -x PERL_MB_OPT --install_base\ \"$HOME/perl5\"
set -x PERL_MM_OPT INSTALL_BASE=$HOME/perl5
