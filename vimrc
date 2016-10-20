" switch compatibility mode of (just in case)
set nocompatible

"" Pathogen
" enable pathogen
execute pathogen#infect()


" filetype detect
filetype plugin indent on
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
set statusline+=%F\ %l\:%c
" Show matching brackets
set showmatch

" Ignore case when searching in a smart way:
" /searchme - case ignored
" /Searchme - case sensitive
set ignorecase
set smartcase

" Highlight search results
set hlsearch
nnoremap <leader><space> :noh<cr>

" Long lines and wrapping
set wrap
set textwidth=0
set colorcolumn=81
highlight ColorColumn ctermbg=0 

" Hotkey (\w) for vertical split
nnoremap <leader>w <C-w>v<C-w>l

" Insert closing curly brace and put cursor inbetween
inoremap {<CR> {<CR>}<Esc>ko


"" YCM
" Enable YCM fallback config file (C++)
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Suppress extra_conf.py loading confirmation
let g:ycm_confirm_extra_conf = 0

" Autoclose preview window
let g:ycm_autoclose_preview_window_after_completion = 0
let g:ycm_autoclose_preview_window_after_insertion = 1

" Set completion selection keys
let g:ycm_key_list_select_completion = ['<TAB>', '<DOWN>', '<Enter>']

" Apply YCM FixIt
map <F9> :YcmCompleter FixIt<CR>

" Disable error and warning symbols in gutter
let g:ycm_enable_diagnostic_signs = 0

"" NERDTree
" open NERDTree automatically on startup with cursor in the other window
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
" close vim when only NERDTree window is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:powerline_pycmd = 'py3'
