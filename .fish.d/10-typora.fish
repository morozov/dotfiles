if ! which typora > /dev/null 2>&1
    function typora
        open -a typora $argv
    end
end
