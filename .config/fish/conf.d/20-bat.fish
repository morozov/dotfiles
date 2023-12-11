if which batcat > /dev/null 2>&1
    alias bat=batcat
end

if which bat > /dev/null 2>&1
    set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
end
