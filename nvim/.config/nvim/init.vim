call plug#begin('~/.local/share/nvim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()
set background=dark 
colorscheme gruvbox

syntax on

set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set title
set clipboard+=unnamedplus

nnoremap <esc> :noh<return><esc>
