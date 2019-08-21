# Additionally, need to patch /usr/share/fish/functions/ls.fish
# and add `--literal --group-directories-first` to the default parameters.
# Otherwise, if the function is just overridden, it won't display colors for some reason
function ll --description 'List contents of directory using long format'
    ls -l $argv
end

function lla --description 'List contents of directory using long format including hidden files'
    ls -lA $argv
end
