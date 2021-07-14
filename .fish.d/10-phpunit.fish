function phpunit
    env XDEBUG_MODE=off (command which phpunit) --color=always --columns=max $argv
end
