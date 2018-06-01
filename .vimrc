" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" TODO: goimports
let g:go_fmt_command = "goimports"
" have to do this to make YCM works on C-family lang...
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set expandtab
set autoindent
set ruler
set number
set hlsearch
" use system clipboard
set clipboard=unnamed
filetype on
syntax on

