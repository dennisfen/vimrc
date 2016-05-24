" filetype detect
filetype on
filetype indent on
syntax enable

set tabstop=4
set expandtab
set smarttab
" override tab expansion in Makefiles
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0

set shiftwidth=4

set showcmd
set number

" show filename in status line
set statusline+=%F

" Show matching brackets
set showmatch

set autoindent
set ruler

" Ignore case when searching in a smart way:
" /searchme - case ignored
" /Searchme - case sensitive
set ignorecase
set smartcase

" Highlight search results
set hlsearch
