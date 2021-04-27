# https://garywoodfine.com/use-pbcopy-on-ubuntu/
if which xclip > /dev/null 2>&1
    alias pbcopy="xclip -selection clipboard"
    alias pbpaste="xclip -selection clipboard -o"
end
