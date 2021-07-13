if which SciTE > /dev/null 2>&1
    function scite
        SciTE $argv > /dev/null 2>&1 &
        disown
    end
end
