# See https://github.com/jenssegers/captain
if which captain > /dev/null 2>&1
    set -x CAPTAIN_ROOT $HOME/Dropbox/Docker
    set -x CAPTAIN_DEPTH 2

    complete -f -c captain -n __fish_use_subcommand -a up -d "Start a docker compose project"
    complete -f -c captain -n __fish_use_subcommand -a down -d "Stop a docker compose project"
    complete -f -c captain -n __fish_use_subcommand -a ls -d "List available docker compose projects"

    complete -f -c captain -n "__fish_seen_subcommand_from up" -a "(captain ls)"
    complete -f -c captain -n "__fish_seen_subcommand_from down" -a "(captain ls)"
end
