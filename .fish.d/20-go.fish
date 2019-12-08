if [ -d /usr/local/go/bin ]
    set -x GOPATH $HOME/.go
    set -x PAT $PATH $GOPATH/bin /usr/local/go/bin
    set -x GOROOT /usr/local/go
end
