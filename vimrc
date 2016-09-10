filetype off

if has('gui_running')
	set background=light
else
	set background=dark
endif

let g:pathogen_disabled = []
set t_Co=256

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
filetype plugin indent on

set hidden          " Allow unsaved buffers
let g:LustyExplorerSuppressRubyWarning = 1

map Y y$
syntax enable
colorscheme solarized

set expandtab

let mapleader = ","

" Kill trailing whitespace with ,W
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>h :tabp<CR>
nnoremap <leader>l :tabn<CR>
nnoremap H :tabp<CR>
nnoremap L :tabn<CR>

" Enable XML folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

"  We'll make our table_mode table reST compatible
let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

set encoding=utf8
