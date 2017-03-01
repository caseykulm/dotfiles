 " Casey's vimrc file

set nocompatible                " be iMproved
filetype off                    " required!
set nonumber                    " don't show line numbers
set expandtab ts=2 sw=2 ai      " replace tabs with 2 spaces
let &t_Co=256                   " turn on 256-bit colors
syntax on                       " allow syntax highlighting
set mouse=a
set ttymouse=xterm
inoremap jj <esc>" use kj to escape insert mode
nnoremap <leader>w <C-w>v<C-w>l " split window vertically + jump to it
nnoremap <C-J> <C-W><C-J>       " change to downward split window
nnoremap <C-K> <C-W><C-K>       " change to upward split window
nnoremap <C-L> <C-W><C-L>       " change to right split window
nnoremap <C-H> <C-W><C-H>       " change to left split window

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'VundleVim/Vundle.vim'

" My plugins here:
"
" original repos on GitHub
Plugin 'ervandew/supertab'
Plugin 'mileszs/ack.vim'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdcommenter'
Plugin 'toyamarinyon/vim-swift'
" vim colors here
" Plugin 'altercation/vim-colors-solarized'
Plugin 'daylerees/colour-schemes', { 'rtp': 'vim/' }

call vundle#end()
filetype plugin indent on     " required!
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install (update) bundles
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

set laststatus=2                " set vim-airline to always show
filetype plugin on

