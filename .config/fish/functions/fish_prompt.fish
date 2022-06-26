function __k8s_color -S
    switch $argv[1]
    case "*prod"
        echo red
    case "*qa" "*stage" "*stg"
        echo yellow
    case "*"
        echo green
    end
end

function __git_is_repo
    type -q git
    or return 1
    git rev-parse --git-dir >/dev/null 2>&1
end

function __git_branch_name
    git symbolic-ref --short -q HEAD \
        || git describe --tags --exact-match 2> /dev/null \
        || git rev-parse --short HEAD
end

function __git_color -S
    if not git diff --cached --no-ext-diff --quiet
        echo yellow
        return
    end

    if not git diff --no-ext-diff --quiet
        echo red
        return
    end

    set -l show_untracked (command git config --bool bash.showUntrackedFiles 2>/dev/null)
    if [ "$show_untracked" != "false" ]
        set -l untracked (git ls-files --other --exclude-standard --directory --no-empty-directory 2>/dev/null)
        if [ "$untracked" ]
            echo red
            return
        end
    end

    echo green
end

function __git_ahead -S
    set -l ahead 0
    set -l behind 0
    for line in (command git rev-list --left-right "@{upstream}...HEAD" 2>/dev/null)
        switch "$line"
            case ">*"
                if [ $behind -eq 1 ]
                    echo "↕"
                    return
                end
                set ahead 1
            case "<*"
                if [ $ahead -eq 1 ]
                    echo "↕"
                    return
                end
                set behind 1
        end
    end

    if [ $ahead -eq 1 ]
        echo "↑"
    else if [ $behind -eq 1 ]
        echo "↓"
    end
end

function fish_right_prompt
    set -l context (cat ~/.kube/config | grep "current-context:" | sed "s/current-context: //")
    set -l color (__k8s_color $context)
    echo -n -s "(" (set_color $color) $context (set_color normal) ") "
end

function fish_prompt
    set -l __last_command_exit_status $status

    if not set -q -g __fish_arrow_functions_defined
        set -g __fish_arrow_functions_defined
    end

    set -l normal (set_color normal)

    set -l arrow_color
    if test $__last_command_exit_status != 0
        set arrow_color (set_color red)
    else
        set arrow_color (set_color yellow)
    end

    set -l arrow "→"
    if fish_is_root_user
        set arrow "#"
    end

    set -l cwd (prompt_pwd)

    if __git_is_repo
        set repo_info " (" (set_color (__git_color)) (__git_branch_name) $normal (__git_ahead) ")"
    end

    echo -n -s $arrow_color $arrow $normal " " $cwd $repo_info " "
end
