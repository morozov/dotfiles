function xstart
    set -gx XDEBUG_CONFIG idekey=PHPSTORM
    set -gx XDEBUG_MODE debug
end

function xstop
    set -e XDEBUG_CONFIG
    set -e XDEBUG_MODE
end
