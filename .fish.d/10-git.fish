function xclean
    git reset --hard && git clean -ffd
end

function xreset
    set -l branch (git rev-parse --abbrev-ref HEAD)
    set -l remote (git config --get branch.$branch.remote)

    if [ -z $remote ]
        echo "Remote tracking branch is not specified"
        return 1
    end

    set -l merge (git config --get branch.$branch.merge | sed 's/refs\/heads\///')
    git reset --hard $remote/$merge
end
