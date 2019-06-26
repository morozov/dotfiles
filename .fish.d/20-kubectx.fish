if which kubectx > /dev/null 2>&1
    set -x KUBECTX_CURRENT_BGCOLOR (tput sgr0)
    alias kctx=kubectx
end

if which kubens > /dev/null 2>&1
    alias kns=kubens
end
