syntax on
set backup
set background=dark
colorscheme srcery
set showmode
set autoindent
"set number
set ignorecase
set tabstop=4
set shiftwidth=4
set expandtab
"set virtualedit+=onemore
set secure

autocmd BufNew,BufRead *.asm set ft=nasm
autocmd BufRead *.lyx set syntax=lyx foldmethod=syntax foldcolumn=3
autocmd BufRead *.lyx syntax sync fromstart

call plug#begin('~/.vim/plugged')
    Plug 'ollykel/v-vim'
    Plug 'parkr/vim-jekyll'
    Plug 'zah/nim.vim'
    Plug 'vim-scripts/CycleColor'
call plug#end()
