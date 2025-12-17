# See: https://stackoverflow.com/questions/26981542/aws-cli-command-completion-with-fish-shell
function __fish_complete_aws
    env COMP_LINE=(commandline -pc) aws_completer | tr -d ' '
end

complete -c aws -f -a "(__fish_complete_aws)"
