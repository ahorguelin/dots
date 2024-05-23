set scrolloff=8

" Do incremental searching.
set incsearch

" Don't use Ex mode, use Q for formatting.
map Q gq


"""""""""""""""""""""""	PERSONAL CONFIG """""""""""""""""""""""
let mapleader = " "

set syntax 
set nocompatible
set number relativenumber
set showmode

map <leader>E :Ex<CR>
map <leader>v <C-w>v
map <leader>H :nohlsearch<CR>
map <C-h> <C-w>h
map <C-l> <C-w>l

map <leader>[ gT
map <leader>] gt
map <C-d> <C-d>zz
map <C-u> <C-u>zz
