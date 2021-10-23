if which kubectl > /dev/null 2>&1
    set -x FISH_KUBECTL_COMPLETION_CRD_CACHE_TTL 86400
    alias k=kubectl
end
