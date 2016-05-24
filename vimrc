" filetype detect
filetype on
filetype indent on
syntax enable

" indentation and tab expansion stuff
set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set autoindent
" override tab expansion in Makefiles
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0

set showcmd
set number
" show filename in status line
set statusline+=%F
" Show matching brackets
set showmatch
set ruler

" Ignore case when searching in a smart way:
" /searchme - case ignored
" /Searchme - case sensitive
set ignorecase
set smartcase

" Highlight search results
set hlsearch