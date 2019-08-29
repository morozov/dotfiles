if which kubectl > /dev/null 2>&1
    set -x FISH_KUBECTL_COMPLETION_COMPLETE_CRDS 0
    alias k=kubectl
end
