if which batcat > /dev/null 2>&1
    alias bat=batcat
end

if which bat > /dev/null 2>&1
    # See https://rmoff.net/2024/04/26/how-to-stop-aws-cli-clearing-the-screen/
    set -gx MANPAGER "sh -c 'col -bx | bat -l man -p --pager=\"less -RX\"'"
end
