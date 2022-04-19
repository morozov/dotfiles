syntax on
set tabstop=4
set incsearch
set hlsearch
set nowrap
autocmd BufRead,BufNewFile ~/.phpbrew/php/php-* set syntax=dosini
autocmd FileType make set noexpandtab

map f w
