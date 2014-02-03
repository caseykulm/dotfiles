" Casey's vimrc file

set nocompatible                " be iMproved
filetype off                    " required!
set number                      " show line numbers
set expandtab ts=4 sw=4 ai      " replace tabs with 4 spaces
let &t_Co=256                   " turn on 256-bit colors
syntax enable                   " allow syntax highlighting
inoremap jj <esc>               " use kj to escape insert mode
" inoremap jk <esc>             " use jk to escape insert mode
nnoremap <leader>w <C-w>v<C-w>l " split window vertically + jump to it
nnoremap <C-J> <C-W><C-J>       " change to downward split window
nnoremap <C-K> <C-W><C-K>       " change to upward split window
nnoremap <C-L> <C-W><C-L>       " change to right split window
nnoremap <C-H> <C-W><C-H>       " change to left split window

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'
Bundle 'mileszs/ack.vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
