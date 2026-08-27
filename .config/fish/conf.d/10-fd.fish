if which fd > /dev/null 2>&1
    function fd
        command fd --no-ignore $argv
    end
end
