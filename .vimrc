set nocompatible
filetype on
set nu

set expandtab
set shiftwidth=4
set softtabstop=4

set smartindent

set t_Co=256
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on
colorscheme badwolf

let &colorcolumn="80,".join(range(120,999),",")

autocmd FileType markdown nnoremap <C-C> :!pandoc *.md -o ${PWD\#\#*/}.pdf <CR><CR>
autocmd FileType markdown nnoremap <C-A> :!evince ${PWD\#\#*/}.pdf &<CR><CR>
