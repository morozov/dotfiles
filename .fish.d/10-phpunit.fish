function phpunit
    set -q XDEBUG_MODE; or set -x XDEBUG_MODE off
    env (command which phpunit) --color=always --columns=max $argv
end
