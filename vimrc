filetype off
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()
filetype plugin indent on
  
set hidden          " Allow unsaved buffers
let g:LustyExplorerSuppressRubyWarning = 1

map Y y$

syntax enable
set background=dark
colorscheme solarized
