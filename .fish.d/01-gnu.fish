# brew install gnu-sed
if [ -d /usr/local/opt/gnu-sed/libexec/gnubin ]
    set PATH /usr/local/opt/gnu-sed/libexec/gnubin $PATH
end

if [ -d /opt/homebrew/opt/gnu-sed/libexec/gnubin ]
    set PATH /opt/homebrew/opt/gnu-sed/libexec/gnubin $PATH
end

# brew install grep
if [ -d /usr/local/opt/grep/libexec/gnubin ]
    set PATH /usr/local/opt/grep/libexec/gnubin $PATH
end

if [ -d /opt/homebrew/opt/grep/libexec/gnubin ]
    set PATH /opt/homebrew/opt/grep/libexec/gnubin $PATH
end

# brew install coreutils
if [ -d /usr/local/opt/coreutils/libexec/gnubin ]
    set PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
end

if [ -d /opt/homebrew/opt/coreutils/libexec/gnubin ]
    set PATH /opt/homebrew/opt/coreutils/libexec/gnubin $PATH
end
