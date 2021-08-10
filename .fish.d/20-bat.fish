if which bat > /dev/null 2>&1
    set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
end
