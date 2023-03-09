set -gx __PATH_WITHOUT_PHP $PATH

function __php_get_versions --argument prefix
    echo "$prefix/opt/php@"* | cut -d@ -f2
end

function __php_switch --argument prefix v
    set -gx PATH "$prefix/opt/php@$v/bin" $__PATH_WITHOUT_PHP
end

set -l prefix (brew --prefix)

for v in (__php_get_versions $prefix)
    function $v --inherit-variable prefix --inherit-variable v --description "Use PHP $v"
        __php_switch $prefix $v
    end
end
