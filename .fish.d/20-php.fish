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

function __php_register_alias --argument v
    set -l description (string escape -- "Use PHP $v")

    echo "function $v --description $description; __php_switch $v; end" | source
end

for v in (__php_get_versions)
    __php_register_alias $v
end
