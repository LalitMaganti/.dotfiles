# Set env vars
env -i HOME=$HOME dash -l -c 'export -p' | sed -e "/PATH/s/'//g;/PATH/s/:/ /g;s/=/ /;s/^export/set -x/" | source
set -x MAKEFLAGS "-j"(nproc)
export AURDEST=/run/media/lalit/Android/aur-installed/
