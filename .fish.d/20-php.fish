set -gx __PATH_WITHOUT_PHP $PATH

function __php_get_versions
    ls -d /usr/local/opt/php@* | cut -d@ -f2
end

function __php_get_version_path --argument v
    echo "/usr/local/opt/php@$v/bin"
end

function __php_switch --argument v
    set -gx PATH (__php_get_version_path $v) $__PATH_WITHOUT_PHP
end

for v in (__php_get_versions)
    function $v --inherit-variable v --description "Use PHP $v"
        __php_switch $v
    end
end
