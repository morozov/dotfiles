if which go > /dev/null 2>&1
    set -x GOROOT (go env GOROOT)
end

if [ -d $HOME/go/bin ]
    set -x PATH $PATH $HOME/go/bin
end