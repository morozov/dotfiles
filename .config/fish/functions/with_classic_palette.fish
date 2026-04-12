function with_classic_palette --description "Run a program with the classic CGA/ANSI color palette, restoring terminal colors on exit"
    if test (count $argv) -eq 0
        echo "Usage: with_classic_palette <program> [args...]" >&2
        return 1
    end

    function __set_classic_palette
        printf '\033]4;0;rgb:2e/34/36\033\\'
        printf '\033]4;1;rgb:cc/00/00\033\\'
        printf '\033]4;2;rgb:4e/9a/06\033\\'
        printf '\033]4;3;rgb:c4/a0/00\033\\'
        printf '\033]4;4;rgb:34/65/a4\033\\'
        printf '\033]4;5;rgb:75/50/7b\033\\'
        printf '\033]4;6;rgb:06/98/9a\033\\'
        printf '\033]4;7;rgb:d3/d7/cf\033\\'
        printf '\033]4;8;rgb:55/57/53\033\\'
        printf '\033]4;9;rgb:ef/29/29\033\\'
        printf '\033]4;10;rgb:8a/e2/34\033\\'
        printf '\033]4;11;rgb:fc/e9/4f\033\\'
        printf '\033]4;12;rgb:72/9f/cf\033\\'
        printf '\033]4;13;rgb:ad/7f/a8\033\\'
        printf '\033]4;14;rgb:34/e2/e2\033\\'
        printf '\033]4;15;rgb:ee/ee/ec\033\\'
    end

    function __restore_palette
        printf '\033]104\033\\'
    end

    __set_classic_palette
    command $argv
    set -l exit_code $status
    __restore_palette
    return $exit_code
end
