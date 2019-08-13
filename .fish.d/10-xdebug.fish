function xstart
    export XDEBUG_CONFIG="idekey=PHPSTORM"
end

function xstop
    set -e XDEBUG_CONFIG
end
