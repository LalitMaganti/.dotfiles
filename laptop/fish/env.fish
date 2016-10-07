# Set env vars
set -x MAKEFLAGS "-j"(nproc)
export AURDEST=/run/media/lalit/Android/aur-installed/

# Vim stuff
alias trm="trash"
alias mrm="maybe rm"

function rm
  echo "NO! Don't use rm. Use trm, mrm or rmi instead."
end
function rmi
  command rm -i $argv
end
