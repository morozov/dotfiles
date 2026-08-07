set -gx HOMEBREW_NO_ENV_HINTS 1
set -gx HOMEBREW_NO_AUTO_UPDATE 1

if test -d /opt/homebrew/bin
    fish_add_path --move --append /opt/homebrew/bin
end
