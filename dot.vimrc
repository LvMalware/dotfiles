syntax on
set background=dark
set showmode
colorscheme ayu
set autoindent
set number
set ignorecase
set tabstop=4
set shiftwidth=4
set expandtab
set secure
set guifont=3270NerdFontMono-Regular:h12
set colorcolumn=120
set termguicolors

autocmd BufNew,BufRead *.asm set ft=nasm
autocmd BufNew,BufRead *.inc set ft=nasm

call plug#begin('~/.vim/plugged')
    Plug 'vim-scripts/CycleColor'
    Plug 'ziglang/zig.vim'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'ryanoasis/vim-devicons'
call plug#end()
