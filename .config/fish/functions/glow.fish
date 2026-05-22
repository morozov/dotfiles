function glow
    CLICOLOR_FORCE=1 command glow -s dark -w $COLUMNS $argv | less -RX
end
