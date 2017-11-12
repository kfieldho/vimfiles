filetype off

if has('gui_running')
	set background=light
else
	set background=dark
endif

set updatetime=250

let g:pathogen_disabled = []
"  Comment the following line out on systems with ROS installed
call add(g:pathogen_disabled,'vim-ros')
call add(g:pathogen_disabled,'aedit')
call add(g:pathogen_disabled,'ctrlp')

set t_Co=256

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
execute pathogen#infect()

filetype plugin indent on
set expandtab
set tabstop=4
set shiftwidth=4


set hidden          " Allow unsaved buffers
let g:LustyExplorerSuppressRubyWarning = 1


map Y y$
syntax enable
colorscheme solarized

set tabstop=2
set shiftwidth=2
set expandtab

let mapleader = ","

" Kill trailing whitespace with ,W
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Tab Navigation
nnoremap <leader>h :tabp<CR>
nnoremap <leader>l :tabn<CR>
nnoremap H :tabp<CR>
nnoremap L :tabn<CR>

" Pane Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright


" Enable XML folding
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

au BufNewFile,BufRead *.nfo set filetype=nfo

"  We'll make our table_mode table reST compatible
let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

" Configure CTRL-P Plugin
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_rust_checkers = ['cargo']

set encoding=utf8

"  Show Trailing Whitespace
highlight ShowTrailingWhitespace ctermbg=Red guibg=Red

set rtp+=$HOME/.fzf
" Add a Rg command to fzf.vim
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

