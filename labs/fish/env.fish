alias trm="rm"
export GUROBI_HOME=/homes/lrm113/gurobi701/linux64
export PATH=/homes/lrm113/gurobi701/linux64/bin:$PATH
export LD_LIBRARY_PATH=/homes/lrm113/perl5/lib:/homes/lrm113/playerctl/usr/lib:/homes/lrm113/gurobi701/linux64/lib:$LD_LIBRARY_PATH
set -x PATH /homes/lrm113/perl5/bin $PATH
set -q PERL5LIB; and set -x PERL5LIB /homes/lrm113/perl5/lib/perl5:$PERL5LIB
set -q PERL5LIB; or set -x PERL5LIB /homes/lrm113/perl5/lib/perl5
set -q PERL_LOCAL_LIB_ROOT; and set -x PERL_LOCAL_LIB_ROOT /homes/lrm113/perl5:$PERL_LOCAL_LIB_ROOT
set -q PERL_LOCAL_LIB_ROOT; or set -x PERL_LOCAL_LIB_ROOT /homes/lrm113/perl5
set -x PERL_MB_OPT --install_base\ \"/homes/lrm113/perl5\"
set -x PERL_MM_OPT INSTALL_BASE=/homes/lrm113/perl5
