# See https://github.com/jenssegers/captain
if which captain > /dev/null 2>&1
    set -x CAPTAIN_ROOT $HOME/Dropbox/Docker

    function __fish_captain_projects
        captain ls
    end

    set -l commands up
    complete -c captain -f -a $commands
    complete -c captain -n "__fish_seen_subcommand_from up" -a "(captain ls)"
end
