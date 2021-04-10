if [ -d /usr/local/go/bin ]
    set -x PATH $PATH /usr/local/go/bin
    set -x GOROOT /usr/local/go
end

if [ -d $HOME/go/bin ]
    set -x PATH $PATH $HOME/go/bin
end