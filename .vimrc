syntax on
set tabstop=4
set incsearch
set hlsearch
set nowrap
set ruler
autocmd BufRead,BufNewFile ~/.phpbrew/php/php-* set syntax=dosini
autocmd FileType make set noexpandtab
autocmd FileType gitcommit set colorcolumn=73

map f w
