function __brew_prepend_path --argument prefix package
    set -l path "$prefix/opt/$package/libexec/gnubin"

    if [ -d $path ]
        fish_add_path --prepend $path
    end
end

set -l prefix (brew --prefix)

for package in coreutils gnu-sed grep make
    __brew_prepend_path $prefix $package
end
