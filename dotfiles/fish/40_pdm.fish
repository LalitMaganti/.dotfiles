if test -n "$PYTHONPATH"
    set -x PYTHONPATH '/home/lalitm/.local/lib/python3.10/site-packages/pdm/pep582' $PYTHONPATH
else
    set -x PYTHONPATH '/home/lalitm/.local/lib/python3.10/site-packages/pdm/pep582'
end
