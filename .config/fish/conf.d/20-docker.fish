# brew install docker
if [ -f /usr/local/opt/docker/share/fish/vendor_completions.d/docker.fish ]
    source /usr/local/opt/docker/share/fish/vendor_completions.d/docker.fish
end

set -gx DOCKER_CLI_HINTS false
